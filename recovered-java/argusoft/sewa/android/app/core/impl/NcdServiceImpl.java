package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.core.NcdService;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberCbacDetailBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class NcdServiceImpl implements NcdService {
    Dao<FamilyBean, Integer> familyBeanDao;
    Dao<MemberBean, Integer> memberBeanDao;
    Dao<MemberCbacDetailBean, Integer> memberCbacDetailBeanDao;

    @Override // com.argusoft.sewa.android.app.core.NcdService
    public List<FamilyDataBean> retrieveFamiliesForCbacEntry(String str, Integer num, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -30);
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            Where<MemberBean, Integer> where = queryBuilder.where();
            where.and(where.in("state", FhsConstants.FHS_ACTIVE_CRITERIA_MEMBER_STATES), where.le("dob", calendar.getTime()), where.or(where.isNull("cbacDate"), where.le("cbacDate", UtilBean.getStartOfFinancialYear(null)), new Where[0]));
            if (str != null) {
                where.and().or(where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR));
            }
            List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().join("familyId", "familyId", queryBuilder).limit(Long.valueOf(j)).offset(Long.valueOf(j2)).selectColumns("familyId").distinct().where().eq("areaId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), arrayList2));
            }
            return arrayList;
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
            return new ArrayList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.NcdService
    public List<MemberDataBean> retrieveMembersListForCbacEntry(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -30);
            Iterator it = new ArrayList(this.memberBeanDao.queryBuilder().where().eq("familyId", str).and().le("dob", calendar.getTime()).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_MEMBER_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList.add(new MemberDataBean((MemberBean) it.next()));
            }
            return arrayList;
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return new ArrayList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.NcdService
    public List<FamilyDataBean> retrieveFamiliesForNcdScreening(String str, List<Integer> list, long j, long j2) {
        LinkedList linkedList = new LinkedList();
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -30);
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            Where<MemberBean, Integer> where = queryBuilder.where();
            where.and(where.in("state", FhsConstants.FHS_ACTIVE_CRITERIA_MEMBER_STATES), where.or(where.le("dob", calendar.getTime()), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), new Where[0]), new Where[0]);
            if (str != null && !str.isEmpty()) {
                where.and().or(where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR));
            }
            Where<FamilyBean, Integer> where2 = this.familyBeanDao.queryBuilder().join("familyId", "familyId", queryBuilder).limit(Long.valueOf(j)).offset(Long.valueOf(j2)).distinct().orderBy(FieldNameConstants.UPDATED_ON, true).where();
            where2.and(where2.in("areaId", list), where2.in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES), new Where[0]);
            if (str == null) {
                where2.and().or(where2.isNull(FieldNameConstants.LAST_MEMBER_NCD_SCREENING_DATE), where2.le(FieldNameConstants.LAST_MEMBER_NCD_SCREENING_DATE, Long.valueOf(UtilBean.getStartOfFinancialYear(null).getTime())), new Where[0]);
            }
            Iterator<FamilyBean> it = where2.query().iterator();
            while (it.hasNext()) {
                linkedList.add(new FamilyDataBean(it.next(), null));
            }
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        return linkedList;
    }

    @Override // com.argusoft.sewa.android.app.core.NcdService
    public List<MemberDataBean> retrieveMembersListForNcdScreening(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -30);
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().where();
            Iterator<MemberBean> it = where.and(where.eq("familyId", str), where.or(where.le("dob", calendar.getTime()), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), new Where[0]), where.in("state", FhsConstants.FHS_ACTIVE_CRITERIA_MEMBER_STATES)).query().iterator();
            while (it.hasNext()) {
                arrayList.add(new MemberDataBean(it.next()));
            }
            return arrayList;
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return new ArrayList();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007b  */
    @Override // com.argusoft.sewa.android.app.core.NcdService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.argusoft.sewa.android.app.model.MemberBean> retrieveMembersForNcdRegisterFhw(java.lang.Integer r9, java.util.List<java.lang.Integer> r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.NcdServiceImpl.retrieveMembersForNcdRegisterFhw(java.lang.Integer, java.util.List, java.lang.String):java.util.List");
    }

    @Override // com.argusoft.sewa.android.app.core.NcdService
    public List<MemberDataBean> retrieveMembersForNcdRegisterAsha(List<Integer> list, String str, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList2.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_TEMPORARY);
        try {
            ArrayList arrayList3 = new ArrayList();
            if (list != null && !list.isEmpty()) {
                Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", arrayList2).query().iterator();
                while (it.hasNext()) {
                    arrayList3.add(it.next().getFamilyId());
                }
            }
            if (!arrayList3.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
                if (str == null || str.isEmpty()) {
                    listQuery = where.in("familyId", arrayList3).and().ge("cbacDate", UtilBean.getStartOfFinancialYear(null)).query();
                } else {
                    listQuery = where.and(where.ge("cbacDate", UtilBean.getStartOfFinancialYear(null)), where.in("familyId", arrayList3), where.or(where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                }
                if (!listQuery.isEmpty()) {
                    Iterator<MemberBean> it2 = listQuery.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new MemberDataBean(it2.next()));
                    }
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.NcdService
    public MemberCbacDetailBean retrieveMemberCbacDetailBean(Long l) {
        try {
            return this.memberCbacDetailBeanDao.queryBuilder().where().eq("memberId", l).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.NcdService
    public void markMemberAsCbacDone(Long l) {
        try {
            MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
            memberBeanQueryForFirst.setCbacDate(new Date());
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.NcdService
    public void markFamilyAsCbacDoneForAnyMember(Long l) {
        try {
            FamilyBean familyBeanQueryForFirst = this.familyBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
            familyBeanQueryForFirst.setAnyMemberCbacDone(Boolean.TRUE);
            this.familyBeanDao.update((Dao<FamilyBean, Integer>) familyBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
    @Override // com.argusoft.sewa.android.app.core.NcdService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void markMemberAsNCDScreeningDone(java.lang.Long r6, java.lang.String r7, java.util.Date r8) {
        /*
            r5 = this;
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.MemberBean, java.lang.Integer> r0 = r5.memberBeanDao     // Catch: java.sql.SQLException -> La5
            com.j256.ormlite.stmt.QueryBuilder r0 = r0.queryBuilder()     // Catch: java.sql.SQLException -> La5
            com.j256.ormlite.stmt.Where r0 = r0.where()     // Catch: java.sql.SQLException -> La5
            java.lang.String r1 = "actualId"
            com.j256.ormlite.stmt.Where r6 = r0.eq(r1, r6)     // Catch: java.sql.SQLException -> La5
            java.lang.Object r6 = r6.queryForFirst()     // Catch: java.sql.SQLException -> La5
            com.argusoft.sewa.android.app.model.MemberBean r6 = (com.argusoft.sewa.android.app.model.MemberBean) r6     // Catch: java.sql.SQLException -> La5
            java.lang.String r8 = com.argusoft.sewa.android.app.util.UtilBean.getFinancialYearFromDate(r8)     // Catch: java.sql.SQLException -> La5
            int r0 = r7.hashCode()     // Catch: java.sql.SQLException -> La5
            r1 = 4
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -932203483: goto L4e;
                case -439614403: goto L44;
                case 453694600: goto L3a;
                case 469890464: goto L30;
                case 1836745991: goto L26;
                default: goto L25;
            }     // Catch: java.sql.SQLException -> La5
        L25:
            goto L58
        L26:
            java.lang.String r0 = "NCD_FHW_BREAST"
            boolean r7 = r7.equals(r0)     // Catch: java.sql.SQLException -> La5
            if (r7 == 0) goto L58
            r7 = 3
            goto L59
        L30:
            java.lang.String r0 = "NCD_FHW_HYPERTENSION"
            boolean r7 = r7.equals(r0)     // Catch: java.sql.SQLException -> La5
            if (r7 == 0) goto L58
            r7 = 0
            goto L59
        L3a:
            java.lang.String r0 = "NCD_FHW_ORAL"
            boolean r7 = r7.equals(r0)     // Catch: java.sql.SQLException -> La5
            if (r7 == 0) goto L58
            r7 = 1
            goto L59
        L44:
            java.lang.String r0 = "NCD_FHW_DIABETES"
            boolean r7 = r7.equals(r0)     // Catch: java.sql.SQLException -> La5
            if (r7 == 0) goto L58
            r7 = 2
            goto L59
        L4e:
            java.lang.String r0 = "NCD_FHW_CERVICAL"
            boolean r7 = r7.equals(r0)     // Catch: java.sql.SQLException -> La5
            if (r7 == 0) goto L58
            r7 = 4
            goto L59
        L58:
            r7 = -1
        L59:
            if (r7 == 0) goto L94
            if (r7 == r4) goto L88
            if (r7 == r3) goto L7c
            if (r7 == r2) goto L70
            if (r7 == r1) goto L64
            goto L9f
        L64:
            java.lang.String r7 = r6.getHypYear()     // Catch: java.sql.SQLException -> La5
            java.lang.String r7 = com.argusoft.sewa.android.app.util.UtilBean.addCommaSeparatedStringIfNotExists(r7, r8)     // Catch: java.sql.SQLException -> La5
            r6.setCervicalYear(r7)     // Catch: java.sql.SQLException -> La5
            goto L9f
        L70:
            java.lang.String r7 = r6.getHypYear()     // Catch: java.sql.SQLException -> La5
            java.lang.String r7 = com.argusoft.sewa.android.app.util.UtilBean.addCommaSeparatedStringIfNotExists(r7, r8)     // Catch: java.sql.SQLException -> La5
            r6.setBreastYear(r7)     // Catch: java.sql.SQLException -> La5
            goto L9f
        L7c:
            java.lang.String r7 = r6.getHypYear()     // Catch: java.sql.SQLException -> La5
            java.lang.String r7 = com.argusoft.sewa.android.app.util.UtilBean.addCommaSeparatedStringIfNotExists(r7, r8)     // Catch: java.sql.SQLException -> La5
            r6.setDiabetesYear(r7)     // Catch: java.sql.SQLException -> La5
            goto L9f
        L88:
            java.lang.String r7 = r6.getHypYear()     // Catch: java.sql.SQLException -> La5
            java.lang.String r7 = com.argusoft.sewa.android.app.util.UtilBean.addCommaSeparatedStringIfNotExists(r7, r8)     // Catch: java.sql.SQLException -> La5
            r6.setOralYear(r7)     // Catch: java.sql.SQLException -> La5
            goto L9f
        L94:
            java.lang.String r7 = r6.getHypYear()     // Catch: java.sql.SQLException -> La5
            java.lang.String r7 = com.argusoft.sewa.android.app.util.UtilBean.addCommaSeparatedStringIfNotExists(r7, r8)     // Catch: java.sql.SQLException -> La5
            r6.setHypYear(r7)     // Catch: java.sql.SQLException -> La5
        L9f:
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.MemberBean, java.lang.Integer> r7 = r5.memberBeanDao     // Catch: java.sql.SQLException -> La5
            r7.update(r6)     // Catch: java.sql.SQLException -> La5
            goto Lb2
        La5:
            r6 = move-exception
            java.lang.Class r7 = r5.getClass()
            java.lang.String r7 = r7.getName()
            r8 = 0
            android.util.Log.e(r7, r8, r6)
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.NcdServiceImpl.markMemberAsNCDScreeningDone(java.lang.Long, java.lang.String, java.util.Date):void");
    }
}
