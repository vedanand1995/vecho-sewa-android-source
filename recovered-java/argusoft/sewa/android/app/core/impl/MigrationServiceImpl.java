package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.MigrationService;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.FamilyMigrationDetailsDataBean;
import com.argusoft.sewa.android.app.databean.FamilyMigrationInConfirmationDataBean;
import com.argusoft.sewa.android.app.databean.FamilyMigrationOutDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MigratedFamilyDataBean;
import com.argusoft.sewa.android.app.databean.MigratedMembersDataBean;
import com.argusoft.sewa.android.app.databean.MigrationDetailsDataBean;
import com.argusoft.sewa.android.app.databean.MigrationInConfirmationDataBean;
import com.argusoft.sewa.android.app.databean.MigrationInDataBean;
import com.argusoft.sewa.android.app.databean.MigrationOutConfirmationDataBean;
import com.argusoft.sewa.android.app.databean.MigrationOutDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MigratedFamilyBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class MigrationServiceImpl implements MigrationService {
    Dao<FamilyBean, Integer> familyBeanDao;
    SewaFhsServiceImpl fhsService;
    Dao<LocationMasterBean, Integer> locationMasterBeanDao;
    Dao<MemberBean, Integer> memberBeanDao;
    Dao<MigratedFamilyBean, Integer> migratedFamilyBeanDao;
    Dao<MigratedMembersBean, Integer> migratedMembersBeanDao;
    SewaServiceImpl sewaService;

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public List<LocationMasterBean> retrieveLocationMasterBeansBySearch(CharSequence charSequence, Integer num) {
        try {
            Where<LocationMasterBean, Integer> whereLike = this.locationMasterBeanDao.queryBuilder().where().like("name", ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR);
            if (num != null) {
                whereLike = whereLike.and().eq("level", num);
            }
            return whereLike.query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public Map<Integer, String> retrieveHierarchyOfVillage(LocationMasterBean locationMasterBean) {
        HashMap map = new HashMap();
        map.put(6, locationMasterBean.getName());
        try {
            LocationMasterBean locationMasterBeanQueryForFirst = this.locationMasterBeanDao.queryBuilder().where().eq("actualId", locationMasterBean.getParent()).queryForFirst();
            map.put(5, locationMasterBeanQueryForFirst.getName());
            LocationMasterBean locationMasterBeanQueryForFirst2 = this.locationMasterBeanDao.queryBuilder().where().eq("actualId", locationMasterBeanQueryForFirst.getParent()).queryForFirst();
            map.put(4, locationMasterBeanQueryForFirst2.getName());
            LocationMasterBean locationMasterBeanQueryForFirst3 = this.locationMasterBeanDao.queryBuilder().where().eq("actualId", locationMasterBeanQueryForFirst2.getParent()).queryForFirst();
            map.put(3, locationMasterBeanQueryForFirst3.getName());
            LocationMasterBean locationMasterBeanQueryForFirst4 = this.locationMasterBeanDao.queryBuilder().where().eq("actualId", locationMasterBeanQueryForFirst3.getParent()).queryForFirst();
            map.put(2, locationMasterBeanQueryForFirst4.getName());
            map.put(1, this.locationMasterBeanDao.queryBuilder().where().eq("actualId", locationMasterBeanQueryForFirst4.getParent()).queryForFirst().getName());
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return map;
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public List<MemberBean> retrieveChildrenUnder5YearsByMotherId(Long l) {
        ArrayList arrayList = new ArrayList();
        try {
            List<MemberBean> listQuery = this.memberBeanDao.queryBuilder().where().eq("motherId", l).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).query();
            if (listQuery != null && !listQuery.isEmpty()) {
                for (MemberBean memberBean : listQuery) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.add(1, -5);
                    if (memberBean.getDob().after(calendar.getTime())) {
                        arrayList.add(memberBean);
                    }
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public List<FamilyDataBean> retrieveFamilyListBySearchForMigration(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().where().like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), arrayList2));
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public List<FamilyDataBean> searchFamilyByLocation(String str, Long l, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        try {
            List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where().eq("locationId", l).and().like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList.add(new FamilyDataBean(it.next(), arrayList2));
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public void createMigrationOut(MigrationOutDataBean migrationOutDataBean, MemberDataBean memberDataBean, NotificationBean notificationBean) {
        Log.i(getClass().getSimpleName(), "#### Generated Migration Out : " + new Gson().toJson(migrationOutDataBean));
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.TECHO_MIGRATION_OUT);
        storeAnswerBean.setAnswer(new Gson().toJson(migrationOutDataBean));
        storeAnswerBean.setChecksum(sb.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        if (notificationBean != null) {
            storeAnswerBean.setNotificationId(notificationBean.getNotificationId());
        } else {
            storeAnswerBean.setNotificationId(-1L);
        }
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        storeAnswerBean.setMemberId(Long.valueOf(memberDataBean.getId()));
        if (SewaTransformer.loginBean != null) {
            storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
            storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        }
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setBeneficiaryName(memberDataBean.getUniqueHealthId() + " - " + UtilBean.getMemberFullName(memberDataBean));
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setFormType(FormConstants.TECHO_MIGRATION_OUT);
        loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.TECHO_MIGRATION_OUT));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        this.sewaService.createLoggerBean(loggerBean);
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public void createMigrationIn(MigrationInDataBean migrationInDataBean) {
        Log.i(getClass().getSimpleName(), "#### Generated Migration In : " + new Gson().toJson(migrationInDataBean));
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.TECHO_MIGRATION_IN);
        storeAnswerBean.setAnswer(new Gson().toJson(migrationInDataBean));
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
        loggerBean.setBeneficiaryName(migrationInDataBean.getFirstname() + " " + migrationInDataBean.getMiddleName() + " " + migrationInDataBean.getLastName() + " (" + migrationInDataBean.getPhoneNumber() + ")");
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setFormType(FormConstants.TECHO_MIGRATION_IN);
        loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.TECHO_MIGRATION_IN));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        this.sewaService.createLoggerBean(loggerBean);
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public void createMigrationInConfirmation(MigrationInConfirmationDataBean migrationInConfirmationDataBean, MigrationDetailsDataBean migrationDetailsDataBean) {
        Log.i(getClass().getSimpleName(), "#### Generated Migration In Confirmation: " + new Gson().toJson(migrationInConfirmationDataBean));
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.TECHO_MIGRATION_IN_CONFIRMATION);
        storeAnswerBean.setAnswer(new Gson().toJson(migrationInConfirmationDataBean));
        storeAnswerBean.setChecksum(sb.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(migrationInConfirmationDataBean.getNotificationId());
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        storeAnswerBean.setMemberId(migrationInConfirmationDataBean.getMemberId());
        if (SewaTransformer.loginBean != null) {
            storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
            storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        }
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setBeneficiaryName(migrationDetailsDataBean.getFirstName() + " " + migrationDetailsDataBean.getMiddleName() + " " + migrationDetailsDataBean.getLastName() + "(" + migrationDetailsDataBean.getHealthId() + ")");
        StringBuilder sb2 = new StringBuilder("Family ID: ");
        sb2.append(migrationDetailsDataBean.getFamilyId());
        loggerBean.setMessage(sb2.toString());
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setFormType(FormConstants.TECHO_MIGRATION_IN_CONFIRMATION);
        loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.TECHO_MIGRATION_IN_CONFIRMATION));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        this.sewaService.createLoggerBean(loggerBean);
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public void createMigrationOutConfirmation(MigrationOutConfirmationDataBean migrationOutConfirmationDataBean, MigrationDetailsDataBean migrationDetailsDataBean) {
        Log.i(getClass().getSimpleName(), "#### Generated Migration Out Confirmation: " + new Gson().toJson(migrationOutConfirmationDataBean));
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.TECHO_MIGRATION_OUT_CONFIRMATION);
        storeAnswerBean.setAnswer(new Gson().toJson(migrationOutConfirmationDataBean));
        storeAnswerBean.setChecksum(sb.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(-1L);
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        storeAnswerBean.setMemberId(migrationOutConfirmationDataBean.getMemberId());
        if (SewaTransformer.loginBean != null) {
            storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
            storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        }
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setBeneficiaryName(migrationDetailsDataBean.getFirstName() + " " + migrationDetailsDataBean.getMiddleName() + " " + migrationDetailsDataBean.getLastName());
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setFormType(FormConstants.TECHO_MIGRATION_OUT_CONFIRMATION);
        loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.TECHO_MIGRATION_OUT_CONFIRMATION));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        this.sewaService.createLoggerBean(loggerBean);
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public List<MigratedMembersBean> retrieveMigrationDetailsForMigratedMembers(Integer num, List<Integer> list, boolean z, long j, long j2) {
        List<MigratedMembersBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Long.valueOf(num.longValue()));
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(Long.valueOf(it.next().longValue()));
            }
            if (z) {
                listQuery = this.migratedMembersBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where().in("fromLocationId", arrayList2).query();
            } else {
                listQuery = this.migratedMembersBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where().in("toLocationId", arrayList2).query();
            }
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            for (MigratedMembersBean migratedMembersBean : listQuery) {
                if (migratedMembersBean.getLfu() != null && migratedMembersBean.getLfu().booleanValue()) {
                    arrayList3.add(migratedMembersBean);
                } else if (migratedMembersBean.getOutOfState() != null && migratedMembersBean.getOutOfState().booleanValue()) {
                    arrayList5.add(migratedMembersBean);
                } else if (migratedMembersBean.getConfirmed() == null || !migratedMembersBean.getConfirmed().booleanValue()) {
                    arrayList4.add(migratedMembersBean);
                } else {
                    arrayList6.add(migratedMembersBean);
                }
            }
            arrayList.addAll(arrayList3);
            arrayList.addAll(arrayList4);
            arrayList.addAll(arrayList5);
            arrayList.addAll(arrayList6);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public void storeRevertedMigrationBean(MigratedMembersDataBean migratedMembersDataBean) {
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.TECHO_MIGRATION_REVERTED);
        storeAnswerBean.setAnswer(new GsonBuilder().registerTypeAdapter(Date.class, UtilBean.JSON_DATE_SERIALIZER).create().toJson(migratedMembersDataBean));
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
        loggerBean.setBeneficiaryName(migratedMembersDataBean.getHealthId() + " - " + migratedMembersDataBean.getName());
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setFormType(FormConstants.TECHO_MIGRATION_REVERTED);
        loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.TECHO_MIGRATION_REVERTED));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        this.sewaService.createLoggerBean(loggerBean);
        try {
            DeleteBuilder<MigratedMembersBean, Integer> deleteBuilder = this.migratedMembersBeanDao.deleteBuilder();
            deleteBuilder.where().eq("memberId", migratedMembersDataBean.getMemberId());
            deleteBuilder.delete();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public void createFamilyMigrationOut(FamilyMigrationOutDataBean familyMigrationOutDataBean, FamilyDataBean familyDataBean, NotificationMobDataBean notificationMobDataBean) {
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.FAMILY_MIGRATION_OUT);
        storeAnswerBean.setAnswer(new Gson().toJson(familyMigrationOutDataBean));
        storeAnswerBean.setChecksum(sb.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        if (notificationMobDataBean != null) {
            storeAnswerBean.setNotificationId(notificationMobDataBean.getId());
        } else {
            storeAnswerBean.setNotificationId(-1L);
        }
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        if (SewaTransformer.loginBean != null) {
            storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
            storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        }
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setBeneficiaryName(familyDataBean.getFamilyId());
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setFormType(FormConstants.FAMILY_MIGRATION_OUT);
        loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.FAMILY_MIGRATION_OUT));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        this.sewaService.createLoggerBean(loggerBean);
        this.fhsService.markFamilyAsMigrated(familyDataBean.getFamilyId());
        if (notificationMobDataBean != null) {
            this.sewaService.deleteNotificationByNotificationId(notificationMobDataBean.getId());
        }
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public void createFamilyMigrationInConfirmation(FamilyMigrationInConfirmationDataBean familyMigrationInConfirmationDataBean, FamilyMigrationDetailsDataBean familyMigrationDetailsDataBean) {
        Log.i(getClass().getSimpleName(), "#### Generated Family Migration In Confirmation: " + new Gson().toJson(familyMigrationInConfirmationDataBean));
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.FAMILY_MIGRATION_IN_CONFIRMATION);
        storeAnswerBean.setAnswer(new Gson().toJson(familyMigrationInConfirmationDataBean));
        storeAnswerBean.setChecksum(sb.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(familyMigrationInConfirmationDataBean.getNotificationId());
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        if (SewaTransformer.loginBean != null) {
            storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
            storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        }
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        LoggerBean loggerBean = new LoggerBean();
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder("Members :\n");
        if (familyMigrationDetailsDataBean.getFamilyIdString() != null) {
            sb2.append(familyMigrationDetailsDataBean.getFamilyIdString());
        }
        for (String str : familyMigrationDetailsDataBean.getMemberDetails()) {
            sb3.append(LabelConstants.NEW_LINE);
            sb3.append(str);
        }
        loggerBean.setBeneficiaryName(sb2.toString());
        loggerBean.setMessage(sb3.toString());
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setFormType(FormConstants.FAMILY_MIGRATION_IN_CONFIRMATION);
        loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.FAMILY_MIGRATION_IN_CONFIRMATION));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        this.sewaService.createLoggerBean(loggerBean);
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public void deleteMigratedMembersBean(MigratedMembersBean migratedMembersBean) {
        try {
            Dao<MigratedMembersBean, Integer> dao = this.migratedMembersBeanDao;
            dao.delete(dao.queryForMatching(migratedMembersBean));
        } catch (Exception e) {
            Log.e(getClass().getName(), "Exception" + e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public List<MigratedFamilyBean> retrieveMigrationDetailsForMigratedFamily(Integer num, List<Integer> list, boolean z, long j, long j2) {
        List<MigratedFamilyBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Long.valueOf(num.longValue()));
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(Long.valueOf(it.next().longValue()));
            }
            if (z) {
                listQuery = this.migratedFamilyBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where().in("fromLocationId", arrayList2).query();
            } else {
                listQuery = this.migratedFamilyBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).where().in("toLocationId", arrayList2).query();
            }
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            for (MigratedFamilyBean migratedFamilyBean : listQuery) {
                if (migratedFamilyBean.getLfu() != null && migratedFamilyBean.getLfu().booleanValue()) {
                    arrayList3.add(migratedFamilyBean);
                } else if (migratedFamilyBean.getOutOfState() != null && migratedFamilyBean.getOutOfState().booleanValue()) {
                    arrayList5.add(migratedFamilyBean);
                } else if (migratedFamilyBean.getConfirmed() == null || !migratedFamilyBean.getConfirmed().booleanValue()) {
                    arrayList4.add(migratedFamilyBean);
                } else {
                    arrayList6.add(migratedFamilyBean);
                }
            }
            arrayList.addAll(arrayList3);
            arrayList.addAll(arrayList4);
            arrayList.addAll(arrayList5);
            arrayList.addAll(arrayList6);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public void storeRevertedFamilyMigrationBean(MigratedFamilyDataBean migratedFamilyDataBean) {
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.TECHO_FAMILY_MIGRATION_REVERTED);
        storeAnswerBean.setAnswer(new GsonBuilder().registerTypeAdapter(Date.class, UtilBean.JSON_DATE_SERIALIZER).create().toJson(migratedFamilyDataBean));
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
        loggerBean.setBeneficiaryName(migratedFamilyDataBean.getFamilyIdString());
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setFormType(FormConstants.TECHO_FAMILY_MIGRATION_REVERTED);
        loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.TECHO_FAMILY_MIGRATION_REVERTED));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        this.sewaService.createLoggerBean(loggerBean);
        try {
            DeleteBuilder<MigratedFamilyBean, Integer> deleteBuilder = this.migratedFamilyBeanDao.deleteBuilder();
            deleteBuilder.where().eq("familyId", migratedFamilyDataBean.getFamilyId());
            deleteBuilder.delete();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.MigrationService
    public void deleteMigratedFamilyBean(MigratedFamilyBean migratedFamilyBean) {
        try {
            Dao<MigratedFamilyBean, Integer> dao = this.migratedFamilyBeanDao;
            dao.delete(dao.queryForMatching(migratedFamilyBean));
        } catch (Exception e) {
            Log.e(getClass().getName(), "Exception" + e);
        }
    }
}
