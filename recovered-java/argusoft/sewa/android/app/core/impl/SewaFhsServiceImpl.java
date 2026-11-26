package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.component.SearchComponent;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.SewaFhsService;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.databean.LocationDetailDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MobileNumberUpdationBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.databean.RchVillageProfileDataBean;
import com.argusoft.sewa.android.app.databean.WorkerDetailDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.AnnouncementBean;
import com.argusoft.sewa.android.app.model.AnswerBean;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.FhwServiceDetailBean;
import com.argusoft.sewa.android.app.model.HealthInfraAssignedBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.LibraryBean;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberPregnancyStatusBean;
import com.argusoft.sewa.android.app.model.MemberRchIdBean;
import com.argusoft.sewa.android.app.model.MergedFamiliesBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.model.QuestionBean;
import com.argusoft.sewa.android.app.model.RchVillageProfileBean;
import com.argusoft.sewa.android.app.model.ReadNotificationsBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.firebase.messaging.ServiceStarter;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class SewaFhsServiceImpl implements SewaFhsService {
    private static final String TAG = "SewaFhsServiceImpl";
    Dao<AnnouncementBean, Integer> announcementBeanDao;
    Dao<AnswerBean, Integer> answerBeanDao;
    Context context;
    Dao<CovidTravellersInfoBean, Integer> covidTravellersInfoBeanDao;
    Dao<FamilyBean, Integer> familyBeanDao;
    Dao<FhwServiceDetailBean, Integer> fhwServiceDetailBeanDao;
    Dao<HealthInfraAssignedBean, Integer> healthInfraAssignedBeanDao;
    Dao<LabelBean, Integer> labelBeanDao;
    Dao<LibraryBean, Integer> libraryBeanDao;
    Dao<ListValueBean, Integer> listValueBeanDao;
    Dao<LocationBean, Integer> locationBeanDao;
    Dao<LocationMasterBean, Integer> locationMasterBeanDao;
    Dao<LoggerBean, Integer> loggerBeanDao;
    Dao<LoginBean, Integer> loginBeanDao;
    Dao<MemberBean, Integer> memberBeanDao;
    Dao<MemberPregnancyStatusBean, Integer> memberPregnancyStatusBeanDao;
    Dao<MemberRchIdBean, Integer> memberRchIdBeanDao;
    Dao<MergedFamiliesBean, Integer> mergedFamiliesBeanDao;
    Dao<MigratedMembersBean, Integer> migratedMembersBeanDao;
    Dao<NotificationBean, Integer> notificationBeanDao;
    Dao<QuestionBean, Integer> questionBeanDao;
    Dao<RchVillageProfileBean, Integer> rchVillageProfileBeanDao;
    Dao<ReadNotificationsBean, Integer> readNotificationsBeanDao;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    Dao<VersionBean, Integer> versionBeanDao;

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveFamilyDataBeansForCFHCByVillage(String str, boolean z, long j, long j2) {
        Date date;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList2.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_ORPHAN);
        try {
            date = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").parse("2026/01/01 00:00:00");
        } catch (ParseException e) {
            e.printStackTrace();
            date = null;
        }
        try {
            ArrayList arrayList3 = new ArrayList();
            if (z) {
                arrayList3.addAll(this.familyBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).selectColumns("familyId", "state", FieldNameConstants.PENDING_ABHA_COUNT).where().eq("locationId", str).and().in("state", FhsConstants.CFHC_IN_REVERIFICATION_FAMILY_STATES).query());
            } else {
                QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
                queryBuilder.where().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
                Where<FamilyBean, Integer> where = this.familyBeanDao.queryBuilder().join("familyId", "familyId", queryBuilder).limit(Long.valueOf(j)).offset(Long.valueOf(j2)).selectColumns("familyId", "state", FieldNameConstants.LAST_FHS_DATE, FieldNameConstants.PENDING_ABHA_COUNT).distinct().orderBy(FieldNameConstants.UPDATED_ON, true).where();
                arrayList3.addAll(where.and(where.eq("locationId", str), where.in("state", arrayList2), where.or(where.isNull(FieldNameConstants.LAST_FHS_DATE), where.lt(FieldNameConstants.LAST_FHS_DATE, Long.valueOf(date.getTime())), new Where[0])).query());
            }
            ArrayList arrayList4 = new ArrayList();
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean((FamilyBean) it.next(), arrayList4));
            }
        } catch (Exception e2) {
            Log.e(TAG, null, e2);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveFamilyDataBeansForAbhaNumberByVillage(String str, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES);
        arrayList2.remove(FhsConstants.FHS_FAMILY_STATE_TEMPORARY);
        try {
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            queryBuilder.where().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
            List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().join("familyId", "familyId", queryBuilder).limit(Long.valueOf(j)).offset(Long.valueOf(j2)).selectColumns("familyId", "state", FieldNameConstants.PENDING_ABHA_COUNT).distinct().orderBy(FieldNameConstants.UPDATED_ON, true).where().eq("locationId", str).and().gt(FieldNameConstants.PENDING_ABHA_COUNT, 0).and().in("state", arrayList2).query();
            ArrayList arrayList3 = new ArrayList();
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), arrayList3));
            }
        } catch (Exception e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> searchFamilyDataBeansForCFHCByVillage(String str, String str2, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList2.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_ORPHAN);
        try {
            HashSet hashSet = new HashSet();
            if (z) {
                hashSet.addAll(new ArrayList(this.familyBeanDao.queryBuilder().selectColumns("familyId", "state").where().like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().eq("locationId", str2).and().in("state", FhsConstants.CFHC_IN_REVERIFICATION_FAMILY_STATES).query()));
            } else {
                ArrayList arrayList3 = new ArrayList();
                Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("locationId", str2).and().in("state", arrayList2).query().iterator();
                while (it.hasNext()) {
                    arrayList3.add(it.next().getFamilyId());
                }
                List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().eq("locationId", str2).and().in("state", arrayList2).query();
                HashSet<MemberBean> hashSet2 = new HashSet();
                hashSet2.addAll(this.memberBeanDao.queryBuilder().selectColumns("familyId").where().like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).and().in("familyId", arrayList3).query());
                hashSet2.addAll(this.memberBeanDao.queryBuilder().selectColumns("familyId").where().like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).and().in("familyId", arrayList3).query());
                hashSet2.addAll(this.memberBeanDao.queryBuilder().selectColumns("familyId").where().like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).and().in("familyId", arrayList3).query());
                ArrayList arrayList4 = new ArrayList();
                Iterator<FamilyBean> it2 = listQuery.iterator();
                while (it2.hasNext()) {
                    arrayList4.add(it2.next().getFamilyId());
                }
                for (MemberBean memberBean : hashSet2) {
                    if (!arrayList4.contains(memberBean.getFamilyId())) {
                        arrayList4.add(memberBean.getFamilyId());
                    }
                }
                hashSet.addAll(this.familyBeanDao.queryBuilder().selectColumns("familyId", "state", FieldNameConstants.LAST_FHS_DATE, FieldNameConstants.PENDING_ABHA_COUNT).where().in("familyId", arrayList4).and().eq("locationId", str2).query());
            }
            ArrayList arrayList5 = new ArrayList();
            Iterator it3 = hashSet.iterator();
            while (it3.hasNext()) {
                arrayList.add(new FamilyDataBean((FamilyBean) it3.next(), arrayList5));
            }
        } catch (Exception e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveFamilyDataBeansForMergeFamily(String str, String str2, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        arrayList.add(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED);
        arrayList.add(FhsConstants.FHS_FAMILY_STATE_ORPHAN);
        arrayList.addAll(FhsConstants.CFHC_IN_REVERIFICATION_FAMILY_STATES);
        try {
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            queryBuilder.where().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
            Where<FamilyBean, Integer> whereIn = this.familyBeanDao.queryBuilder().join("familyId", "familyId", queryBuilder).limit(Long.valueOf(j)).offset(Long.valueOf(j2)).selectColumns("familyId", "state").distinct().orderBy(FieldNameConstants.UPDATED_ON, true).where().eq("locationId", str).and().in("state", arrayList);
            if (str2 != null && !str2.isEmpty()) {
                whereIn = whereIn.and().like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str2 + GlobalTypes.BENEFICIARY_SEPARATOR);
            }
            List<FamilyBean> listQuery = whereIn.query();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList2.add(new FamilyDataBean(it.next(), arrayList3));
            }
            return arrayList2;
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return new ArrayList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveFamilyDataBeansForFHSByArea(Long l, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES);
        arrayList2.remove(FhsConstants.FHS_FAMILY_STATE_TEMPORARY);
        try {
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            queryBuilder.where().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
            List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().join("familyId", "familyId", queryBuilder).limit(Long.valueOf(j)).offset(Long.valueOf(j2)).selectColumns("familyId", "state", FieldNameConstants.PENDING_ABHA_COUNT).distinct().orderBy(FieldNameConstants.UPDATED_ON, true).where().eq("areaId", l).and().in("state", arrayList2).query();
            ArrayList arrayList3 = new ArrayList();
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), arrayList3));
            }
        } catch (Exception e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveFamilyDataBeansForAbhaNumberByArea(Long l, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES);
        arrayList2.remove(FhsConstants.FHS_FAMILY_STATE_TEMPORARY);
        try {
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            queryBuilder.where().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
            List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().join("familyId", "familyId", queryBuilder).limit(Long.valueOf(j)).offset(Long.valueOf(j2)).selectColumns("familyId", "state", FieldNameConstants.PENDING_ABHA_COUNT).distinct().orderBy(FieldNameConstants.UPDATED_ON, true).where().eq("areaId", l).and().gt(FieldNameConstants.PENDING_ABHA_COUNT, 0).and().in("state", arrayList2).query();
            ArrayList arrayList3 = new ArrayList();
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), arrayList3));
            }
        } catch (Exception e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> searchFamilyDataBeansForFHSByArea(Long l, String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES);
        arrayList2.remove(FhsConstants.FHS_FAMILY_STATE_TEMPORARY);
        try {
            ArrayList arrayList3 = new ArrayList();
            Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("areaId", l).and().in("state", arrayList2).query().iterator();
            while (it.hasNext()) {
                arrayList3.add(it.next().getFamilyId());
            }
            List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().eq("areaId", l).and().in("state", arrayList2).query();
            HashSet<MemberBean> hashSet = new HashSet();
            hashSet.addAll(this.memberBeanDao.queryBuilder().selectColumns("familyId").where().like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).and().in("familyId", arrayList3).query());
            hashSet.addAll(this.memberBeanDao.queryBuilder().selectColumns("familyId").where().like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).and().in("familyId", arrayList3).query());
            hashSet.addAll(this.memberBeanDao.queryBuilder().selectColumns("familyId").where().like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).and().in("familyId", arrayList3).query());
            ArrayList arrayList4 = new ArrayList();
            Iterator<FamilyBean> it2 = listQuery.iterator();
            while (it2.hasNext()) {
                arrayList4.add(it2.next().getFamilyId());
            }
            for (MemberBean memberBean : hashSet) {
                if (!arrayList4.contains(memberBean.getFamilyId())) {
                    arrayList4.add(memberBean.getFamilyId());
                }
            }
            List<FamilyBean> listQuery2 = this.familyBeanDao.queryBuilder().selectColumns("familyId", "state", FieldNameConstants.PENDING_ABHA_COUNT).where().in("familyId", arrayList4).and().eq("areaId", l).query();
            ArrayList arrayList5 = new ArrayList();
            Iterator<FamilyBean> it3 = listQuery2.iterator();
            while (it3.hasNext()) {
                arrayList.add(new FamilyDataBean(it3.next(), arrayList5));
            }
        } catch (Exception e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveFamilyDataBeansForLCDCByArea(List<Integer> list, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList2.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_ORPHAN);
        try {
            QueryBuilder<FamilyBean, Integer> queryBuilder = this.familyBeanDao.queryBuilder();
            Where<FamilyBean, Integer> where = queryBuilder.where();
            where.and(where.in("areaId", list), where.in("state", arrayList2), where.or(where.isNull(FieldNameConstants.LCDC_SUBMITTED), where.eq(FieldNameConstants.LCDC_SUBMITTED, Boolean.FALSE), new Where[0]));
            queryBuilder.limit(Long.valueOf(j)).offset(Long.valueOf(j2));
            Iterator<FamilyBean> it = queryBuilder.query().iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), new ArrayList()));
            }
        } catch (Exception e) {
            Log.e(TAG, "Error retrieving LCDC families", e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> searchFamilyDataBeansForLCDCByArea(List<Integer> list, String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList2.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_ORPHAN);
        ArrayList arrayList3 = new ArrayList(FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
        try {
            String str2 = GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR;
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            Where<MemberBean, Integer> where = queryBuilder.where();
            where.and(where.notIn("state", arrayList3), where.or(where.like("uniqueHealthId", str2), where.like("firstName", str2), where.like("mobileNumber", str2), where.like("familyId", str2)), new Where[0]);
            queryBuilder.selectColumns("familyId");
            QueryBuilder<FamilyBean, Integer> queryBuilder2 = this.familyBeanDao.queryBuilder();
            Where<FamilyBean, Integer> where2 = queryBuilder2.where();
            where2.and(where2.in("areaId", list), where2.in("state", arrayList2), where2.in("familyId", queryBuilder), where2.or(where2.isNull(FieldNameConstants.LCDC_SUBMITTED), where2.eq(FieldNameConstants.LCDC_SUBMITTED, Boolean.FALSE), new Where[0]));
            Iterator<FamilyBean> it = queryBuilder2.query().iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), new ArrayList()));
            }
        } catch (Exception e) {
            Log.e(TAG, "Error searching families for LCDC", e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveFamilyDataBeansForLCDC02ByArea(List<Integer> list, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList2.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_ORPHAN);
        try {
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            Where<MemberBean, Integer> where = queryBuilder.where();
            where.and(where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNull(FieldNameConstants.LCDC_SUSPECTED), new Where[0]);
            queryBuilder.selectColumns("familyId");
            QueryBuilder<FamilyBean, Integer> queryBuilder2 = this.familyBeanDao.queryBuilder();
            Where<FamilyBean, Integer> where2 = queryBuilder2.where();
            where2.and(where2.in("areaId", list), where2.in("state", arrayList2), where2.in("familyId", queryBuilder));
            queryBuilder2.limit(Long.valueOf(j)).offset(Long.valueOf(j2));
            Iterator<FamilyBean> it = queryBuilder2.query().iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), new ArrayList()));
            }
        } catch (Exception e) {
            Log.e(TAG, "Error retrieving LCDC families", e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> searchFamilyDataBeansForLCDC02ByArea(List<Integer> list, String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList2.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_ORPHAN);
        ArrayList arrayList3 = new ArrayList(FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
        try {
            String str2 = GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR;
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            Where<MemberBean, Integer> where = queryBuilder.where();
            where.and(where.notIn("state", arrayList3), where.isNull(FieldNameConstants.LCDC_SUSPECTED), where.or(where.like("uniqueHealthId", str2), where.like("firstName", str2), where.like("mobileNumber", str2), where.like("familyId", str2)));
            queryBuilder.selectColumns("familyId");
            QueryBuilder<FamilyBean, Integer> queryBuilder2 = this.familyBeanDao.queryBuilder();
            Where<FamilyBean, Integer> where2 = queryBuilder2.where();
            where2.and(where2.in("areaId", list), where2.in("state", arrayList2), where2.in("familyId", queryBuilder));
            Iterator<FamilyBean> it = queryBuilder2.query().iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), new ArrayList()));
            }
        } catch (Exception e) {
            Log.e(TAG, "Error searching families for LCDC", e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveFamilyDataBeansForFilariaByArea(List<Integer> list, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList2.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_ORPHAN);
        try {
            QueryBuilder<FamilyBean, Integer> queryBuilder = this.familyBeanDao.queryBuilder();
            Where<FamilyBean, Integer> where = queryBuilder.where();
            where.and(where.in("areaId", list), where.in("state", arrayList2), where.or(where.isNull(FieldNameConstants.FILARIA_SUBMITTED), where.eq(FieldNameConstants.FILARIA_SUBMITTED, Boolean.FALSE), new Where[0]));
            queryBuilder.limit(Long.valueOf(j)).offset(Long.valueOf(j2));
            Iterator<FamilyBean> it = queryBuilder.query().iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), new ArrayList()));
            }
        } catch (Exception e) {
            Log.e(TAG, "Error retrieving LCDC families", e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> searchFamilyDataBeansForFilariaByArea(List<Integer> list, String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList2.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED);
        arrayList2.add(FhsConstants.FHS_FAMILY_STATE_ORPHAN);
        ArrayList arrayList3 = new ArrayList(FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
        try {
            String str2 = GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR;
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            Where<MemberBean, Integer> where = queryBuilder.where();
            where.and(where.notIn("state", arrayList3), where.or(where.like("uniqueHealthId", str2), where.like("firstName", str2), where.like("mobileNumber", str2), where.like("familyId", str2)), new Where[0]);
            queryBuilder.selectColumns("familyId");
            QueryBuilder<FamilyBean, Integer> queryBuilder2 = this.familyBeanDao.queryBuilder();
            Where<FamilyBean, Integer> where2 = queryBuilder2.where();
            where2.and(where2.in("areaId", list), where2.in("state", arrayList2), where2.in("familyId", queryBuilder), where2.or(where2.isNull(FieldNameConstants.FILARIA_SUBMITTED), where2.eq(FieldNameConstants.FILARIA_SUBMITTED, Boolean.FALSE), new Where[0]));
            Iterator<FamilyBean> it = queryBuilder2.query().iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), new ArrayList()));
            }
        } catch (Exception e) {
            Log.e(TAG, "Error searching families for LCDC", e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMemberDataBeansByFamily(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Iterator it = new ArrayList(this.memberBeanDao.queryBuilder().orderBy("familyHeadFlag", Boolean.FALSE.booleanValue()).where().eq("familyId", str).query()).iterator();
            while (it.hasNext()) {
                arrayList.add(new MemberDataBean((MemberBean) it.next()));
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public FamilyDataBean retrieveFamilyDataBeanByFamilyId(String str) {
        try {
            return new FamilyDataBean(this.familyBeanDao.queryBuilder().where().eq("familyId", str).queryForFirst(), new ArrayList());
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markFamilyAsVerified(String str) {
        try {
            FamilyBean familyBean = this.familyBeanDao.queryForEq("familyId", str).get(0);
            familyBean.setIsVerifiedFlag(Boolean.TRUE);
            familyBean.setReverificationFlag(Boolean.FALSE);
            familyBean.setState(FhsConstants.FHS_FAMILY_STATE_VERIFIED);
            this.familyBeanDao.update((Dao<FamilyBean, Integer>) familyBean);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markFamilyAsCFHCVerified(String str) {
        try {
            FamilyBean familyBean = this.familyBeanDao.queryForEq("familyId", str).get(0);
            familyBean.setIsVerifiedFlag(Boolean.TRUE);
            familyBean.setReverificationFlag(Boolean.FALSE);
            familyBean.setState(FhsConstants.CFHC_FAMILY_STATE_VERIFIED_LOCAL);
            this.familyBeanDao.update((Dao<FamilyBean, Integer>) familyBean);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markFamilyAsMigrated(String str) {
        try {
            FamilyBean familyBean = this.familyBeanDao.queryForEq("familyId", str).get(0);
            familyBean.setIsVerifiedFlag(Boolean.TRUE);
            familyBean.setReverificationFlag(Boolean.FALSE);
            familyBean.setState(FhsConstants.FHS_FAMILY_STATE_MIGRATED);
            this.familyBeanDao.update((Dao<FamilyBean, Integer>) familyBean);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markFamilyAsArchived(String str) {
        try {
            FamilyBean familyBean = this.familyBeanDao.queryForEq("familyId", str).get(0);
            familyBean.setIsVerifiedFlag(Boolean.TRUE);
            familyBean.setReverificationFlag(Boolean.FALSE);
            familyBean.setState(FhsConstants.FHS_FAMILY_STATE_ARCHIVED);
            this.familyBeanDao.update((Dao<FamilyBean, Integer>) familyBean);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<LocationBean> getDistinctLocationsAssignedToUser() {
        if (SewaTransformer.loginBean.getVillageCode() == null || SewaTransformer.loginBean.getVillageCode().isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : SewaTransformer.loginBean.getVillageCode().split(":")) {
            arrayList.add(Integer.valueOf(str));
        }
        ArrayList arrayList2 = new ArrayList();
        try {
            return this.locationBeanDao.queryBuilder().orderBy("name", true).where().in(FieldNameConstants.ACTUAL_I_D, arrayList).query();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return arrayList2;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public Map<String, MemberDataBean> retrieveHeadMemberDataBeansByFamilyId(List<String> list) {
        MemberDataBean memberDataBean;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashSet hashSet = new HashSet();
        try {
            for (MemberBean memberBean : new ArrayList(this.memberBeanDao.queryBuilder().selectColumns("familyId", "firstName", "middleName", "lastName", FieldNameConstants.GRAND_FATHER_NAME, "maritalStatus", "gender").where().in("familyId", list).and().eq("familyHeadFlag", Boolean.TRUE).query())) {
                map.put(memberBean.getFamilyId(), new MemberDataBean(memberBean));
            }
            for (String str : list) {
                if (((MemberDataBean) map.get(str)) == null) {
                    hashSet.add(str);
                }
            }
            for (MemberBean memberBean2 : this.memberBeanDao.queryBuilder().selectColumns("familyId", "firstName", "middleName", "lastName", FieldNameConstants.GRAND_FATHER_NAME, "maritalStatus", "gender").where().in("familyId", hashSet).query()) {
                List arrayList = (List) map2.get(memberBean2.getFamilyId());
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    map2.put(memberBean2.getFamilyId(), arrayList);
                }
                arrayList.add(memberBean2);
            }
            for (String str2 : list) {
                if (map2.get(str2) != null) {
                    List<MemberBean> list2 = (List) map2.get(str2);
                    if (list2 != null) {
                        memberDataBean = null;
                        for (MemberBean memberBean3 : list2) {
                            if (memberBean3.getMaritalStatus() != null && memberBean3.getMaritalStatus().equals("629") && memberBean3.getGender() != null && memberBean3.getGender().equals("M")) {
                                memberDataBean = new MemberDataBean(memberBean3);
                            }
                        }
                        if (memberDataBean == null) {
                            for (MemberBean memberBean4 : list2) {
                                if (memberBean4.getGender() != null && memberBean4.getGender().equals("M")) {
                                    memberDataBean = new MemberDataBean(memberBean4);
                                }
                            }
                        }
                        if (memberDataBean == null) {
                            for (MemberBean memberBean5 : list2) {
                                if (memberBean5.getGender() != null && memberBean5.getGender().equals("F")) {
                                    memberDataBean = new MemberDataBean(memberBean5);
                                }
                            }
                        }
                    } else {
                        memberDataBean = null;
                    }
                    if (memberDataBean != null) {
                        map.put(str2, memberDataBean);
                    }
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return map;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FhwServiceDetailBean> retrieveFhwServiceDetailBeansByVillageId(Integer num) {
        if (num != null) {
            try {
                return this.fhwServiceDetailBeanDao.queryBuilder().where().eq("locationId", num).query();
            } catch (SQLException e) {
                Log.e(TAG, null, e);
            }
        } else {
            try {
                return this.fhwServiceDetailBeanDao.queryForAll();
            } catch (SQLException e2) {
                Log.e(TAG, null, e2);
            }
        }
        return new ArrayList();
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(String str) {
        List<MemberBean> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        try {
            arrayList = this.memberBeanDao.queryBuilder().where().eq("familyId", str).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).query();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        Iterator<MemberBean> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new MemberDataBean(it.next()));
        }
        return arrayList2;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void mergeFamilies(FamilyDataBean familyDataBean, FamilyDataBean familyDataBean2) {
        try {
            this.mergedFamiliesBeanDao.create((Dao<MergedFamiliesBean, Integer>) new MergedFamiliesBean(familyDataBean2.getFamilyId(), familyDataBean.getFamilyId(), false));
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public Map<Long, MemberBean> retrieveMemberBeansMapByActualIds(List<Long> list) {
        HashMap map = new HashMap();
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<Long> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toString());
            }
            for (MemberBean memberBean : this.memberBeanDao.queryBuilder().where().in("actualId", arrayList).query()) {
                map.put(Long.valueOf(memberBean.getActualId()), memberBean);
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return map;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public String assignFamilyToUser(String str, FamilyDataBean familyDataBean) {
        try {
            FamilyDataBean familyDataBeanAssignFamilyToUser = this.sewaServiceRestClient.assignFamilyToUser(str, familyDataBean.getFamilyId());
            ArrayList arrayList = new ArrayList();
            if (familyDataBeanAssignFamilyToUser != null) {
                DeleteBuilder<FamilyBean, Integer> deleteBuilder = this.familyBeanDao.deleteBuilder();
                deleteBuilder.where().eq("familyId", familyDataBeanAssignFamilyToUser.getFamilyId());
                deleteBuilder.delete();
                DeleteBuilder<MemberBean, Integer> deleteBuilder2 = this.memberBeanDao.deleteBuilder();
                deleteBuilder2.where().eq("familyId", familyDataBeanAssignFamilyToUser.getFamilyId());
                deleteBuilder2.delete();
                List<MemberDataBean> members = familyDataBeanAssignFamilyToUser.getMembers();
                if (members != null && !members.isEmpty()) {
                    Iterator<MemberDataBean> it = members.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new MemberBean(it.next()));
                    }
                }
                this.memberBeanDao.create(arrayList);
                this.familyBeanDao.create((Dao<FamilyBean, Integer>) new FamilyBean(familyDataBeanAssignFamilyToUser));
                return UtilBean.getMyLabel(LabelConstants.FAMILY_ASSIGNED_SUCCESSFULLY);
            }
            return UtilBean.getMyLabel(LabelConstants.NETWORK_ERROR_WHILE_ASSIGNING_FAMILY);
        } catch (RestHttpException e) {
            Log.e(TAG, null, e);
            return UtilBean.getMyLabel(LabelConstants.THERE_WAS_ERROR_ASSIGNING_FAMILY);
        } catch (SQLException e2) {
            Log.e(TAG, null, e2);
            return UtilBean.getMyLabel(LabelConstants.ERROR_WHILE_STORING_ASSIGNED_FAMILY);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FieldValueMobDataBean> retrieveAnganwadiListFromSubcentreId(Integer num) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            Iterator<LocationBean> it = this.locationBeanDao.queryBuilder().where().eq(FieldNameConstants.PARENT, num).query().iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getActualID());
            }
            for (LocationBean locationBean : this.locationBeanDao.queryBuilder().where().in(FieldNameConstants.PARENT, arrayList2).and().eq("level", 8).query()) {
                FieldValueMobDataBean fieldValueMobDataBean = new FieldValueMobDataBean();
                fieldValueMobDataBean.setIdOfValue(locationBean.getActualID().intValue());
                fieldValueMobDataBean.setValue(locationBean.getName());
                arrayList.add(fieldValueMobDataBean);
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public Integer retrieveSubcenterIdFromAnganwadiId(Integer num) {
        LocationBean locationBeanQueryForFirst;
        if (num != null) {
            try {
                LocationBean locationBeanQueryForFirst2 = this.locationBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, num).queryForFirst();
                if (locationBeanQueryForFirst2 != null && (locationBeanQueryForFirst = this.locationBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, locationBeanQueryForFirst2.getParent()).queryForFirst()) != null) {
                    return locationBeanQueryForFirst.getParent();
                }
            } catch (SQLException e) {
                Log.e(TAG, null, e);
            }
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public RchVillageProfileDataBean getRchVillageProfileDataBean(String str) {
        RchVillageProfileDataBean rchVillageProfileDataBean = new RchVillageProfileDataBean();
        LocationDetailDataBean locationDetailDataBean = new LocationDetailDataBean();
        locationDetailDataBean.setId(Integer.valueOf(str));
        locationDetailDataBean.setName("ઉનાવા");
        locationDetailDataBean.setLocType(LocationConstants.LocationType.VILLAGE);
        WorkerDetailDataBean workerDetailDataBean = new WorkerDetailDataBean();
        workerDetailDataBean.setName("Anjanaben Patel");
        workerDetailDataBean.setAadharNumber("123456789879");
        workerDetailDataBean.setMobileNumber("9876543210");
        workerDetailDataBean.setUserId(12345L);
        WorkerDetailDataBean workerDetailDataBean2 = new WorkerDetailDataBean();
        workerDetailDataBean2.setName("Gitaben Raval");
        workerDetailDataBean2.setAadharNumber("123456789879");
        workerDetailDataBean2.setMobileNumber("9876543210");
        workerDetailDataBean2.setUserId(12346L);
        WorkerDetailDataBean workerDetailDataBean3 = new WorkerDetailDataBean();
        workerDetailDataBean3.setName("Lata Solanki");
        workerDetailDataBean3.setAadharNumber("123456789879");
        workerDetailDataBean3.setMobileNumber("9876543210");
        workerDetailDataBean3.setUserId(12347L);
        WorkerDetailDataBean workerDetailDataBean4 = new WorkerDetailDataBean();
        workerDetailDataBean4.setName("Pritiben Shah");
        workerDetailDataBean4.setAadharNumber("123456789879");
        workerDetailDataBean4.setMobileNumber("9876543210");
        workerDetailDataBean4.setUserId(12348L);
        WorkerDetailDataBean workerDetailDataBean5 = new WorkerDetailDataBean();
        workerDetailDataBean5.setName("Alpaben Patel");
        workerDetailDataBean5.setAadharNumber("123456789879");
        workerDetailDataBean5.setMobileNumber("9876543210");
        workerDetailDataBean5.setUserId(12349L);
        rchVillageProfileDataBean.setState(locationDetailDataBean);
        rchVillageProfileDataBean.setDistrict(locationDetailDataBean);
        rchVillageProfileDataBean.setBlock(locationDetailDataBean);
        rchVillageProfileDataBean.setChc(locationDetailDataBean);
        rchVillageProfileDataBean.setPhc(locationDetailDataBean);
        rchVillageProfileDataBean.setSubCentre(locationDetailDataBean);
        rchVillageProfileDataBean.setVillage(locationDetailDataBean);
        rchVillageProfileDataBean.setTotalPopulation(15000);
        rchVillageProfileDataBean.setTotalEligibleCouple(1000);
        rchVillageProfileDataBean.setPregnantWomenCount(300);
        rchVillageProfileDataBean.setInfantChildCount(Integer.valueOf(ServiceStarter.ERROR_UNKNOWN));
        ArrayList arrayList = new ArrayList();
        arrayList.add(workerDetailDataBean);
        arrayList.add(workerDetailDataBean2);
        rchVillageProfileDataBean.setAshaDetail(arrayList);
        rchVillageProfileDataBean.setAnmDetail(workerDetailDataBean3);
        rchVillageProfileDataBean.setFhwDetail(workerDetailDataBean4);
        rchVillageProfileDataBean.setMphwDetail(workerDetailDataBean5);
        rchVillageProfileDataBean.setNearbyHospitalDetail("Civil Hospital, GH Road, Sector-12, Gandhinagar 7923221931");
        rchVillageProfileDataBean.setFruDetail("FRU Details 7878564234");
        rchVillageProfileDataBean.setAmbulanceNumber("8965465465");
        rchVillageProfileDataBean.setTransportationNumber("9594852316");
        rchVillageProfileDataBean.setNationalCallCentreNumber("9876854612");
        rchVillageProfileDataBean.setHelplineNumber("7965481236");
        return rchVillageProfileDataBean;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<LocationBean> retrieveAshaAreaAssignedToUser(Integer num) {
        ArrayList arrayList = new ArrayList();
        try {
            return this.locationBeanDao.queryBuilder().orderBy("name", true).where().eq("level", 7).and().eq(FieldNameConstants.PARENT, num).query();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveEligibleCouplesByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
        ArrayList arrayList;
        Object obj;
        Date date;
        List<MemberBean> listQuery;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5 = new ArrayList();
        try {
            ArrayList arrayList6 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("locationId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList6.add(it.next().getFamilyId());
            }
            if (arrayList6.isEmpty()) {
                return arrayList5;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -15);
            Date time = calendar.getTime();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, -49);
            Date time2 = calendar2.getTime();
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
            try {
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList6), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", time2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                    obj = "629";
                    date = time;
                } else {
                    obj = "629";
                    date = time;
                    listQuery = where.and(where.in("familyId", arrayList6), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", obj), where.and(where.isNotNull("dob"), where.le("dob", date), where.ge("dob", time2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0])).query();
                }
                Calendar calendar3 = Calendar.getInstance();
                calendar3.add(2, -3);
                Calendar calendar4 = Calendar.getInstance();
                calendar4.add(1, -3);
                arrayList2 = new ArrayList();
                arrayList3 = new ArrayList();
                arrayList4 = new ArrayList();
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getGender() != null && memberBean.getGender().equals("F") && memberBean.getMaritalStatus() != null && memberBean.getMaritalStatus().equals(obj) && memberBean.getDob() != null && memberBean.getDob().after(time2) && memberBean.getDob().before(date) && ((memberBean.getIsPregnantFlag() == null || !memberBean.getIsPregnantFlag().booleanValue()) && ((memberBean.getMenopauseArrived() == null || !memberBean.getMenopauseArrived().booleanValue()) && ((memberBean.getHysterectomyDone() == null || !memberBean.getHysterectomyDone().booleanValue()) && (memberBean.getLastMethodOfContraception() == null || ((!memberBean.getLastMethodOfContraception().equals(RchConstants.FEMALE_STERILIZATION) && !memberBean.getLastMethodOfContraception().equals(RchConstants.MALE_STERILIZATION)) || (memberBean.getFpInsertOperateDate() != null && memberBean.getFpInsertOperateDate().after(calendar3.getTime())))))))) {
                        try {
                            if (this.memberBeanDao.queryBuilder().where().eq("motherId", memberBean.getActualId()).countOf() > 2) {
                                arrayList2.add(new MemberDataBean(memberBean));
                            } else if (memberBean.getLastDeliveryDate() != null && memberBean.getLastDeliveryDate().after(calendar4.getTime())) {
                                arrayList3.add(new MemberDataBean(memberBean));
                            } else {
                                arrayList4.add(new MemberDataBean(memberBean));
                            }
                        } catch (SQLException e) {
                            e = e;
                            arrayList = arrayList5;
                            Log.e(TAG, null, e);
                            return arrayList;
                        }
                    }
                }
                arrayList = arrayList5;
            } catch (SQLException e2) {
                e = e2;
            }
            try {
                arrayList.addAll(arrayList2);
                arrayList.addAll(arrayList3);
                arrayList.addAll(arrayList4);
                return arrayList;
            } catch (SQLException e3) {
                e = e3;
                Log.e(TAG, null, e);
                return arrayList;
            }
        } catch (SQLException e4) {
            e = e4;
            arrayList = arrayList5;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveEligibleCouplesByAshaAreaVhnd(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2, String str, Date date, boolean z) {
        ArrayList arrayList;
        List<FamilyBean> listQuery;
        Date date2;
        List<MemberBean> listQuery2;
        Date date3;
        ArrayList arrayList2 = new ArrayList();
        try {
            ArrayList arrayList3 = new ArrayList();
            if (list != null) {
                listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            } else {
                listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            }
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList3.add(it.next().getFamilyId());
            }
            if (arrayList3.isEmpty()) {
                return arrayList2;
            }
            ArrayList arrayList4 = new ArrayList();
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -15);
            Date time = calendar.getTime();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, -49);
            Date time2 = calendar2.getTime();
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
            try {
                if (str != null && charSequence != null) {
                    if (SearchComponent.SearchTypes.MOBILE_NUMBER.equalsIgnoreCase(str)) {
                        listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", time2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR)).query();
                    } else if (SearchComponent.SearchTypes.MEMBER_ID.equalsIgnoreCase(str)) {
                        listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", time2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR)).query();
                    } else {
                        if (SearchComponent.SearchTypes.FAMILY_ID.equalsIgnoreCase(str)) {
                            date3 = time;
                            listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", time2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR)).query();
                        } else if ("ABHA_NUMBER".equalsIgnoreCase(str)) {
                            String string = charSequence.toString();
                            if (charSequence.length() == 14) {
                                string = new StringBuilder(new StringBuilder(new StringBuilder(charSequence).insert(2, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(7, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(12, GlobalTypes.KEY_VALUE_SEPARATOR).toString();
                            }
                            date3 = time;
                            listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", time2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.or(where.eq("healthId", string), where.eq("healthIdNumber", string), new Where[0])).query();
                        } else {
                            date2 = time;
                            if (SearchComponent.SearchTypes.DOB.equalsIgnoreCase(str)) {
                                listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dob"), where.le("dob", date2), where.ge("dob", time2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.eq("dob", date)).query();
                            } else if (SearchComponent.SearchTypes.NAME.equalsIgnoreCase(str)) {
                                listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dob"), where.le("dob", date2), where.ge("dob", time2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.or(where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("middleName", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("lastName", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                            } else {
                                listQuery2 = SearchComponent.SearchTypes.LOCATION_USER.equalsIgnoreCase(str) ? where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dob"), where.le("dob", date2), where.ge("dob", time2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0])).query() : arrayList4;
                            }
                        }
                        date2 = date3;
                    }
                    date2 = time;
                } else {
                    date2 = time;
                    listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dob"), where.le("dob", date2), where.ge("dob", time2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0])).query();
                }
                Calendar calendar3 = Calendar.getInstance();
                calendar3.add(2, -3);
                Calendar calendar4 = Calendar.getInstance();
                calendar4.add(1, -3);
                ArrayList arrayList5 = new ArrayList();
                ArrayList arrayList6 = new ArrayList();
                ArrayList arrayList7 = new ArrayList();
                for (MemberBean memberBean : listQuery2) {
                    if (memberBean.getGender() != null && memberBean.getGender().equals("F") && memberBean.getMaritalStatus() != null && memberBean.getMaritalStatus().equals("629") && memberBean.getDob() != null && memberBean.getDob().after(time2) && memberBean.getDob().before(date2) && ((memberBean.getIsPregnantFlag() == null || !memberBean.getIsPregnantFlag().booleanValue()) && ((memberBean.getMenopauseArrived() == null || !memberBean.getMenopauseArrived().booleanValue()) && ((memberBean.getHysterectomyDone() == null || !memberBean.getHysterectomyDone().booleanValue()) && (memberBean.getLastMethodOfContraception() == null || ((!memberBean.getLastMethodOfContraception().equals(RchConstants.FEMALE_STERILIZATION) && !memberBean.getLastMethodOfContraception().equals(RchConstants.MALE_STERILIZATION)) || (memberBean.getFpInsertOperateDate() != null && memberBean.getFpInsertOperateDate().after(calendar3.getTime())))))))) {
                        try {
                            if (this.memberBeanDao.queryBuilder().where().eq("motherId", memberBean.getActualId()).countOf() > 2) {
                                arrayList5.add(new MemberDataBean(memberBean));
                            } else if (memberBean.getLastDeliveryDate() != null && memberBean.getLastDeliveryDate().after(calendar4.getTime())) {
                                arrayList6.add(new MemberDataBean(memberBean));
                            } else {
                                arrayList7.add(new MemberDataBean(memberBean));
                            }
                        } catch (SQLException e) {
                            e = e;
                            arrayList = arrayList2;
                            Log.e(TAG, null, e);
                            return arrayList;
                        }
                    }
                }
                arrayList = arrayList2;
                try {
                    arrayList.addAll(arrayList5);
                    arrayList.addAll(arrayList6);
                    arrayList.addAll(arrayList7);
                    return arrayList;
                } catch (SQLException e2) {
                    e = e2;
                    Log.e(TAG, null, e);
                    return arrayList;
                }
            } catch (SQLException e3) {
                e = e3;
            }
        } catch (SQLException e4) {
            e = e4;
            arrayList = arrayList2;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveNewlyWedCouplesByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
        ArrayList arrayList;
        Object obj;
        Date date;
        List<MemberBean> listQuery;
        Date date2;
        ArrayList arrayList2 = new ArrayList();
        try {
            ArrayList arrayList3 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("locationId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList3.add(it.next().getFamilyId());
            }
            if (arrayList3.isEmpty()) {
                return arrayList2;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -18);
            Date time = calendar.getTime();
            calendar.add(1, -12);
            Date time2 = calendar.getTime();
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
            try {
                if (charSequence != null) {
                    date = time;
                    listQuery = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", time2)), where.or(where.isNull("currentGravida"), where.eq("currentGravida", 0), new Where[0]), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                    obj = "629";
                } else {
                    obj = "629";
                    date = time;
                    listQuery = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", obj), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", time2)), where.or(where.isNull("currentGravida"), where.eq("currentGravida", 0), new Where[0]), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0])).query();
                }
                ArrayList arrayList4 = new ArrayList();
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getGender() == null || !memberBean.getGender().equals("F") || memberBean.getMaritalStatus() == null || !memberBean.getMaritalStatus().equals(obj) || memberBean.getDob() == null || !memberBean.getDob().after(time2)) {
                        date2 = date;
                    } else {
                        date2 = date;
                        if (memberBean.getDob().before(date2) && ((memberBean.getIsPregnantFlag() == null || !memberBean.getIsPregnantFlag().booleanValue()) && ((memberBean.getMenopauseArrived() == null || !memberBean.getMenopauseArrived().booleanValue()) && ((memberBean.getHysterectomyDone() == null || !memberBean.getHysterectomyDone().booleanValue()) && (memberBean.getCurrentGravida() == null || memberBean.getCurrentGravida().shortValue() == 0))))) {
                            arrayList4.add(new MemberDataBean(memberBean));
                        }
                    }
                    date = date2;
                }
                arrayList = arrayList2;
                try {
                    arrayList.addAll(arrayList4);
                    return arrayList;
                } catch (SQLException e) {
                    e = e;
                    Log.e(TAG, null, e);
                    return arrayList;
                }
            } catch (SQLException e2) {
                e = e2;
                arrayList = arrayList2;
            }
        } catch (SQLException e3) {
            e = e3;
            arrayList = arrayList2;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMentalHealthScreeningMembersByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
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
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNull(FieldNameConstants.MENTAL_HEALTH_SCREENING_DATE), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNull(FieldNameConstants.MENTAL_HEALTH_SCREENING_DATE)).query();
                }
                ArrayList arrayList3 = new ArrayList();
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getDob() != null) {
                        arrayList3.add(new MemberDataBean(memberBean));
                    }
                }
                arrayList.addAll(arrayList3);
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveElderlyCareMembersByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.add(1, -60);
        Date time = calendar.getTime();
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("locationId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.le("dob", time), where.isNull(FieldNameConstants.ELDERLY_CARE_SCREENING_DATE), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.le("dob", time), where.isNull(FieldNameConstants.ELDERLY_CARE_SCREENING_DATE)).query();
                }
                ArrayList arrayList3 = new ArrayList();
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getDob() != null) {
                        arrayList3.add(new MemberDataBean(memberBean));
                    }
                }
                arrayList.addAll(arrayList3);
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMembersForSideEffectsOfFilaria(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
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
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.FILARIA_SUSPECTED, Boolean.TRUE), where.isNull(FieldNameConstants.FILARIA_SE_SUBMITTED), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.FILARIA_SUSPECTED, Boolean.TRUE), where.isNull(FieldNameConstants.FILARIA_SE_SUBMITTED)).query();
                }
                ArrayList arrayList3 = new ArrayList();
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getDob() != null) {
                        arrayList3.add(new MemberDataBean(memberBean));
                    }
                }
                arrayList.addAll(arrayList3);
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveNewlyWedCouplesVhnd(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2, String str, Date date, boolean z) {
        ArrayList arrayList;
        SQLException sQLException;
        List<FamilyBean> listQuery;
        Date date2;
        Object obj;
        List<MemberBean> listQuery2;
        Object obj2;
        Date date3;
        String string;
        ArrayList arrayList2 = new ArrayList();
        try {
            ArrayList arrayList3 = new ArrayList();
            if (list != null) {
                try {
                    listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
                } catch (SQLException e) {
                    sQLException = e;
                    arrayList = arrayList2;
                    Log.e(TAG, null, sQLException);
                    return arrayList;
                }
            } else {
                listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            }
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList3.add(it.next().getFamilyId());
            }
            if (arrayList3.isEmpty()) {
                return arrayList2;
            }
            ArrayList arrayList4 = new ArrayList();
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -15);
            Date time = calendar.getTime();
            calendar.add(1, -34);
            Date time2 = calendar.getTime();
            Calendar calendar2 = Calendar.getInstance();
            UtilBean.clearTimeFromDate(calendar2);
            calendar2.add(1, -1);
            Date time3 = calendar2.getTime();
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
            if (str != null && charSequence != null) {
                try {
                    if (SearchComponent.SearchTypes.MOBILE_NUMBER.equalsIgnoreCase(str)) {
                        date2 = time2;
                        listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dateOfWedding"), where.ge("dateOfWedding", time3), new Where[0]), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", date2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR)).query();
                    } else {
                        date2 = time2;
                        if (SearchComponent.SearchTypes.MEMBER_ID.equalsIgnoreCase(str)) {
                            listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dateOfWedding"), where.ge("dateOfWedding", time3), new Where[0]), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", date2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR)).query();
                        } else if (SearchComponent.SearchTypes.FAMILY_ID.equalsIgnoreCase(str)) {
                            listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dateOfWedding"), where.ge("dateOfWedding", time3), new Where[0]), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", date2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR)).query();
                        } else if ("ABHA_NUMBER".equalsIgnoreCase(str)) {
                            String string2 = charSequence.toString();
                            if (charSequence.length() == 14) {
                                date3 = date2;
                                string = new StringBuilder(new StringBuilder(new StringBuilder(charSequence).insert(2, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(7, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(12, GlobalTypes.KEY_VALUE_SEPARATOR).toString();
                            } else {
                                date3 = date2;
                                string = string2;
                            }
                            date2 = date3;
                            listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dateOfWedding"), where.ge("dateOfWedding", time3), new Where[0]), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", date2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.or(where.eq("healthId", string), where.eq("healthIdNumber", string), new Where[0])).query();
                        } else if (SearchComponent.SearchTypes.DOB.equalsIgnoreCase(str)) {
                            listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dateOfWedding"), where.ge("dateOfWedding", time3), new Where[0]), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", date2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.eq("dob", date)).query();
                        } else if (SearchComponent.SearchTypes.NAME.equalsIgnoreCase(str)) {
                            listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dateOfWedding"), where.ge("dateOfWedding", time3), new Where[0]), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", date2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0]), where.or(where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("middleName", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("lastName", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                        } else {
                            listQuery2 = SearchComponent.SearchTypes.LOCATION_USER.equalsIgnoreCase(str) ? where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dateOfWedding"), where.ge("dateOfWedding", time3), new Where[0]), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", date2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0])).query() : arrayList4;
                        }
                    }
                    obj = "F";
                } catch (SQLException e2) {
                    e = e2;
                    sQLException = e;
                    arrayList = arrayList2;
                    Log.e(TAG, null, sQLException);
                    return arrayList;
                }
            } else {
                date2 = time2;
                try {
                    obj = "F";
                    listQuery2 = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq("maritalStatus", "629"), where.and(where.isNotNull("dateOfWedding"), where.ge("dateOfWedding", time3), new Where[0]), where.and(where.isNotNull("dob"), where.le("dob", time), where.ge("dob", date2)), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull("menopauseArrived"), where.eq("menopauseArrived", Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.HYSTERECTOMY_DONE), where.eq(FieldNameConstants.HYSTERECTOMY_DONE, Boolean.FALSE), new Where[0])).query();
                } catch (SQLException e3) {
                    e = e3;
                    arrayList = arrayList2;
                    sQLException = e;
                    Log.e(TAG, null, sQLException);
                    return arrayList;
                }
            }
            Calendar calendar3 = Calendar.getInstance();
            calendar3.add(2, -3);
            Calendar calendar4 = Calendar.getInstance();
            calendar4.add(1, -3);
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            ArrayList arrayList7 = new ArrayList();
            for (MemberBean memberBean : listQuery2) {
                if (memberBean.getGender() != null) {
                    obj2 = obj;
                    if (memberBean.getGender().equals(obj2) && memberBean.getMaritalStatus() != null && memberBean.getMaritalStatus().equals("629") && memberBean.getDob() != null && memberBean.getDob().after(date2) && memberBean.getDob().before(time) && ((memberBean.getIsPregnantFlag() == null || !memberBean.getIsPregnantFlag().booleanValue()) && ((memberBean.getMenopauseArrived() == null || !memberBean.getMenopauseArrived().booleanValue()) && ((memberBean.getHysterectomyDone() == null || !memberBean.getHysterectomyDone().booleanValue()) && (memberBean.getLastMethodOfContraception() == null || ((!memberBean.getLastMethodOfContraception().equals(RchConstants.FEMALE_STERILIZATION) && !memberBean.getLastMethodOfContraception().equals(RchConstants.MALE_STERILIZATION)) || (memberBean.getFpInsertOperateDate() != null && memberBean.getFpInsertOperateDate().after(calendar3.getTime())))))))) {
                        try {
                            if (this.memberBeanDao.queryBuilder().where().eq("motherId", memberBean.getActualId()).countOf() > 2) {
                                arrayList5.add(new MemberDataBean(memberBean));
                            } else if (memberBean.getLastDeliveryDate() != null && memberBean.getLastDeliveryDate().after(calendar4.getTime())) {
                                arrayList6.add(new MemberDataBean(memberBean));
                            } else {
                                arrayList7.add(new MemberDataBean(memberBean));
                            }
                        } catch (SQLException e4) {
                            e = e4;
                            sQLException = e;
                            arrayList = arrayList2;
                            Log.e(TAG, null, sQLException);
                            return arrayList;
                        }
                    }
                } else {
                    obj2 = obj;
                }
                obj = obj2;
            }
            arrayList = arrayList2;
            try {
                arrayList.addAll(arrayList5);
                arrayList.addAll(arrayList6);
                arrayList.addAll(arrayList7);
                return arrayList;
            } catch (SQLException e5) {
                e = e5;
                sQLException = e;
                Log.e(TAG, null, sQLException);
                return arrayList;
            }
        } catch (SQLException e6) {
            e = e6;
            arrayList = arrayList2;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea(Integer num, CharSequence charSequence, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("areaId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query().iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("edd", true).where();
                Calendar calendar = Calendar.getInstance();
                calendar.add(2, -6);
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.le("lastDeliveryDate", calendar.getTime()), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.le("lastDeliveryDate", calendar.getTime())).query();
                }
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getGender() != null && memberBean.getGender().equals("F") && Boolean.TRUE.equals(memberBean.getIsPregnantFlag())) {
                        if (memberBean.getEdd() != null) {
                            arrayList3.add(new MemberDataBean(memberBean));
                        } else {
                            arrayList4.add(new MemberDataBean(memberBean));
                        }
                    }
                }
                arrayList.addAll(arrayList3);
                arrayList.addAll(arrayList4);
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrievePregnantWomenByAshaArea(List<Integer> list, boolean z, List<Integer> list2, CharSequence charSequence, long j, long j2) {
        ArrayList arrayList;
        List<MemberBean> listQuery;
        ArrayList arrayList2 = new ArrayList();
        try {
            ArrayList arrayList3 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("locationId", list2).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList3.add(it.next().getFamilyId());
            }
            if (!arrayList3.isEmpty()) {
                Calendar calendar = Calendar.getInstance();
                calendar.add(1, -15);
                Date time = calendar.getTime();
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("edd", true).where();
                try {
                    if (!z) {
                        arrayList = arrayList2;
                        if (charSequence != null) {
                            listQuery = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.eq("gender", "F"), where.and(where.isNotNull("dob"), where.le("dob", time), new Where[0]), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                        } else {
                            listQuery = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.and(where.isNotNull("dob"), where.le("dob", time), new Where[0])).query();
                        }
                    } else if (charSequence != null) {
                        try {
                            Where<MemberBean, Integer> whereIn = where.in("familyId", arrayList3);
                            arrayList = arrayList2;
                            listQuery = where.and(whereIn, where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.eq("gender", "F"), where.eq(FieldNameConstants.IS_HIGH_RISK_CASE, Boolean.TRUE), where.and(where.isNotNull("dob"), where.le("dob", time), new Where[0]), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                        } catch (SQLException e) {
                            e = e;
                            Log.e(TAG, null, e);
                            return arrayList2;
                        }
                    } else {
                        arrayList = arrayList2;
                        listQuery = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.IS_HIGH_RISK_CASE, Boolean.TRUE), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.eq("gender", "F"), where.and(where.isNotNull("dob"), where.le("dob", time), new Where[0])).query();
                    }
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    for (MemberBean memberBean : listQuery) {
                        if (memberBean.getEdd() != null) {
                            arrayList4.add(new MemberDataBean(memberBean));
                        } else {
                            arrayList5.add(new MemberDataBean(memberBean));
                        }
                    }
                    arrayList2 = arrayList;
                    arrayList2.addAll(arrayList4);
                    arrayList2.addAll(arrayList5);
                } catch (SQLException e2) {
                    e = e2;
                    arrayList2 = arrayList;
                }
            }
        } catch (SQLException e3) {
            e = e3;
        }
        return arrayList2;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveVeryHighRiskPregnantWomenByAshaArea(List<Integer> list, List<Integer> list2, CharSequence charSequence, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("locationId", list2).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            Calendar calendar = Calendar.getInstance();
            calendar.set(2024, 3, 1, 0, 0, 0);
            calendar.set(14, 0);
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("edd", true).where();
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.or(where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.ge("lastDeliveryDate", calendar.getTime()), new Where[0]), where.eq(FieldNameConstants.IS_VERY_HIGH_RISK_CASE, Boolean.TRUE), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.eq(FieldNameConstants.IS_VERY_HIGH_RISK_CASE, Boolean.TRUE), where.or(where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.ge("lastDeliveryDate", calendar.getTime()), new Where[0])).query();
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

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveWPDWomenByAshaArea(List<Integer> list, List<Integer> list2, CharSequence charSequence, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("locationId", list2).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("edd", true).where();
                Calendar calendar = Calendar.getInstance();
                calendar.add(5, 15);
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.le("edd", calendar.getTime()), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.le("edd", calendar.getTime())).query();
                }
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getGender() != null && memberBean.getGender().equals("F") && Boolean.TRUE.equals(memberBean.getIsPregnantFlag())) {
                        if (memberBean.getEdd() != null) {
                            arrayList3.add(new MemberDataBean(memberBean));
                        } else {
                            arrayList4.add(new MemberDataBean(memberBean));
                        }
                    }
                }
                arrayList.addAll(arrayList3);
                arrayList.addAll(arrayList4);
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrievePncMothersByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
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
                Calendar calendar = Calendar.getInstance();
                calendar.add(5, -60);
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("lastDeliveryDate", calendar.getTime()), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("lastDeliveryDate", calendar.getTime())).query();
                }
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getLastDeliveryDate() != null && memberBean.getLastDeliveryDate().after(calendar.getTime())) {
                        arrayList.add(new MemberDataBean(memberBean));
                    }
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrievePncMothersByAshaAreaVhnd(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2, String str, Date date, boolean z) {
        ArrayList arrayList;
        String str2;
        String str3;
        ArrayList arrayList2;
        List<FamilyBean> listQuery;
        List<MemberBean> listQuery2;
        String str4;
        List<FamilyBean> listQuery3;
        List<MemberBean> listQuery4;
        ArrayList arrayList3 = new ArrayList();
        String str5 = TAG;
        if (!z) {
            try {
                ArrayList arrayList4 = new ArrayList();
                try {
                    if (list == null || list.isEmpty()) {
                        str4 = TAG;
                        if (num != null) {
                            listQuery3 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("locationId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
                        } else {
                            listQuery3 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
                        }
                    } else {
                        QueryBuilder<FamilyBean, Integer> queryBuilder = this.familyBeanDao.queryBuilder();
                        str4 = TAG;
                        listQuery3 = queryBuilder.selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
                    }
                    Iterator<FamilyBean> it = listQuery3.iterator();
                    while (it.hasNext()) {
                        arrayList4.add(it.next().getFamilyId());
                    }
                    if (!arrayList4.isEmpty()) {
                        Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
                        Calendar calendar = Calendar.getInstance();
                        calendar.add(5, -60);
                        if (charSequence != null) {
                            listQuery4 = where.and(where.in("familyId", arrayList4), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("lastDeliveryDate", calendar.getTime()), where.isNotNull("curPregRegDetId"), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                        } else {
                            listQuery4 = where.and(where.in("familyId", arrayList4), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("lastDeliveryDate", calendar.getTime()), where.isNotNull("curPregRegDetId")).query();
                        }
                        for (MemberBean memberBean : listQuery4) {
                            if (memberBean.getLastDeliveryDate() != null && memberBean.getLastDeliveryDate().after(calendar.getTime())) {
                                arrayList3.add(new MemberDataBean(memberBean));
                            }
                        }
                    }
                } catch (SQLException e) {
                    e = e;
                    str5 = str4;
                    Log.e(str5, null, e);
                    return arrayList3;
                }
            } catch (SQLException e2) {
                e = e2;
            }
            return arrayList3;
        }
        try {
            ArrayList arrayList5 = new ArrayList();
            if (list != null) {
                str2 = TAG;
                try {
                    arrayList2 = arrayList3;
                } catch (SQLException e3) {
                    e = e3;
                    arrayList2 = arrayList3;
                }
                try {
                    listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
                } catch (SQLException e4) {
                    e = e4;
                    str3 = str2;
                    arrayList = arrayList2;
                    Log.e(str3, null, e);
                    return arrayList;
                }
            } else {
                arrayList2 = arrayList3;
                str2 = TAG;
                try {
                    listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
                } catch (SQLException e5) {
                    e = e5;
                    arrayList = arrayList2;
                    str3 = str2;
                    Log.e(str3, null, e);
                    return arrayList;
                }
            }
            Iterator<FamilyBean> it2 = listQuery.iterator();
            while (it2.hasNext()) {
                arrayList5.add(it2.next().getFamilyId());
            }
            if (!arrayList5.isEmpty()) {
                ArrayList arrayList6 = new ArrayList();
                Where<MemberBean, Integer> where2 = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
                Calendar calendar2 = Calendar.getInstance();
                calendar2.add(2, -6);
                if (str != null && charSequence != null) {
                    if (SearchComponent.SearchTypes.MOBILE_NUMBER.equalsIgnoreCase(str)) {
                        listQuery2 = where2.and(where2.in("familyId", arrayList5), where2.ge("lastDeliveryDate", calendar2.getTime()), where2.isNotNull("curPregRegDetId"), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR)).query();
                    } else if (SearchComponent.SearchTypes.MEMBER_ID.equalsIgnoreCase(str)) {
                        listQuery2 = where2.and(where2.in("familyId", arrayList5), where2.ge("lastDeliveryDate", calendar2.getTime()), where2.isNotNull("curPregRegDetId"), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR)).query();
                    } else if (SearchComponent.SearchTypes.FAMILY_ID.equalsIgnoreCase(str)) {
                        listQuery2 = where2.and(where2.in("familyId", arrayList5), where2.ge("lastDeliveryDate", calendar2.getTime()), where2.isNotNull("curPregRegDetId"), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR)).query();
                    } else if ("ABHA_NUMBER".equalsIgnoreCase(str)) {
                        String string = charSequence.toString();
                        if (charSequence.length() == 14) {
                            string = new StringBuilder(new StringBuilder(new StringBuilder(charSequence).insert(2, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(7, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(12, GlobalTypes.KEY_VALUE_SEPARATOR).toString();
                        }
                        listQuery2 = where2.and(where2.in("familyId", arrayList5), where2.ge("lastDeliveryDate", calendar2.getTime()), where2.isNotNull("curPregRegDetId"), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.or(where2.eq("healthId", string), where2.eq("healthIdNumber", string), new Where[0])).query();
                    } else if (SearchComponent.SearchTypes.DOB.equalsIgnoreCase(str)) {
                        listQuery2 = where2.and(where2.in("familyId", arrayList5), where2.ge("lastDeliveryDate", calendar2.getTime()), where2.isNotNull("curPregRegDetId"), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.eq("dob", date)).query();
                    } else if (SearchComponent.SearchTypes.NAME.equalsIgnoreCase(str)) {
                        listQuery2 = where2.and(where2.in("familyId", arrayList5), where2.ge("lastDeliveryDate", calendar2.getTime()), where2.isNotNull("curPregRegDetId"), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.or(where2.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR), where2.like("middleName", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR), where2.like("lastName", GlobalTypes.BENEFICIARY_SEPARATOR + charSequence.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                    } else {
                        listQuery2 = SearchComponent.SearchTypes.LOCATION_USER.equalsIgnoreCase(str) ? where2.and(where2.in("familyId", arrayList5), where2.ge("lastDeliveryDate", calendar2.getTime()), where2.isNotNull("curPregRegDetId"), where2.in("familyId", arrayList5)).query() : arrayList6;
                    }
                } else {
                    listQuery2 = where2.and(where2.in("familyId", arrayList5), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.ge("lastDeliveryDate", calendar2.getTime()), where2.isNotNull("curPregRegDetId")).query();
                }
                for (MemberBean memberBean2 : listQuery2) {
                    if (memberBean2.getLastDeliveryDate() == null || !memberBean2.getLastDeliveryDate().after(calendar2.getTime())) {
                        arrayList = arrayList2;
                    } else {
                        MemberDataBean memberDataBean = new MemberDataBean(memberBean2);
                        arrayList = arrayList2;
                        try {
                            arrayList.add(memberDataBean);
                        } catch (SQLException e6) {
                            e = e6;
                            str3 = str2;
                            Log.e(str3, null, e);
                            return arrayList;
                        }
                    }
                    arrayList2 = arrayList;
                }
            }
            return arrayList2;
        } catch (SQLException e7) {
            e = e7;
            arrayList = arrayList3;
            str2 = TAG;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveChildsBelow5YearsByAshaArea(List<Integer> list, Boolean bool, List<Integer> list2, CharSequence charSequence, LinkedHashMap<String, String> linkedHashMap, String str, Date date, long j, long j2) {
        ArrayList arrayList;
        ArrayList arrayList2;
        List<MemberBean> listQuery;
        ArrayList arrayList3 = new ArrayList();
        try {
            ArrayList arrayList4 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("locationId", list2).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList4.add(it.next().getFamilyId());
            }
            if (arrayList4.isEmpty()) {
                return arrayList3;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -5);
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("dob", false).where();
            try {
                if (bool == null || !bool.booleanValue()) {
                    arrayList2 = arrayList3;
                    if (charSequence != null) {
                        try {
                            where.and(where.in("familyId", arrayList4), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("dob", calendar.getTime()), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR)));
                            if (linkedHashMap != null && Objects.equals(linkedHashMap.get("isQrCodeScan"), "true")) {
                                where.and().or(where.like("healthId", GlobalTypes.BENEFICIARY_SEPARATOR + linkedHashMap.get("healthId") + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("healthIdNumber", GlobalTypes.BENEFICIARY_SEPARATOR + linkedHashMap.get("healthIdNumber") + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]);
                            } else if (str != null) {
                                addSearchTypeConditionAccordingly(where, str, charSequence.toString().trim(), null);
                            }
                        } catch (SQLException e) {
                            e = e;
                            arrayList = arrayList2;
                            Log.e(TAG, null, e);
                            return arrayList;
                        }
                    } else {
                        where.and(where.in("familyId", arrayList4), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("dob", calendar.getTime()));
                        if (linkedHashMap != null && Objects.equals(linkedHashMap.get("isQrCodeScan"), "true")) {
                            where.and().or(where.like("healthId", GlobalTypes.BENEFICIARY_SEPARATOR + linkedHashMap.get("healthId") + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("healthIdNumber", GlobalTypes.BENEFICIARY_SEPARATOR + linkedHashMap.get("healthIdNumber") + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]);
                        } else if (str != null && date != null) {
                            addSearchTypeConditionAccordingly(where, str, null, date);
                        }
                    }
                    listQuery = where.query();
                } else {
                    if (charSequence != null) {
                        listQuery = where.and(where.in("familyId", arrayList4), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("dob", calendar.getTime()), where.eq(FieldNameConstants.IS_HIGH_RISK_CASE, Boolean.TRUE), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                    } else {
                        listQuery = where.and(where.in("familyId", arrayList4), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("dob", calendar.getTime()), where.eq(FieldNameConstants.IS_HIGH_RISK_CASE, Boolean.TRUE)).query();
                    }
                    arrayList2 = arrayList3;
                }
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getDob() == null || !memberBean.getDob().after(calendar.getTime())) {
                        arrayList = arrayList2;
                    } else {
                        MemberDataBean memberDataBean = new MemberDataBean(memberBean);
                        arrayList = arrayList2;
                        try {
                            arrayList.add(memberDataBean);
                        } catch (SQLException e2) {
                            e = e2;
                            Log.e(TAG, null, e);
                            return arrayList;
                        }
                    }
                    arrayList2 = arrayList;
                }
                return arrayList2;
            } catch (SQLException e3) {
                e = e3;
            }
        } catch (SQLException e4) {
            e = e4;
            arrayList = arrayList3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x01a8  */
    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> retrieveChildsBelow7YearsByAshaArea(java.util.List<java.lang.Integer> r20, java.lang.Boolean r21, java.util.List<java.lang.Integer> r22, java.lang.CharSequence r23, java.util.LinkedHashMap<java.lang.String, java.lang.String> r24, java.lang.String r25, java.util.Date r26, long r27, long r29) {
        /*
            Method dump skipped, instructions count: 920
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl.retrieveChildsBelow7YearsByAshaArea(java.util.List, java.lang.Boolean, java.util.List, java.lang.CharSequence, java.util.LinkedHashMap, java.lang.String, java.util.Date, long, long):java.util.List");
    }

    private void addSearchTypeConditionAccordingly(Where<MemberBean, Integer> where, String str, String str2, Date date) throws SQLException {
        str.hashCode();
        switch (str) {
            case "MEMBER_ID":
                where.and().like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str2 + GlobalTypes.BENEFICIARY_SEPARATOR);
                break;
            case "DOB":
                where.and().eq("dob", date);
                break;
            case "NAME":
                where.and().or(where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str2.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("middleName", GlobalTypes.BENEFICIARY_SEPARATOR + str2.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("lastName", GlobalTypes.BENEFICIARY_SEPARATOR + str2.toString().trim() + GlobalTypes.BENEFICIARY_SEPARATOR));
                break;
            case "ABHA_NUMBER":
                if (str2.length() == 14) {
                    str2 = new StringBuilder(new StringBuilder(new StringBuilder(str2).insert(2, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(7, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(12, GlobalTypes.KEY_VALUE_SEPARATOR).toString();
                }
                where.and().or(where.eq("healthId", str2), where.eq("healthIdNumber", str2), new Where[0]);
                break;
            case "FAMILY_ID":
                where.and().like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str2 + GlobalTypes.BENEFICIARY_SEPARATOR);
                break;
            case "MOBILE_NUMBER":
                ArrayList arrayList = new ArrayList();
                Iterator<MemberBean> it = this.memberBeanDao.queryBuilder().selectColumns("familyId").where().like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str2 + GlobalTypes.BENEFICIARY_SEPARATOR).query().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getFamilyId());
                }
                where.and().in("familyId", arrayList);
                break;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveChildsBelow6YearsByAshaArea(Integer num, CharSequence charSequence, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("areaId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query().iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Calendar calendar = Calendar.getInstance();
                calendar.add(1, -6);
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("dob", false).where();
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("dob", calendar.getTime()), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("dob", calendar.getTime())).query();
                }
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getDob() != null && memberBean.getDob().after(calendar.getTime())) {
                        arrayList.add(new MemberDataBean(memberBean));
                    }
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveChildsBetween6MonthsTo3YearsByAshaArea(Integer num, CharSequence charSequence, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("areaId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query().iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Calendar calendar = Calendar.getInstance();
                calendar.add(2, -6);
                Date time = calendar.getTime();
                calendar.add(2, 6);
                calendar.add(1, -3);
                Date time2 = calendar.getTime();
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("dob", false).where();
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.between("dob", time2, time), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.between("dob", time2, time)).query();
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

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveAdolescentGirlsByAshaArea(Integer num, CharSequence charSequence, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("areaId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query().iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Calendar calendar = Calendar.getInstance();
                calendar.add(1, -14);
                Calendar calendar2 = Calendar.getInstance();
                calendar2.add(1, -10);
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("dob", false).where();
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.between("dob", calendar.getTime(), calendar2.getTime()), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("middleName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.between("dob", calendar.getTime(), calendar2.getTime())).query();
                }
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getDob() != null && memberBean.getDob().after(calendar2.getTime()) && memberBean.getDob().before(calendar.getTime())) {
                        arrayList.add(new MemberDataBean(memberBean));
                    }
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMembersByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
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

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveHighRiskPregnantWomanByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
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
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.eq(FieldNameConstants.IS_HIGH_RISK_CASE, Boolean.TRUE), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.eq(FieldNameConstants.IS_HIGH_RISK_CASE, Boolean.TRUE)).query();
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

    /* JADX WARN: Removed duplicated region for block: B:7:0x005a A[Catch: SQLException -> 0x00b8, TryCatch #0 {SQLException -> 0x00b8, blocks: (B:4:0x000e, B:6:0x0014, B:8:0x009f, B:9:0x00a3, B:11:0x00a9, B:7:0x005a), top: B:16:0x000e }] */
    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.argusoft.sewa.android.app.databean.FamilyDataBean> retrieveFamilyDataBeansByAshaArea(java.util.List<java.lang.Integer> r7, java.lang.Integer r8, java.lang.CharSequence r9, long r10, long r12) {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r1 = "familyId"
            java.lang.String r2 = "state"
            r3 = 0
            java.lang.String r4 = "%"
            if (r7 == 0) goto L5a
            boolean r5 = r7.isEmpty()     // Catch: java.sql.SQLException -> Lb8
            if (r5 != 0) goto L5a
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.FamilyBean, java.lang.Integer> r8 = r6.familyBeanDao     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.QueryBuilder r8 = r8.queryBuilder()     // Catch: java.sql.SQLException -> Lb8
            java.lang.Long r10 = java.lang.Long.valueOf(r10)     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.QueryBuilder r8 = r8.limit(r10)     // Catch: java.sql.SQLException -> Lb8
            java.lang.Long r10 = java.lang.Long.valueOf(r12)     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.QueryBuilder r8 = r8.offset(r10)     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.Where r8 = r8.where()     // Catch: java.sql.SQLException -> Lb8
            java.lang.String r10 = "areaId"
            com.j256.ormlite.stmt.Where r7 = r8.in(r10, r7)     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.Where r7 = r7.and()     // Catch: java.sql.SQLException -> Lb8
            java.util.List<java.lang.String> r8 = com.argusoft.sewa.android.app.constants.FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.Where r7 = r7.in(r2, r8)     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.Where r7 = r7.and()     // Catch: java.sql.SQLException -> Lb8
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.sql.SQLException -> Lb8
            r8.<init>(r4)     // Catch: java.sql.SQLException -> Lb8
            r8.append(r9)     // Catch: java.sql.SQLException -> Lb8
            r8.append(r4)     // Catch: java.sql.SQLException -> Lb8
            java.lang.String r8 = r8.toString()     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.Where r7 = r7.like(r1, r8)     // Catch: java.sql.SQLException -> Lb8
            java.util.List r7 = r7.query()     // Catch: java.sql.SQLException -> Lb8
            goto L9f
        L5a:
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.FamilyBean, java.lang.Integer> r7 = r6.familyBeanDao     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.QueryBuilder r7 = r7.queryBuilder()     // Catch: java.sql.SQLException -> Lb8
            java.lang.Long r10 = java.lang.Long.valueOf(r10)     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.QueryBuilder r7 = r7.limit(r10)     // Catch: java.sql.SQLException -> Lb8
            java.lang.Long r10 = java.lang.Long.valueOf(r12)     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.QueryBuilder r7 = r7.offset(r10)     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.Where r7 = r7.where()     // Catch: java.sql.SQLException -> Lb8
            java.lang.String r10 = "locationId"
            com.j256.ormlite.stmt.Where r7 = r7.eq(r10, r8)     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.Where r7 = r7.and()     // Catch: java.sql.SQLException -> Lb8
            java.util.List<java.lang.String> r8 = com.argusoft.sewa.android.app.constants.FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.Where r7 = r7.in(r2, r8)     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.Where r7 = r7.and()     // Catch: java.sql.SQLException -> Lb8
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.sql.SQLException -> Lb8
            r8.<init>(r4)     // Catch: java.sql.SQLException -> Lb8
            r8.append(r9)     // Catch: java.sql.SQLException -> Lb8
            r8.append(r4)     // Catch: java.sql.SQLException -> Lb8
            java.lang.String r8 = r8.toString()     // Catch: java.sql.SQLException -> Lb8
            com.j256.ormlite.stmt.Where r7 = r7.like(r1, r8)     // Catch: java.sql.SQLException -> Lb8
            java.util.List r7 = r7.query()     // Catch: java.sql.SQLException -> Lb8
        L9f:
            java.util.Iterator r7 = r7.iterator()     // Catch: java.sql.SQLException -> Lb8
        La3:
            boolean r8 = r7.hasNext()     // Catch: java.sql.SQLException -> Lb8
            if (r8 == 0) goto Lbe
            java.lang.Object r8 = r7.next()     // Catch: java.sql.SQLException -> Lb8
            com.argusoft.sewa.android.app.model.FamilyBean r8 = (com.argusoft.sewa.android.app.model.FamilyBean) r8     // Catch: java.sql.SQLException -> Lb8
            com.argusoft.sewa.android.app.databean.FamilyDataBean r9 = new com.argusoft.sewa.android.app.databean.FamilyDataBean     // Catch: java.sql.SQLException -> Lb8
            r9.<init>(r8, r3)     // Catch: java.sql.SQLException -> Lb8
            r0.add(r9)     // Catch: java.sql.SQLException -> Lb8
            goto La3
        Lb8:
            r7 = move-exception
            java.lang.String r8 = "SewaFhsServiceImpl"
            android.util.Log.e(r8, r3, r7)
        Lbe:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl.retrieveFamilyDataBeansByAshaArea(java.util.List, java.lang.Integer, java.lang.CharSequence, long, long):java.util.List");
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveFamilyDataBeansForVBDSByAshaArea(Integer num, String str) {
        ArrayList arrayList = new ArrayList();
        if (num == null) {
            return arrayList;
        }
        if (str != null) {
            try {
            } catch (SQLException e) {
                Log.e(TAG, null, e);
            }
            if (!str.trim().isEmpty()) {
                String strTrim = str.trim();
                ArrayList arrayList2 = new ArrayList();
                Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("areaId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query().iterator();
                while (it.hasNext()) {
                    arrayList2.add(it.next().getFamilyId());
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator<FamilyBean> it2 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + strTrim + GlobalTypes.BENEFICIARY_SEPARATOR).and().eq("areaId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query().iterator();
                while (it2.hasNext()) {
                    linkedHashSet.add(it2.next().getFamilyId());
                }
                if (!arrayList2.isEmpty()) {
                    Iterator<MemberBean> it3 = this.memberBeanDao.queryBuilder().selectColumns("familyId").where().like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + strTrim + GlobalTypes.BENEFICIARY_SEPARATOR).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).and().in("familyId", arrayList2).query().iterator();
                    while (it3.hasNext()) {
                        linkedHashSet.add(it3.next().getFamilyId());
                    }
                    Iterator<MemberBean> it4 = this.memberBeanDao.queryBuilder().selectColumns("familyId").where().like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + strTrim + GlobalTypes.BENEFICIARY_SEPARATOR).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).and().in("familyId", arrayList2).query().iterator();
                    while (it4.hasNext()) {
                        linkedHashSet.add(it4.next().getFamilyId());
                    }
                }
                if (!linkedHashSet.isEmpty()) {
                    Iterator<FamilyBean> it5 = this.familyBeanDao.queryBuilder().where().in("familyId", new ArrayList(linkedHashSet)).and().eq("areaId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query().iterator();
                    while (it5.hasNext()) {
                        arrayList.add(new FamilyDataBean(it5.next(), null));
                    }
                }
                return arrayList;
            }
        }
        Iterator<FamilyBean> it6 = this.familyBeanDao.queryBuilder().where().eq("areaId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query().iterator();
        while (it6.hasNext()) {
            arrayList.add(new FamilyDataBean(it6.next(), null));
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public MemberBean retrieveMemberBeanByActualId(Long l) {
        try {
            return this.memberBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public MemberBean retrieveMemberBeanByHealthId(String str) {
        try {
            return this.memberBeanDao.queryBuilder().where().eq("uniqueHealthId", str).queryForFirst();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public FamilyBean retrieveFamilyBeanByActualId(Long l) {
        try {
            return this.familyBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markMemberAsMigrated(Long l) {
        try {
            MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
            memberBeanQueryForFirst.setState(FhsConstants.FHS_MEMBER_STATE_MIGRATED);
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markMemberAsDead(Long l) {
        MemberBean memberBeanQueryForFirst;
        try {
            if (SharedStructureData.isOnlineSearch) {
                memberBeanQueryForFirst = SharedStructureData.onLineSelectedMemberBean;
            } else {
                memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
            }
            memberBeanQueryForFirst.setState(FhsConstants.FHS_MEMBER_STATE_DEAD);
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void updateMemberPregnantFlag(Long l, boolean z) {
        MemberBean memberBeanQueryForFirst;
        try {
            if (SharedStructureData.isOnlineSearch) {
                memberBeanQueryForFirst = SharedStructureData.onLineSelectedMemberBean;
            } else {
                memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
            }
            memberBeanQueryForFirst.setIsPregnantFlag(Boolean.valueOf(z));
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void updateMemberLmpDate(Long l, Date date) {
        try {
            MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
            memberBeanQueryForFirst.setLmpDate(date);
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void updateFamily(FamilyBean familyBean) {
        try {
            this.familyBeanDao.update((Dao<FamilyBean, Integer>) familyBean);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void deleteNotificationByMemberIdAndNotificationType(Long l, List<String> list) {
        try {
            DeleteBuilder<NotificationBean, Integer> deleteBuilder = this.notificationBeanDao.deleteBuilder();
            if (list == null || list.isEmpty()) {
                deleteBuilder.where().eq("memberId", l);
            } else {
                deleteBuilder.where().eq("memberId", l).and().in(FieldNameConstants.NOTIFICATION_CODE, list);
            }
            deleteBuilder.delete();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void updateVaccinationGivenForChild(Long l, String str) {
        MemberBean memberBeanQueryForFirst;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
            if (SharedStructureData.isOnlineSearch) {
                memberBeanQueryForFirst = SharedStructureData.onLineSelectedMemberBean;
            } else {
                memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
            }
            StringBuilder sb = new StringBuilder();
            String immunisationGiven = memberBeanQueryForFirst.getImmunisationGiven();
            String[] strArrSplit = str.split(GlobalTypes.KEY_VALUE_SEPARATOR);
            if (immunisationGiven != null && !immunisationGiven.isEmpty()) {
                sb.append(immunisationGiven);
            }
            for (String str2 : strArrSplit) {
                if (str2 != null && str2.contains("/")) {
                    String[] strArrSplit2 = str2.split("/");
                    if (strArrSplit2[1].equals("T")) {
                        if (sb.length() > 0) {
                            sb.append(GlobalTypes.COMMA);
                        }
                        sb.append(strArrSplit2[0].trim());
                        sb.append(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                        sb.append(simpleDateFormat.format(new Date(Long.parseLong(strArrSplit2[2]))));
                    }
                }
            }
            memberBeanQueryForFirst.setImmunisationGiven(sb.toString());
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void updateVaccinationGivenForChild(String str, String str2) {
        MemberBean memberBeanQueryForFirst;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
            if (SharedStructureData.isOnlineSearch) {
                memberBeanQueryForFirst = SharedStructureData.onLineSelectedMemberBean;
            } else {
                memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("uniqueHealthId", str).queryForFirst();
            }
            StringBuilder sb = new StringBuilder();
            String immunisationGiven = memberBeanQueryForFirst.getImmunisationGiven();
            String[] strArrSplit = str2.split(GlobalTypes.KEY_VALUE_SEPARATOR);
            if (immunisationGiven != null && !immunisationGiven.isEmpty()) {
                sb.append(immunisationGiven);
            }
            for (String str3 : strArrSplit) {
                if (str3 != null && str3.contains("/")) {
                    String[] strArrSplit2 = str3.split("/");
                    if (strArrSplit2[1].equals("T")) {
                        if (sb.length() > 0) {
                            sb.append(GlobalTypes.COMMA);
                        }
                        sb.append(strArrSplit2[0].trim());
                        sb.append(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                        sb.append(simpleDateFormat.format(new Date(Long.parseLong(strArrSplit2[2]))));
                    }
                }
            }
            memberBeanQueryForFirst.setImmunisationGiven(sb.toString());
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markNotificationAsRead(NotificationMobDataBean notificationMobDataBean) {
        try {
            ReadNotificationsBean readNotificationsBean = new ReadNotificationsBean();
            readNotificationsBean.setNotificationId(notificationMobDataBean.getId());
            this.readNotificationsBeanDao.create((Dao<ReadNotificationsBean, Integer>) readNotificationsBean);
            this.sewaService.deleteNotificationByNotificationId(notificationMobDataBean.getId());
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public String getChildrenCount(Long l, boolean z, boolean z2, boolean z3) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(FhsConstants.FHS_ARCHIVED_CRITERIA_MEMBER_STATES);
        arrayList.addAll(FhsConstants.FHS_DEAD_CRITERIA_MEMBER_STATES);
        try {
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        if (z) {
            return String.valueOf(this.memberBeanDao.queryBuilder().where().eq("motherId", l).and().ne("actualId", l).and().notIn("state", arrayList).countOf());
        }
        if (z2) {
            return String.valueOf(this.memberBeanDao.queryBuilder().where().eq("motherId", l).and().ne("actualId", l).and().eq("gender", "M").and().notIn("state", arrayList).countOf());
        }
        if (z3) {
            return String.valueOf(this.memberBeanDao.queryBuilder().where().eq("motherId", l).and().ne("actualId", l).and().eq("gender", "F").and().notIn("state", arrayList).countOf());
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public MemberDataBean getLatestChildByMotherId(Long l) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(FhsConstants.FHS_ARCHIVED_CRITERIA_MEMBER_STATES);
        arrayList.addAll(FhsConstants.FHS_DEAD_CRITERIA_MEMBER_STATES);
        try {
            MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().orderBy("dob", false).where().eq("motherId", l).and().ne("actualId", l).and().notIn("state", arrayList).queryForFirst();
            if (memberBeanQueryForFirst != null) {
                return new MemberDataBean(memberBeanQueryForFirst);
            }
            return null;
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public String getValueOfListValuesById(String str) {
        if (str != null) {
            try {
                ListValueBean listValueBeanQueryForFirst = this.listValueBeanDao.queryBuilder().where().eq("idOfValue", str).queryForFirst();
                return listValueBeanQueryForFirst != null ? listValueBeanQueryForFirst.getValue() : str;
            } catch (SQLException e) {
                Log.e(TAG, null, e);
            }
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<String> getValueOfListValuesByField(String str) {
        if (str != null) {
            try {
                List<ListValueBean> listQuery = this.listValueBeanDao.queryBuilder().where().eq("field", str).query();
                if (listQuery != null && !listQuery.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<ListValueBean> it = listQuery.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().getValue());
                    }
                    return arrayList;
                }
            } catch (SQLException e) {
                Log.e(TAG, null, e);
            }
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public Map<String, String> retrieveAshaInfoByAreaId(String str) {
        String fhwDetailString;
        if (str != null) {
            try {
                LocationMasterBean locationMasterBeanQueryForFirst = this.locationMasterBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, str).queryForFirst();
                if (locationMasterBeanQueryForFirst != null && (fhwDetailString = locationMasterBeanQueryForFirst.getFhwDetailString()) != null) {
                    return (Map) ((List) new Gson().fromJson(fhwDetailString, new TypeToken<List<Map<String, String>>>() { // from class: com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl.1
                    }.getType())).get(0);
                }
            } catch (SQLException e) {
                Log.e(TAG, null, e);
            }
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMemberListForRchRegister(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2) {
        ArrayList arrayList;
        ArrayList arrayList2;
        List<MemberBean> listQuery;
        ArrayList arrayList3 = new ArrayList();
        try {
            ArrayList arrayList4 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("locationId", num).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList4.add(it.next().getFamilyId());
            }
            if (arrayList4.isEmpty()) {
                return arrayList3;
            }
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -7);
            Date time = calendar.getTime();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, -15);
            Date time2 = calendar2.getTime();
            Calendar calendar3 = Calendar.getInstance();
            calendar3.add(1, -49);
            Date time3 = calendar3.getTime();
            try {
                if (charSequence != null) {
                    try {
                        Where<MemberBean, Integer> whereIn = where.in("familyId", arrayList4);
                        Where<MemberBean, Integer> whereNotIn = where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
                        arrayList2 = arrayList3;
                        listQuery = where.and(whereIn, whereNotIn, where.or(where.ge("dob", time), where.and(where.le("dob", time2), where.ge("dob", time3), where.eq("gender", "F"), where.eq("maritalStatus", "629")), new Where[0]), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                    } catch (SQLException e) {
                        e = e;
                        arrayList2 = arrayList3;
                        arrayList = arrayList2;
                        Log.e(TAG, null, e);
                        return arrayList;
                    }
                } else {
                    arrayList2 = arrayList3;
                    listQuery = where.and(where.in("familyId", arrayList4), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.or(where.ge("dob", time), where.and(where.le("dob", time2), where.ge("dob", time3), where.eq("gender", "F"), where.eq("maritalStatus", "629")), new Where[0])).query();
                }
                Iterator<MemberBean> it2 = listQuery.iterator();
                while (it2.hasNext()) {
                    arrayList = arrayList2;
                    try {
                        arrayList.add(new MemberDataBean(it2.next()));
                        arrayList2 = arrayList;
                    } catch (SQLException e2) {
                        e = e2;
                        Log.e(TAG, null, e);
                        return arrayList;
                    }
                }
                return arrayList2;
            } catch (SQLException e3) {
                e = e3;
            }
        } catch (SQLException e4) {
            e = e4;
            arrayList = arrayList3;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMembersForPhoneVerificationByFhsr(Long l, String str, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            List<FamilyBean> listQuery2 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("locationId", l).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery2.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("edd", true).where();
                if (str != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.or(where.isNull(FieldNameConstants.FHSR_PHONE_VERIFIED), where.eq(FieldNameConstants.FHSR_PHONE_VERIFIED, Boolean.FALSE), new Where[0]), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.or(where.isNull(FieldNameConstants.FHSR_PHONE_VERIFIED), where.eq(FieldNameConstants.FHSR_PHONE_VERIFIED, Boolean.FALSE), new Where[0])).query();
                }
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                for (MemberBean memberBean : listQuery) {
                    if (memberBean.getGender() != null && memberBean.getGender().equals("F") && Boolean.TRUE.equals(memberBean.getIsPregnantFlag())) {
                        if (memberBean.getEdd() != null) {
                            arrayList3.add(new MemberDataBean(memberBean));
                        } else {
                            arrayList4.add(new MemberDataBean(memberBean));
                        }
                    }
                }
                arrayList.addAll(arrayList3);
                arrayList.addAll(arrayList4);
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void storeFhsrPhoneVerificationForm(Long l, String str, String str2) {
        try {
            MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, l).queryForFirst();
            memberBeanQueryForFirst.setMobileNumber(str);
            memberBeanQueryForFirst.setFhsrPhoneVerified(true);
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
            SharedStructureData.gps.getLocation();
            StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
            sb.append(Calendar.getInstance().getTimeInMillis());
            StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
            storeAnswerBean.setAnswerEntity(FormConstants.FHSR_PHONE_UPDATE);
            storeAnswerBean.setAnswer(str2);
            storeAnswerBean.setChecksum(sb.toString());
            storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
            storeAnswerBean.setFormFilledUpTime(0L);
            storeAnswerBean.setMorbidityAnswer("-1");
            storeAnswerBean.setNotificationId(-1L);
            storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
            storeAnswerBean.setRelatedInstance("-1");
            if (SewaTransformer.loginBean != null) {
                storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
                storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
            }
            this.sewaService.createStoreAnswerBean(storeAnswerBean);
            LoggerBean loggerBean = new LoggerBean();
            loggerBean.setBeneficiaryName(memberBeanQueryForFirst.getUniqueHealthId() + " - " + UtilBean.getMemberFullName(memberBeanQueryForFirst));
            loggerBean.setCheckSum(sb.toString());
            loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
            loggerBean.setFormType(FormConstants.FHSR_PHONE_UPDATE);
            loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.FHSR_PHONE_UPDATE));
            loggerBean.setStatus("P");
            loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
            loggerBean.setNoOfAttempt(0);
            this.sewaService.createLoggerBean(loggerBean);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public long getMobileNumberCount(String str) {
        try {
            HashSet hashSet = new HashSet();
            Iterator<MemberBean> it = this.memberBeanDao.queryBuilder().where().eq("mobileNumber", str).query().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().getFamilyId());
            }
            return hashSet.size();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return 0L;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public MemberPregnancyStatusBean retrievePregnancyStatusBeanByMemberId(Long l) {
        try {
            return this.memberPregnancyStatusBeanDao.queryBuilder().where().eq("memberId", l).queryForFirst();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMemberListForNPCB(List<Integer> list, CharSequence charSequence) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query().iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().where();
                if (charSequence != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull(FieldNameConstants.NPCB_STATUS), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.isNotNull(FieldNameConstants.NPCB_STATUS)).query();
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

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveAssignedFamilyDataBeansToUserForMobileNumberUpdationAndVerification(CharSequence charSequence, String str, long j, long j2) {
        HashSet hashSet;
        LinkedList linkedList = new LinkedList();
        try {
            if (charSequence == null) {
                hashSet = new HashSet(this.familyBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).selectColumns("familyId").where().eq("locationId", str).and().in("state", FhsConstants.CFHC_FAMILY_STATES).query());
            } else {
                hashSet = new HashSet(this.familyBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).selectColumns("familyId").where().eq("locationId", str).and().in("state", FhsConstants.CFHC_FAMILY_STATES).and().like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR).query());
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                linkedList.add(new FamilyDataBean((FamilyBean) it.next(), arrayList));
            }
        } catch (Exception e) {
            Log.e(TAG, null, e);
        }
        return linkedList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMemberDataBeanForMobileNumberUpdation(String str) {
        List<MemberBean> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -17);
            arrayList = this.memberBeanDao.queryBuilder().orderBy(FieldNameConstants.IS_MOBILE_NUMBER_VERIFIED, false).orderBy("familyHeadFlag", false).where().eq("familyId", str).and().le("dob", calendar.getTime()).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).query();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        Iterator<MemberBean> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new MemberDataBean(it.next()));
        }
        return arrayList2;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void mobileNumberVerificationAndUpdationOfFamilyMember(MobileNumberUpdationBean mobileNumberUpdationBean, Long l) {
        try {
            MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", mobileNumberUpdationBean.getMemberId()).queryForFirst();
            memberBeanQueryForFirst.setMobileNumber(mobileNumberUpdationBean.getMobileNumber());
            memberBeanQueryForFirst.setMobileNumberVerified(Boolean.TRUE);
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
            StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
            sb.append(Calendar.getInstance().getTimeInMillis());
            StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
            storeAnswerBean.setAnswerEntity(FormConstants.MOBILE_NUMBER_VERIFICATION);
            storeAnswerBean.setAnswer(new Gson().toJson(mobileNumberUpdationBean));
            storeAnswerBean.setChecksum(sb.toString());
            storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
            storeAnswerBean.setFormFilledUpTime(0L);
            storeAnswerBean.setMorbidityAnswer("-1");
            storeAnswerBean.setNotificationId(-1L);
            storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
            storeAnswerBean.setRelatedInstance("-1");
            storeAnswerBean.setMemberId(l);
            if (SewaTransformer.loginBean != null) {
                storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
                storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
            }
            this.sewaService.createStoreAnswerBean(storeAnswerBean);
            LoggerBean loggerBean = new LoggerBean();
            loggerBean.setBeneficiaryName(memberBeanQueryForFirst.getUniqueHealthId() + " - " + memberBeanQueryForFirst.getFirstName() + " " + memberBeanQueryForFirst.getMiddleName() + " " + memberBeanQueryForFirst.getLastName());
            loggerBean.setCheckSum(sb.toString());
            loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
            loggerBean.setFormType(FormConstants.MOBILE_NUMBER_VERIFICATION);
            loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.MOBILE_NUMBER_VERIFICATION));
            loggerBean.setStatus("P");
            loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
            loggerBean.setNoOfAttempt(0);
            this.sewaService.createLoggerBean(loggerBean);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<String[]> retrieveGeriatricMembers(List<String> list, CharSequence charSequence) {
        String str = "select memberbean.actualId,memberbean.familyId, memberbean.firstName, memberbean.middleName, memberbean.lastName, memberbean.uniqueHealthId from familybean inner join memberbean on familybean.familyId = memberbean.familyId where familybean.areaId in (" + UtilBean.stringListJoin(list, GlobalTypes.COMMA, false) + ")  and memberbean.dob < date('now','-60 year') and memberbean.state not in ( " + FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " )";
        if (charSequence != null) {
            str = str + " and (memberbean.firstName like '%" + ((Object) charSequence) + "%' or  memberbean.middleName like '%" + ((Object) charSequence) + "%' or memberbean.uniqueHealthId like '%" + ((Object) charSequence) + "%') ;";
        }
        try {
            return this.memberBeanDao.queryRaw(str, new String[0]).getResults();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return new ArrayList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberBean> retrieveFamilyMembersContactListByMember(String str, String str2) {
        try {
            return this.memberBeanDao.queryBuilder().selectColumns("firstName", "middleName", "lastName", "mobileNumber").where().eq("familyId", str).and().isNotNull("mobileNumber").and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).and().ne("actualId", str2).query();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return new ArrayList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<CovidTravellersInfoBean> retrieveTravellersList(List<Integer> list, String str, long j, long j2) {
        try {
            if (str == null) {
                return this.covidTravellersInfoBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where().in("locationId", list).and().eq(FieldNameConstants.IS_ACTIVE, true).query();
            }
            Where<CovidTravellersInfoBean, Integer> where = this.covidTravellersInfoBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where();
            return where.and(where.in("locationId", list), where.eq(FieldNameConstants.IS_ACTIVE, true), where.or(where.like("name", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("memberId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return new ArrayList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public CovidTravellersInfoBean retrieveTravellersInfoBeanById(Integer num) {
        try {
            return this.covidTravellersInfoBeanDao.queryBuilder().where().eq("actualId", num).queryForFirst();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<FamilyDataBean> retrieveFamilyDataBeansForIDSPByVillage(String str, List<Integer> list, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES);
        arrayList2.addAll(FhsConstants.FHS_IN_REVERIFICATION_CRITERIA_FAMILY_STATES);
        arrayList2.add("IDSP_TEMP");
        ArrayList arrayList3 = new ArrayList(FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
        arrayList3.remove("IDSP_TEMP");
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        try {
            ArrayList<FamilyBean> arrayList4 = new ArrayList();
            Where<FamilyBean, Integer> where = this.familyBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).selectColumns("familyId", "state", FieldNameConstants.LAST_IDSP_SCREENING_DATE, FieldNameConstants.LAST_IDSP_2_SCREENING_DATE).orderBy(FieldNameConstants.UPDATED_ON, true).orderBy(FieldNameConstants.LAST_IDSP_2_SCREENING_DATE, true).where();
            if (list != null) {
                arrayList4.addAll(where.and(where.in("state", arrayList2), where.in("areaId", list), where.or(where.isNull(FieldNameConstants.LAST_IDSP_2_SCREENING_DATE), where.lt(FieldNameConstants.LAST_IDSP_2_SCREENING_DATE, Long.valueOf(timeInMillis)), new Where[0])).query());
            } else {
                arrayList4.addAll(where.and(where.in("state", arrayList2), where.eq("locationId", str), where.or(where.isNull(FieldNameConstants.LAST_IDSP_2_SCREENING_DATE), where.lt(FieldNameConstants.LAST_IDSP_2_SCREENING_DATE, Long.valueOf(timeInMillis)), new Where[0])).query());
            }
            ArrayList arrayList5 = new ArrayList();
            for (FamilyBean familyBean : arrayList4) {
                if (this.memberBeanDao.queryBuilder().where().eq("familyId", familyBean.getFamilyId()).and().notIn("state", arrayList3).countOf() == 0) {
                    arrayList5.add(familyBean);
                }
            }
            arrayList4.removeAll(arrayList5);
            ArrayList arrayList6 = new ArrayList();
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean((FamilyBean) it.next(), arrayList6));
            }
        } catch (Exception e) {
            Log.e(TAG, null, e);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c9 A[Catch: Exception -> 0x00c2, TryCatch #3 {Exception -> 0x00c2, blocks: (B:6:0x0076, B:8:0x007c, B:9:0x00ae, B:11:0x00b4, B:19:0x010f, B:15:0x00c9, B:16:0x00fb, B:18:0x0101), top: B:59:0x0076 }] */
    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.argusoft.sewa.android.app.databean.FamilyDataBean> searchFamilyDataBeansForIDSPByVillage(java.lang.String r22, java.lang.String r23, java.util.List<java.lang.Integer> r24) {
        /*
            Method dump skipped, instructions count: 754
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl.searchFamilyDataBeansForIDSPByVillage(java.lang.String, java.lang.String, java.util.List):java.util.List");
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveActiveMemberByFamilyIdForIdsp(String str) {
        ArrayList arrayList = new ArrayList(FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
        arrayList.remove("IDSP_TEMP");
        ArrayList arrayList2 = new ArrayList();
        try {
            Iterator it = new ArrayList(this.memberBeanDao.queryBuilder().orderBy("familyHeadFlag", Boolean.FALSE.booleanValue()).where().eq("familyId", str).and().notIn("state", arrayList).query()).iterator();
            while (it.hasNext()) {
                arrayList2.add(new MemberDataBean((MemberBean) it.next()));
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return arrayList2;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveLCDCEligibleMembersByFamilyId(String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
        try {
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().where();
            Iterator<MemberBean> it = where.and(where.eq("familyId", str), where.notIn("state", arrayList2), where.isNull(FieldNameConstants.LCDC_SUSPECTED)).query().iterator();
            while (it.hasNext()) {
                arrayList.add(new MemberDataBean(it.next()));
            }
        } catch (SQLException e) {
            Log.e(TAG, "Error retrieving leprosy eligible members", e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public LocationMasterBean getParentLocation(Integer num) {
        try {
            return this.locationMasterBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, num).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public LocationMasterBean getLocationByActualId(Integer num) {
        try {
            return this.locationMasterBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, num).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public String getRchIdByMemberId(String str) {
        if (str != null) {
            try {
                MemberRchIdBean memberRchIdBeanQueryForFirst = this.memberRchIdBeanDao.queryBuilder().where().eq("memberId", str).queryForFirst();
                if (memberRchIdBeanQueryForFirst != null) {
                    return memberRchIdBeanQueryForFirst.getRchId();
                }
            } catch (SQLException e) {
                Log.e(TAG, null, e);
            }
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberBean> retrievePregnantWomenByAshaAreaByEligibleScheme(List<Integer> list, List<Integer> list2, CharSequence charSequence, long j, long j2, boolean z, boolean z2) {
        ArrayList arrayList;
        Where<MemberBean, Integer> whereAnd;
        ArrayList arrayList2 = new ArrayList();
        try {
            ArrayList arrayList3 = new ArrayList();
            Iterator<FamilyBean> it = ((list == null || list.isEmpty()) ? this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("locationId", list2).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query() : this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query()).iterator();
            while (it.hasNext()) {
                arrayList3.add(it.next().getFamilyId());
            }
            if (arrayList3.isEmpty()) {
                return arrayList2;
            }
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("edd", true).where();
            Calendar calendar = Calendar.getInstance();
            calendar.set(2024, 3, 1, 0, 0, 0);
            calendar.set(14, 0);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.set(2023, 6, 1, 0, 0, 0);
            calendar2.set(14, 0);
            arrayList = arrayList2;
            try {
                if (charSequence != null) {
                    whereAnd = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.or(where.and(where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.ge("lmpDate", calendar2.getTime()), new Where[0]), where.ge("lastDeliveryDate", calendar.getTime()), new Where[0]), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR)));
                    if (!z2) {
                        whereAnd = z ? whereAnd.and().raw("CASE WHEN COALESCE(currentGravida,0) > COALESCE(deliveryCount,0) + (CASE WHEN COALESCE(isPregnantFlag,0)=1 THEN 1 ELSE 0 END) THEN (COALESCE(currentGravida,0) - COALESCE(abortionCount,0)) <= 2 WHEN COALESCE(currentGravida,0) <= COALESCE(deliveryCount,0) + (CASE WHEN COALESCE(isPregnantFlag,0)=1 THEN 1 ELSE 0 END) THEN COALESCE(deliveryCount,0) < (2 + CASE WHEN COALESCE(isPregnantFlag,0) = 1 THEN 0 ELSE 1 END) END", new ArgumentHolder[0]) : whereAnd.and().isNull(FieldNameConstants.IS_PREV_ABORTION);
                    }
                } else {
                    whereAnd = where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.eq("gender", "F"), where.or(where.and(where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), where.ge("lmpDate", calendar2.getTime()), new Where[0]), where.ge("lastDeliveryDate", calendar.getTime()), new Where[0]));
                    if (!z2) {
                        whereAnd = z ? whereAnd.and().raw("CASE WHEN COALESCE(currentGravida,0) > COALESCE(deliveryCount,0) + (CASE WHEN COALESCE(isPregnantFlag,0)=1 THEN 1 ELSE 0 END) THEN (COALESCE(currentGravida,0) - COALESCE(abortionCount,0)) <= 2 WHEN COALESCE(currentGravida,0) <= COALESCE(deliveryCount,0) + (CASE WHEN COALESCE(isPregnantFlag,0)=1 THEN 1 ELSE 0 END) THEN COALESCE(deliveryCount,0) < (2 + CASE WHEN COALESCE(isPregnantFlag,0) = 1 THEN 0 ELSE 1 END) END", new ArgumentHolder[0]) : whereAnd.and().isNull(FieldNameConstants.IS_PREV_ABORTION);
                    }
                }
                return whereAnd.query();
            } catch (SQLException e) {
                e = e;
                Log.e(TAG, null, e);
                return arrayList;
            }
        } catch (SQLException e2) {
            e = e2;
            arrayList = arrayList2;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void updateGravidaCountForMother(String str, String str2) {
        try {
            UpdateBuilder<MemberBean, Integer> updateBuilder = this.memberBeanDao.updateBuilder();
            if (str2 == null) {
                str2 = "0";
            }
            updateBuilder.updateColumnValue("currentGravida", Short.valueOf(str2)).where().eq("actualId", str);
            updateBuilder.update();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public String getListValueById(Integer num) {
        try {
            ListValueBean listValueBeanQueryForFirst = this.listValueBeanDao.queryBuilder().where().eq("idOfValue", num).queryForFirst();
            if (listValueBeanQueryForFirst != null) {
                return listValueBeanQueryForFirst.getValue();
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException("Error fetching list value for ID: " + num, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public MemberDataBean retrieveMemberUsingAbhaScan(LinkedHashMap<String, String> linkedHashMap) {
        MemberBean memberBeanQueryForFirst;
        Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().where();
        if (linkedHashMap != null && Objects.equals(linkedHashMap.get("isQrCodeScan"), "true")) {
            String str = linkedHashMap.get("healthId");
            String str2 = linkedHashMap.get("healthIdNumber");
            try {
                if (str2 != null) {
                    memberBeanQueryForFirst = where.and(where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.like("healthIdNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str2 + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]).queryForFirst();
                } else if (str != null) {
                    memberBeanQueryForFirst = where.and(where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.like("healthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]).queryForFirst();
                } else {
                    memberBeanQueryForFirst = null;
                }
                if (memberBeanQueryForFirst != null) {
                    return new MemberDataBean(memberBeanQueryForFirst);
                }
            } catch (SQLException e) {
                Log.e(getClass().getSimpleName(), e.getMessage(), e);
            }
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<String> getHealthInfraOfficersAssignedToUser() {
        ArrayList arrayList = new ArrayList();
        try {
            for (HealthInfraAssignedBean healthInfraAssignedBean : this.healthInfraAssignedBeanDao.queryBuilder().distinct().selectColumns(FieldNameConstants.OFFICER_NAME).orderBy(FieldNameConstants.OFFICER_NAME, true).query()) {
                if (healthInfraAssignedBean.getOfficerName() != null) {
                    arrayList.add(healthInfraAssignedBean.getOfficerName());
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public MemberDataBean retrieveHeadMemberDataBeanByFamilyId(String str) {
        return retrieveHeadMemberDataBeansByFamilyId(Collections.singletonList(str)).get(str);
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveEligibleMembersForMalariaSlidesCollection(List<Integer> list, String str, long j, long j2) {
        List<MemberBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            List<FamilyBean> listQuery2 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery2.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("familyId", false).where();
                if (str != null) {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.or(where.isNull(FieldNameConstants.LAB_TEST_MALARIA_REF_STATUS), where.eq(FieldNameConstants.LAB_TEST_MALARIA_REF_STATUS, ""), new Where[0]), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR))).query();
                } else {
                    listQuery = where.and(where.in("familyId", arrayList2), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.or(where.isNull(FieldNameConstants.LAB_TEST_MALARIA_REF_STATUS), where.eq(FieldNameConstants.LAB_TEST_MALARIA_REF_STATUS, ""), new Where[0])).query();
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

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMalariaScreenedMembers(List<Integer> list, String str, long j, long j2, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        try {
            List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", list).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            if (!arrayList2.isEmpty()) {
                Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("familyId", false).where();
                where.in("familyId", arrayList2).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
                if (z) {
                    where.and().eq(FieldNameConstants.LAB_TEST_MALARIA_REF_BY, SewaTransformer.loginBean.getUserID());
                }
                if (z2) {
                    where.and().eq(FieldNameConstants.LAB_TEST_MALARIA_REF_STATUS, "PENDING");
                } else {
                    where.and().isNotNull(FieldNameConstants.LAB_TEST_MALARIA_REF_STATUS).and().ne(FieldNameConstants.LAB_TEST_MALARIA_REF_STATUS, "");
                }
                if (str != null) {
                    where.and().or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR));
                }
                Iterator<MemberBean> it2 = where.query().iterator();
                while (it2.hasNext()) {
                    arrayList.add(new MemberDataBean(it2.next()));
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markLcdcStatusForFamily(FamilyDataBean familyDataBean) {
        if (familyDataBean != null) {
            try {
                FamilyBean familyBeanQueryForFirst = this.familyBeanDao.queryBuilder().where().eq("actualId", familyDataBean.getId()).queryForFirst();
                familyBeanQueryForFirst.setLcdcFilled(Boolean.TRUE);
                this.familyBeanDao.update((Dao<FamilyBean, Integer>) familyBeanQueryForFirst);
            } catch (SQLException e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markLcdc02StatusForMembers(Set<MemberDataBean> set) {
        if (set != null) {
            try {
                if (set.isEmpty()) {
                    return;
                }
                Iterator<MemberDataBean> it = set.iterator();
                while (it.hasNext()) {
                    MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", it.next().getId()).queryForFirst();
                    MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberBeanQueryForFirst.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                    if (memberAdditionalInfoDataBean == null) {
                        memberAdditionalInfoDataBean = new MemberAdditionalInfoDataBean();
                    }
                    memberBeanQueryForFirst.setLcdcSurveySuspected(Boolean.TRUE);
                    memberAdditionalInfoDataBean.setLcdcSurveySuspected(Boolean.TRUE);
                    memberBeanQueryForFirst.setAdditionalInfo(new Gson().toJson(memberAdditionalInfoDataBean));
                    this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
                }
            } catch (SQLException e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markFilariaStatusForFamily(FamilyDataBean familyDataBean) {
        try {
            boolean z = true;
            if (SharedStructureData.filariaAnswerMapWithMemberAsKey != null && !SharedStructureData.filariaAnswerMapWithMemberAsKey.isEmpty()) {
                boolean z2 = true;
                for (Map.Entry<MemberDataBean, Integer> entry : SharedStructureData.filariaAnswerMapWithMemberAsKey.entrySet()) {
                    MemberBean memberBeanRetrieveMemberBeanByActualId = retrieveMemberBeanByActualId(Long.valueOf(entry.getKey().getId()));
                    if (entry.getValue().intValue() == 1) {
                        memberBeanRetrieveMemberBeanByActualId.setFilariaSuspected(Boolean.TRUE);
                    }
                    if (entry.getValue().intValue() == 2 || entry.getValue().intValue() == 3) {
                        z2 = false;
                    }
                    this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanRetrieveMemberBeanByActualId);
                }
                z = z2;
            }
            if (familyDataBean != null) {
                FamilyBean familyBeanQueryForFirst = this.familyBeanDao.queryBuilder().where().eq("actualId", familyDataBean.getId()).queryForFirst();
                if (z) {
                    familyBeanQueryForFirst.setFilariaFilled(Boolean.TRUE);
                } else {
                    familyBeanQueryForFirst.setFilariaFilled(Boolean.FALSE);
                }
                this.familyBeanDao.update((Dao<FamilyBean, Integer>) familyBeanQueryForFirst);
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markFilariaSideEffectsForMember(MemberDataBean memberDataBean) {
        try {
            MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", memberDataBean.getId()).queryForFirst();
            memberBeanQueryForFirst.setFilariaSideEffectsSubmitted(Boolean.TRUE);
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMemberDataBeansForFilariasisByFamilyId(String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES);
        Calendar calendar = Calendar.getInstance();
        UtilBean.clearTimeFromDate(calendar);
        calendar.add(1, -2);
        Date time = calendar.getTime();
        calendar.add(1, -100);
        Date time2 = calendar.getTime();
        try {
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().where();
            Iterator<MemberBean> it = where.and(where.eq("familyId", str), where.notIn("state", arrayList2), where.gt("dob", time2), where.lt("dob", time), where.or(where.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.FALSE), new Where[0]), where.or(where.isNull(FieldNameConstants.FILARIA_SUSPECTED), where.eq(FieldNameConstants.FILARIA_SUSPECTED, Boolean.FALSE), new Where[0])).query().iterator();
            while (it.hasNext()) {
                arrayList.add(new MemberDataBean(it.next()));
            }
        } catch (SQLException e) {
            Log.e(TAG, "Error retrieving leprosy eligible members", e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public List<MemberDataBean> retrieveMemberDataBeanForMRVaccinationDrive(List<Integer> list, List<Integer> list2, String str, CharSequence charSequence, long j, long j2) {
        List<Integer> arrayList;
        ArrayList arrayList2 = new ArrayList();
        if (list2 == null) {
            try {
                arrayList = new ArrayList<>();
            } catch (SQLException e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
        } else {
            arrayList = list2;
        }
        if (arrayList.isEmpty() && list != null && !list.isEmpty()) {
            Iterator<LocationMasterBean> it = this.locationMasterBeanDao.queryBuilder().selectColumns(FieldNameConstants.ACTUAL_I_D).where().in(FieldNameConstants.PARENT, list).query().iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(it.next().getActualID().intValue()));
            }
        }
        List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", arrayList).query();
        ArrayList arrayList3 = new ArrayList();
        Iterator<FamilyBean> it2 = listQuery.iterator();
        while (it2.hasNext()) {
            arrayList3.add(it2.next().getFamilyId());
        }
        if (!arrayList3.isEmpty()) {
            Calendar calendar = Calendar.getInstance();
            UtilBean.clearTimeFromDate(calendar);
            calendar.add(1, -5);
            Date time = calendar.getTime();
            calendar.add(1, -5);
            Date time2 = calendar.getTime();
            QueryBuilder<MemberBean, Integer> queryBuilder = this.memberBeanDao.queryBuilder();
            queryBuilder.limit(Long.valueOf(j));
            queryBuilder.offset(Long.valueOf(j2));
            queryBuilder.orderBy("familyId", false);
            Where<MemberBean, Integer> where = queryBuilder.where();
            if (charSequence != null && charSequence.length() > 0) {
                where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.between("dob", time2, time), where.or(where.isNull(FieldNameConstants.MR_VACCINE_GIVEN), where.eq(FieldNameConstants.MR_VACCINE_GIVEN, Boolean.FALSE), new Where[0]), where.or(where.not().like(RelatedPropertyNameConstants.IMMUNISATION_GIVEN, "%MEASLES_RUBELLA_1%"), where.not().like(RelatedPropertyNameConstants.IMMUNISATION_GIVEN, "%MEASLES_RUBELLA_2%"), new Where[0]), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR)));
            } else {
                where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.between("dob", time2, time), where.or(where.isNull(FieldNameConstants.MR_VACCINE_GIVEN), where.eq(FieldNameConstants.MR_VACCINE_GIVEN, Boolean.FALSE), new Where[0]), where.or(where.not().like(RelatedPropertyNameConstants.IMMUNISATION_GIVEN, "%MEASLES_RUBELLA_1%"), where.not().like(RelatedPropertyNameConstants.IMMUNISATION_GIVEN, "%MEASLES_RUBELLA_2%"), new Where[0]));
            }
            Iterator<MemberBean> it3 = queryBuilder.query().iterator();
            while (it3.hasNext()) {
                arrayList2.add(new MemberDataBean(it3.next()));
            }
        }
        return arrayList2;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaFhsService
    public void markMrGivenForMember(MemberDataBean memberDataBean) {
        try {
            MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", memberDataBean.getId()).queryForFirst();
            memberBeanQueryForFirst.setMrGiven(Boolean.TRUE);
            this.memberBeanDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }
}
