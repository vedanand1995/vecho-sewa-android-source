package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.NotificationConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.NotificationService;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class NotificationServiceImpl implements NotificationService {
    private static final String OBR_OF_DON_IS_NULL_DON_ASC = "dateOfNotification IS NULL, dateOfNotification ASC";
    private static final String TAG = "NotificationServiceImpl";
    private static List<String> pendingStates;
    Dao<CovidTravellersInfoBean, Integer> covidTravellersInfoBeanDao;
    Dao<FamilyBean, Integer> familyBeanDao;
    Dao<LocationBean, Integer> locationBeanDao;
    Dao<MemberBean, Integer> memberBeanDao;
    Dao<NotificationBean, Integer> notificationBeanDao;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private final SewaTransformer sewaTransformer = SewaTransformer.getInstance();

    static {
        ArrayList arrayList = new ArrayList();
        pendingStates = arrayList;
        arrayList.add("PENDING");
        pendingStates.add(NotificationConstants.NOTIFICATION_STATE_RESCHEDULE);
    }

    @Override // com.argusoft.sewa.android.app.core.NotificationService
    public List<NotificationMobDataBean> retrieveNotificationsForUser(List<Integer> list, List<Integer> list2, String str, CharSequence charSequence, long j, long j2) throws SQLException {
        LinkedList linkedList;
        ArrayList arrayList;
        List<Integer> arrayList2 = list2 == null ? new ArrayList<>() : list2;
        if (arrayList2.isEmpty() && list != null && !list.isEmpty()) {
            arrayList2 = new ArrayList<>();
            Iterator<LocationBean> it = this.locationBeanDao.queryBuilder().selectColumns(FieldNameConstants.ACTUAL_I_D).where().in(FieldNameConstants.PARENT, list).query().iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getActualID());
            }
        }
        linkedList = new LinkedList();
        if (list != null && !list.isEmpty()) {
            linkedList.addAll(list);
        }
        if (!arrayList2.isEmpty()) {
            linkedList.addAll(arrayList2);
        }
        arrayList = new ArrayList();
        str.hashCode();
        switch (str) {
            case "ASHA_SAM_SCREENING":
            case "FHW_SAM_SCREENING_REF":
            case "AMRUTPAN":
            case "ASHA_CS":
            case "AMRUTPAN_UC":
            case "FHW_SAM_AFTER_CMAM":
            case "CMAM_FOLLOWUP":
            case "SAM_SCREENING":
            case "AWW_CS":
            case "APPETITE":
            case "FHW_CS":
                arrayList.addAll(getChildrenNotifications(linkedList, str, charSequence, j, j2, null));
                break;
            case "DISCHARGE":
            case "FHW_PNC":
            case "LMPFU":
            case "ASHA_PNC":
            case "ASHA_LMPFU":
                arrayList.addAll(getEligibleCoupleNotifications(linkedList, str, charSequence, j, j2, null));
                break;
            case "ADOLESCENT_HEALTH_SCREENING":
                arrayList.addAll(getChildrenAdolescentFeeding(linkedList, str, charSequence, j, j2));
                break;
            case "TT2_ALERT":
            case "FHW_ANC":
            case "FHW_WPD":
            case "ASHA_ANC":
            case "IRON_SUCROSE_ALERT":
                arrayList.addAll(getPregnantWomenNotifications(linkedList, str, charSequence, j, j2, null));
                break;
            case "TRAVELLERS_SCREENING":
                arrayList.addAll(getCovidTravellersNotifications(linkedList, str, charSequence, j, j2));
                break;
            case "DPT_BOOSTER_2_ALERT":
                arrayList.addAll(getDptBooster2AlertNotifications(linkedList, str, charSequence, j, j2, null));
                break;
            case "GMA":
                arrayList.addAll(getGeriartricsMemberNotifications(linkedList, str, charSequence, j, j2));
                break;
            case "SHG":
                arrayList.addAll(getSelfHelpGroupMemberNotifications(linkedList, str, charSequence, j, j2));
                break;
            default:
                arrayList.addAll(getDefaultNotifications(linkedList, str, j, j2));
                break;
        }
        return this.sewaTransformer.convertNotificationModelToNotificationDataBean(arrayList, new ArrayList());
    }

    @Override // com.argusoft.sewa.android.app.core.NotificationService
    public List<NotificationMobDataBean> retrieveNotificationsForUserAsPerCampaignDate(List<Integer> list, List<Integer> list2, String str, CharSequence charSequence, long j, long j2, Date date) throws SQLException {
        LinkedList linkedList;
        ArrayList arrayList;
        List<Integer> arrayList2 = list2 == null ? new ArrayList<>() : list2;
        if (arrayList2.isEmpty() && list != null && !list.isEmpty()) {
            arrayList2 = new ArrayList<>();
            Iterator<LocationBean> it = this.locationBeanDao.queryBuilder().selectColumns(FieldNameConstants.ACTUAL_I_D).where().in(FieldNameConstants.PARENT, list).query().iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getActualID());
            }
        }
        linkedList = new LinkedList();
        if (list != null && !list.isEmpty()) {
            linkedList.addAll(list);
        }
        if (!arrayList2.isEmpty()) {
            linkedList.addAll(arrayList2);
        }
        arrayList = new ArrayList();
        str.hashCode();
        switch (str) {
            case "DPT_BOOSTER_2_ALERT":
                arrayList.addAll(getDptBooster2AlertNotifications(linkedList, str, charSequence, j, j2, UtilBean.endOfDay(date)));
                break;
            case "FHW_ANC":
            case "ASHA_ANC":
                arrayList.addAll(getPregnantWomenNotifications(linkedList, str, charSequence, j, j2, UtilBean.endOfDay(date)));
                break;
            case "FHW_PNC":
            case "ASHA_PNC":
                arrayList.addAll(getEligibleCoupleNotifications(linkedList, str, charSequence, j, j2, UtilBean.endOfDay(date)));
                break;
            case "ASHA_CS":
            case "AWW_CS":
            case "FHW_CS":
                arrayList.addAll(getChildrenNotifications(linkedList, str, charSequence, j, j2, UtilBean.endOfDay(date)));
                break;
            default:
                arrayList.addAll(getDefaultNotifications(linkedList, str, j, j2));
                break;
        }
        return this.sewaTransformer.convertNotificationModelToNotificationDataBean(arrayList, new ArrayList());
    }

    private List<NotificationBean> getEligibleCoupleNotifications(List<Integer> list, String str, CharSequence charSequence, long j, long j2, Date date) throws SQLException {
        String str2;
        String str3 = ("FHW_PNC".equals(str) || FormConstants.ASHA_PNC.equals(str)) ? "50" : "49";
        if (date != null) {
            str2 = "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where MemberBean.gender = 'F' and MemberBean.maritalStatus = '629' and MemberBean.dob <= date('now','-18 year') and MemberBean.dob >= date('now','-" + str3 + " year') and (MemberBean.isPregnantFlag is null or MemberBean.isPregnantFlag = 0) and (MemberBean.menopauseArrived is null or MemberBean.menopauseArrived = 0) and (MemberBean.hysterectomyDone is null or MemberBean.hysterectomyDone = 0) and FamilyBean.state in (" + FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and MemberBean.state not in (" + FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and NotificationBean.notificationCode = '" + str + "' and STRFTIME('%Y-%m-%d', NotificationBean.scheduledDate) <= " + ("'" + new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4).format(date) + "'") + " and NotificationBean.state in (" + pendingStates.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) ";
        } else {
            str2 = "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where MemberBean.gender = 'F' and MemberBean.maritalStatus = '629' and MemberBean.dob <= date('now','-18 year') and MemberBean.dob >= date('now','-" + str3 + " year') and (MemberBean.isPregnantFlag is null or MemberBean.isPregnantFlag = 0) and (MemberBean.menopauseArrived is null or MemberBean.menopauseArrived = 0) and (MemberBean.hysterectomyDone is null or MemberBean.hysterectomyDone = 0) and FamilyBean.state in (" + FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and MemberBean.state not in (" + FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and NotificationBean.notificationCode = '" + str + "' and STRFTIME('%Y-%m-%d', NotificationBean.scheduledDate) <= date('now') and NotificationBean.state in (" + pendingStates.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) ";
        }
        if (list != null && !list.isEmpty()) {
            str2 = str2 + "and NotificationBean.locationId in (" + list.toString().replace("[", "").replace("]", "") + ") ";
        }
        if (charSequence != null) {
            str2 = str2 + "and (MemberBean.uniqueHealthId like '%" + ((Object) charSequence) + "%' or MemberBean.firstName like '%" + ((Object) charSequence) + "%' or MemberBean.familyId like '%" + ((Object) charSequence) + "%' or MemberBean.mobileNumber like '%" + ((Object) charSequence) + "%' ) ";
        }
        List results = this.notificationBeanDao.queryRaw(str2 + " order by NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC limit " + j + " offset " + j2, new RawRowMapper<Integer>() { // from class: com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.j256.ormlite.dao.RawRowMapper
            public Integer mapRow(String[] strArr, String[] strArr2) {
                return Integer.valueOf(Integer.parseInt(strArr2[0]));
            }
        }, new String[0]).getResults();
        ArrayList arrayList = new ArrayList();
        Iterator it = results.iterator();
        while (it.hasNext()) {
            arrayList.add(this.notificationBeanDao.queryBuilder().orderByRaw("NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC").where().eq("memberId", (Integer) it.next()).and().eq(FieldNameConstants.NOTIFICATION_CODE, str).queryForFirst());
        }
        return arrayList;
    }

    private List<NotificationBean> getPregnantWomenNotifications(List<Integer> list, String str, CharSequence charSequence, long j, long j2, Date date) throws SQLException {
        String str2;
        if (date != null) {
            str2 = "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where (MemberBean.isPregnantFlag is null or MemberBean.isPregnantFlag = 1) and FamilyBean.state in (" + FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and MemberBean.state not in (" + FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and NotificationBean.notificationCode = '" + str + "' and STRFTIME('%Y-%m-%d', NotificationBean.scheduledDate) <= " + ("'" + new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4).format(date) + "'") + " and NotificationBean.state in (" + pendingStates.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) ";
        } else {
            str2 = "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where (MemberBean.isPregnantFlag is null or MemberBean.isPregnantFlag = 1) and FamilyBean.state in (" + FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and MemberBean.state not in (" + FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and NotificationBean.notificationCode = '" + str + "' and STRFTIME('%Y-%m-%d', NotificationBean.scheduledDate) <= date('now') and NotificationBean.state in (" + pendingStates.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) ";
        }
        if (list != null && !list.isEmpty()) {
            str2 = str2 + "and NotificationBean.locationId in (" + list.toString().replace("[", "").replace("]", "") + ") ";
        }
        if (charSequence != null) {
            str2 = str2 + "and (MemberBean.uniqueHealthId like '%" + ((Object) charSequence) + "%' or MemberBean.firstName like '%" + ((Object) charSequence) + "%' or MemberBean.familyId like '%" + ((Object) charSequence) + "%' or MemberBean.mobileNumber like '%" + ((Object) charSequence) + "%' ) ";
        }
        List results = this.notificationBeanDao.queryRaw(str2 + " order by NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC limit " + j + " offset " + j2, new RawRowMapper<Integer>() { // from class: com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.j256.ormlite.dao.RawRowMapper
            public Integer mapRow(String[] strArr, String[] strArr2) {
                return Integer.valueOf(Integer.parseInt(strArr2[0]));
            }
        }, new String[0]).getResults();
        ArrayList arrayList = new ArrayList();
        Iterator it = results.iterator();
        while (it.hasNext()) {
            arrayList.add(this.notificationBeanDao.queryBuilder().orderByRaw("NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC").where().eq("memberId", (Integer) it.next()).and().eq(FieldNameConstants.NOTIFICATION_CODE, str).queryForFirst());
        }
        return arrayList;
    }

    private List<NotificationBean> getChildrenNotifications(List<Integer> list, String str, CharSequence charSequence, long j, long j2, Date date) throws SQLException {
        String str2;
        if (date != null) {
            str2 = "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where MemberBean.dob >= date('now','-5 year') and FamilyBean.state in (" + FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and MemberBean.state not in (" + FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and NotificationBean.notificationCode = '" + str + "' and STRFTIME('%Y-%m-%d', NotificationBean.scheduledDate) <= " + ("'" + new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4).format(date) + "'") + " and NotificationBean.state in (" + pendingStates.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) ";
        } else {
            str2 = "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where MemberBean.dob >= date('now','-5 year') and FamilyBean.state in (" + FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and MemberBean.state not in (" + FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and NotificationBean.notificationCode = '" + str + "' and STRFTIME('%Y-%m-%d', NotificationBean.scheduledDate) <= date('now') and NotificationBean.state in (" + pendingStates.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) ";
        }
        if (list != null && !list.isEmpty()) {
            str2 = str2 + "and NotificationBean.locationId in (" + list.toString().replace("[", "").replace("]", "") + ") ";
        }
        if (charSequence != null) {
            str2 = str2 + "and (MemberBean.uniqueHealthId like '%" + ((Object) charSequence) + "%' or MemberBean.firstName like '%" + ((Object) charSequence) + "%' or MemberBean.familyId like '%" + ((Object) charSequence) + "%' or MemberBean.mobileNumber like '%" + ((Object) charSequence) + "%' ) ";
        }
        List results = this.notificationBeanDao.queryRaw(str2 + " order by NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC limit " + j + " offset " + j2, new RawRowMapper<Integer>() { // from class: com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.j256.ormlite.dao.RawRowMapper
            public Integer mapRow(String[] strArr, String[] strArr2) {
                return Integer.valueOf(Integer.parseInt(strArr2[0]));
            }
        }, new String[0]).getResults();
        ArrayList arrayList = new ArrayList();
        Iterator it = results.iterator();
        while (it.hasNext()) {
            arrayList.add(this.notificationBeanDao.queryBuilder().orderByRaw("NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC").where().eq("memberId", (Integer) it.next()).and().eq(FieldNameConstants.NOTIFICATION_CODE, str).queryForFirst());
        }
        return arrayList;
    }

    private List<NotificationBean> getChildrenAdolescentFeeding(List<Integer> list, String str, CharSequence charSequence, long j, long j2) throws SQLException {
        String str2 = "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where dob between date('now','-19 year') and  date('now','-10 year') and  (((julianday(adolescentScreeningDate)-julianday('now'))/(365/12)) > 6 or adolescentScreeningDate is null) and (MemberBean.isPregnantFlag is null or MemberBean.isPregnantFlag = 0) and FamilyBean.state in (" + FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and MemberBean.state not in (" + FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) ";
        if (list != null && !list.isEmpty()) {
            str2 = str2 + "and NotificationBean.locationId in (" + list.toString().replace("[", "").replace("]", "") + ") ";
        }
        if (charSequence != null) {
            str2 = str2 + "and (MemberBean.uniqueHealthId like '%" + ((Object) charSequence) + "%' or MemberBean.firstName like '%" + ((Object) charSequence) + "%' or MemberBean.familyId like '%" + ((Object) charSequence) + "%' or MemberBean.mobileNumber like '%" + ((Object) charSequence) + "%' ) ";
        }
        List results = this.notificationBeanDao.queryRaw(str2 + " order by NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC limit " + j + " offset " + j2, new RawRowMapper<Integer>() { // from class: com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.j256.ormlite.dao.RawRowMapper
            public Integer mapRow(String[] strArr, String[] strArr2) {
                return Integer.valueOf(Integer.parseInt(strArr2[0]));
            }
        }, new String[0]).getResults();
        ArrayList arrayList = new ArrayList();
        Iterator it = results.iterator();
        while (it.hasNext()) {
            arrayList.add(this.notificationBeanDao.queryBuilder().orderByRaw("NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC").where().eq("memberId", (Integer) it.next()).queryForFirst());
        }
        return arrayList;
    }

    private List<NotificationBean> getGeriartricsMemberNotifications(List<Integer> list, String str, CharSequence charSequence, long j, long j2) throws SQLException {
        QueryBuilder<FamilyBean, Integer> queryBuilder = this.familyBeanDao.queryBuilder();
        queryBuilder.where().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES);
        QueryBuilder<MemberBean, Integer> queryBuilderJoin = this.memberBeanDao.queryBuilder().join("familyId", "familyId", queryBuilder);
        Calendar calendar = Calendar.getInstance();
        calendar.add(1, -60);
        UtilBean.clearTimeFromDate(calendar);
        Where<MemberBean, Integer> where = queryBuilderJoin.where();
        if (charSequence != null) {
            where.and(where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.le("dob", calendar.getTime()), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR)));
        } else {
            where.and(where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.le("dob", calendar.getTime()), new Where[0]);
        }
        QueryBuilder<NotificationBean, Integer> queryBuilder2 = this.notificationBeanDao.queryBuilder();
        Where<NotificationBean, Integer> where2 = queryBuilder2.join("memberId", "actualId", queryBuilderJoin).limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderByRaw(OBR_OF_DON_IS_NULL_DON_ASC).orderBy(FieldNameConstants.BENEFICIARY_NAME, true).where();
        if (list.isEmpty()) {
            where2.and(where2.eq(FieldNameConstants.NOTIFICATION_CODE, str), where2.le("scheduledDate", UtilBean.endOfDay(new Date())), where2.in("state", pendingStates));
        } else {
            where2.and(where2.in("locationId", list), where2.eq(FieldNameConstants.NOTIFICATION_CODE, str), where2.le("scheduledDate", UtilBean.endOfDay(new Date())), where2.in("state", pendingStates));
        }
        return queryBuilder2.query();
    }

    private List<NotificationBean> getCovidTravellersNotifications(List<Integer> list, String str, CharSequence charSequence, long j, long j2) throws SQLException {
        QueryBuilder<CovidTravellersInfoBean, Integer> queryBuilder = this.covidTravellersInfoBeanDao.queryBuilder();
        Where<CovidTravellersInfoBean, Integer> where = queryBuilder.where();
        if (charSequence == null) {
            where.eq(FieldNameConstants.IS_ACTIVE, Boolean.TRUE);
        } else {
            where.and(where.eq(FieldNameConstants.IS_ACTIVE, Boolean.TRUE), where.or(where.like("name", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]), new Where[0]);
        }
        QueryBuilder<NotificationBean, Integer> queryBuilder2 = this.notificationBeanDao.queryBuilder();
        Where<NotificationBean, Integer> where2 = queryBuilder2.join("memberId", "actualId", queryBuilder).limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderByRaw(OBR_OF_DON_IS_NULL_DON_ASC).orderBy(FieldNameConstants.BENEFICIARY_NAME, true).where();
        if (list.isEmpty()) {
            where2.and(where2.eq(FieldNameConstants.NOTIFICATION_CODE, str), where2.le("scheduledDate", UtilBean.endOfDay(new Date())), where2.in("state", pendingStates));
        } else {
            where2.and(where2.in("locationId", list), where2.eq(FieldNameConstants.NOTIFICATION_CODE, str), where2.le("scheduledDate", UtilBean.endOfDay(new Date())), where2.in("state", pendingStates));
        }
        return queryBuilder2.query();
    }

    private List<NotificationBean> getSelfHelpGroupMemberNotifications(List<Integer> list, String str, CharSequence charSequence, long j, long j2) throws SQLException {
        QueryBuilder<FamilyBean, Integer> queryBuilder = this.familyBeanDao.queryBuilder();
        queryBuilder.where().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES);
        QueryBuilder<MemberBean, Integer> queryBuilderJoin = this.memberBeanDao.queryBuilder().join("familyId", "familyId", queryBuilder);
        Calendar calendar = Calendar.getInstance();
        calendar.add(1, -5);
        UtilBean.clearTimeFromDate(calendar);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.add(1, -10);
        UtilBean.clearTimeFromDate(calendar2);
        Calendar calendar3 = Calendar.getInstance();
        calendar3.add(1, -19);
        UtilBean.clearTimeFromDate(calendar3);
        Where<MemberBean, Integer> where = queryBuilderJoin.where();
        if (charSequence != null) {
            where.and(where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.or(where.and(where.isNotNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), new Where[0]), where.and(where.isNotNull("dob"), where.le("dob", calendar2.getTime()), where.ge("dob", calendar3.getTime())), where.and(where.isNotNull("dob"), where.ge("dob", calendar.getTime()), new Where[0])), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR)));
        } else {
            where.and(where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.or(where.and(where.isNotNull(FieldNameConstants.IS_PREGNANT_FLAG), where.eq(FieldNameConstants.IS_PREGNANT_FLAG, Boolean.TRUE), new Where[0]), where.and(where.isNotNull("dob"), where.le("dob", calendar2.getTime()), where.ge("dob", calendar3.getTime())), where.and(where.isNotNull("dob"), where.ge("dob", calendar.getTime()), new Where[0])), new Where[0]);
        }
        QueryBuilder<NotificationBean, Integer> queryBuilder2 = this.notificationBeanDao.queryBuilder();
        Where<NotificationBean, Integer> where2 = queryBuilder2.join("memberId", "actualId", queryBuilderJoin).limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderByRaw(OBR_OF_DON_IS_NULL_DON_ASC).orderBy(FieldNameConstants.BENEFICIARY_NAME, true).where();
        if (list.isEmpty()) {
            where2.and(where2.eq(FieldNameConstants.NOTIFICATION_CODE, str), where2.le("scheduledDate", UtilBean.endOfDay(new Date())), where2.in("state", pendingStates));
        } else {
            where2.and(where2.in("locationId", list), where2.eq(FieldNameConstants.NOTIFICATION_CODE, str), where2.le("scheduledDate", UtilBean.endOfDay(new Date())), where2.in("state", pendingStates));
        }
        return queryBuilder2.query();
    }

    private List<NotificationBean> getDefaultNotifications(List<Integer> list, String str, long j, long j2) throws SQLException {
        QueryBuilder<NotificationBean, Integer> queryBuilder = this.notificationBeanDao.queryBuilder();
        Where<NotificationBean, Integer> where = queryBuilder.limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderByRaw(OBR_OF_DON_IS_NULL_DON_ASC).orderBy(FieldNameConstants.BENEFICIARY_NAME, true).where();
        if (list.isEmpty()) {
            where.and(where.eq(FieldNameConstants.NOTIFICATION_CODE, str), where.le("scheduledDate", UtilBean.endOfDay(new Date())), where.in("state", pendingStates));
        } else {
            where.and(where.in("locationId", list), where.eq(FieldNameConstants.NOTIFICATION_CODE, str), where.le("scheduledDate", UtilBean.endOfDay(new Date())), where.in("state", pendingStates));
        }
        return queryBuilder.query();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:146:0x048e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:145:0x048d  */
    @Override // com.argusoft.sewa.android.app.core.NotificationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Integer> retrieveCountForNotificationType(java.util.List<java.lang.Integer> r59, java.util.List<java.lang.Integer> r60) {
        /*
            Method dump skipped, instructions count: 2280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl.retrieveCountForNotificationType(java.util.List, java.util.List):java.util.Map");
    }

    private boolean isEligibleCoupleMember(MemberBean memberBean, Date date, Date date2) {
        return "F".equals(memberBean.getGender()) && "629".equals(memberBean.getMaritalStatus()) && memberBean.getDob() != null && !memberBean.getDob().after(date) && !memberBean.getDob().before(date2) && (memberBean.getIsPregnantFlag() == null || Boolean.FALSE.equals(memberBean.getIsPregnantFlag())) && ((memberBean.getMenopauseArrived() == null || Boolean.FALSE.equals(memberBean.getMenopauseArrived())) && (memberBean.getHysterectomyDone() == null || Boolean.FALSE.equals(memberBean.getHysterectomyDone())));
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0247  */
    @Override // com.argusoft.sewa.android.app.core.NotificationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Integer> retrieveCountForNotificationTypeBasedOnCampaign(java.util.List<java.lang.Integer> r28, java.util.List<java.lang.Integer> r29, java.util.Date r30) {
        /*
            Method dump skipped, instructions count: 948
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl.retrieveCountForNotificationTypeBasedOnCampaign(java.util.List, java.util.List, java.util.Date):java.util.Map");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000e A[Catch: SQLException -> 0x00cf, TryCatch #0 {SQLException -> 0x00cf, blocks: (B:4:0x0008, B:7:0x0013, B:8:0x0042, B:10:0x0048, B:11:0x0056, B:13:0x0084, B:14:0x00c0, B:6:0x000e), top: B:19:0x0008 }] */
    @Override // com.argusoft.sewa.android.app.core.NotificationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Integer> retrieveCountForAshaDptBoosterNotificationBasedOnCampaign(java.util.List<java.lang.Integer> r9, java.util.Date r10) {
        /*
            r8 = this;
            java.lang.String r0 = "dob"
            java.lang.String r1 = "state"
            java.lang.String r2 = "familyId"
            if (r9 == 0) goto Le
            boolean r3 = r9.isEmpty()     // Catch: java.sql.SQLException -> Lcf
            if (r3 == 0) goto L13
        Le:
            java.util.ArrayList r9 = new java.util.ArrayList     // Catch: java.sql.SQLException -> Lcf
            r9.<init>()     // Catch: java.sql.SQLException -> Lcf
        L13:
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.sql.SQLException -> Lcf
            r3.<init>()     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.FamilyBean, java.lang.Integer> r4 = r8.familyBeanDao     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.QueryBuilder r4 = r4.queryBuilder()     // Catch: java.sql.SQLException -> Lcf
            java.lang.String[] r5 = new java.lang.String[]{r2}     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.QueryBuilder r4 = r4.selectColumns(r5)     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.Where r4 = r4.where()     // Catch: java.sql.SQLException -> Lcf
            java.lang.String r5 = "areaId"
            com.j256.ormlite.stmt.Where r9 = r4.in(r5, r9)     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.Where r9 = r9.and()     // Catch: java.sql.SQLException -> Lcf
            java.util.List<java.lang.String> r4 = com.argusoft.sewa.android.app.constants.FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.Where r9 = r9.in(r1, r4)     // Catch: java.sql.SQLException -> Lcf
            java.util.List r9 = r9.query()     // Catch: java.sql.SQLException -> Lcf
            java.util.Iterator r9 = r9.iterator()     // Catch: java.sql.SQLException -> Lcf
        L42:
            boolean r4 = r9.hasNext()     // Catch: java.sql.SQLException -> Lcf
            if (r4 == 0) goto L56
            java.lang.Object r4 = r9.next()     // Catch: java.sql.SQLException -> Lcf
            com.argusoft.sewa.android.app.model.FamilyBean r4 = (com.argusoft.sewa.android.app.model.FamilyBean) r4     // Catch: java.sql.SQLException -> Lcf
            java.lang.String r4 = r4.getFamilyId()     // Catch: java.sql.SQLException -> Lcf
            r3.add(r4)     // Catch: java.sql.SQLException -> Lcf
            goto L42
        L56:
            java.util.Calendar r9 = java.util.Calendar.getInstance()     // Catch: java.sql.SQLException -> Lcf
            java.util.Date r10 = com.argusoft.sewa.android.app.util.UtilBean.endOfDay(r10)     // Catch: java.sql.SQLException -> Lcf
            r9.setTime(r10)     // Catch: java.sql.SQLException -> Lcf
            r10 = -5
            r4 = 1
            r9.add(r4, r10)     // Catch: java.sql.SQLException -> Lcf
            r10 = -3
            r5 = 2
            r9.add(r5, r10)     // Catch: java.sql.SQLException -> Lcf
            java.util.Date r10 = r9.getTime()     // Catch: java.sql.SQLException -> Lcf
            r6 = -21
            r9.add(r5, r6)     // Catch: java.sql.SQLException -> Lcf
            java.util.Date r9 = r9.getTime()     // Catch: java.sql.SQLException -> Lcf
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.sql.SQLException -> Lcf
            r6.<init>()     // Catch: java.sql.SQLException -> Lcf
            boolean r6 = r3.isEmpty()     // Catch: java.sql.SQLException -> Lcf
            r7 = 0
            if (r6 != 0) goto Lc0
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.MemberBean, java.lang.Integer> r6 = r8.memberBeanDao     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.QueryBuilder r6 = r6.queryBuilder()     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.Where r6 = r6.where()     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.Where r2 = r6.in(r2, r3)     // Catch: java.sql.SQLException -> Lcf
            java.util.List<java.lang.String> r3 = com.argusoft.sewa.android.app.constants.FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.Where r1 = r6.notIn(r1, r3)     // Catch: java.sql.SQLException -> Lcf
            r3 = 3
            com.j256.ormlite.stmt.Where[] r3 = new com.j256.ormlite.stmt.Where[r3]     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.Where r9 = r6.ge(r0, r9)     // Catch: java.sql.SQLException -> Lcf
            r3[r7] = r9     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.Where r9 = r6.lt(r0, r10)     // Catch: java.sql.SQLException -> Lcf
            r3[r4] = r9     // Catch: java.sql.SQLException -> Lcf
            com.j256.ormlite.stmt.Where r9 = r6.not()     // Catch: java.sql.SQLException -> Lcf
            java.lang.String r10 = "immunisationGiven"
            java.lang.String r0 = "%DPT_BOOSTER_2#%"
            com.j256.ormlite.stmt.Where r9 = r9.like(r10, r0)     // Catch: java.sql.SQLException -> Lcf
            r3[r5] = r9     // Catch: java.sql.SQLException -> Lcf
            r6.and(r2, r1, r3)     // Catch: java.sql.SQLException -> Lcf
            java.util.List r9 = r6.query()     // Catch: java.sql.SQLException -> Lcf
            int r7 = r9.size()     // Catch: java.sql.SQLException -> Lcf
        Lc0:
            java.util.HashMap r9 = new java.util.HashMap     // Catch: java.sql.SQLException -> Lcf
            r9.<init>()     // Catch: java.sql.SQLException -> Lcf
            java.lang.String r10 = "DPT_BOOSTER_2_ALERT"
            java.lang.Integer r0 = java.lang.Integer.valueOf(r7)     // Catch: java.sql.SQLException -> Lcf
            r9.put(r10, r0)     // Catch: java.sql.SQLException -> Lcf
            return r9
        Lcf:
            r9 = move-exception
            java.lang.Class r10 = r8.getClass()
            java.lang.String r10 = r10.getSimpleName()
            r0 = 0
            android.util.Log.e(r10, r0, r9)
            java.util.HashMap r9 = new java.util.HashMap
            r9.<init>()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl.retrieveCountForAshaDptBoosterNotificationBasedOnCampaign(java.util.List, java.util.Date):java.util.Map");
    }

    @Override // com.argusoft.sewa.android.app.core.NotificationService
    public List<MemberDataBean> retrieveMembersForDPTAlertForAshaAsPerCampaign(List<Integer> list, Date date, CharSequence charSequence, LinkedHashMap<String, String> linkedHashMap, String str, Date date2, long j, long j2) throws SQLException {
        List<Integer> arrayList = (list == null || list.isEmpty()) ? new ArrayList<>() : list;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("areaId", arrayList).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query().iterator();
        while (it.hasNext()) {
            arrayList3.add(it.next().getFamilyId());
        }
        if (!arrayList3.isEmpty()) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(UtilBean.endOfDay(date));
            calendar.add(1, -5);
            calendar.add(2, -3);
            Date time = calendar.getTime();
            calendar.add(2, -21);
            Date time2 = calendar.getTime();
            Where<MemberBean, Integer> where = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("dob", false).where();
            if (charSequence != null) {
                where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("dob", time2), where.lt("dob", time), where.not().like(RelatedPropertyNameConstants.IMMUNISATION_GIVEN, "%DPT_BOOSTER_2#%"), where.or(where.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR)));
            } else {
                where.and(where.in("familyId", arrayList3), where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where.ge("dob", time2), where.lt("dob", time), where.not().like(RelatedPropertyNameConstants.IMMUNISATION_GIVEN, "%DPT_BOOSTER_2#%"));
            }
            if (linkedHashMap != null && Objects.equals(linkedHashMap.get("isQrCodeScan"), "true")) {
                where.and().or(where.like("healthId", GlobalTypes.BENEFICIARY_SEPARATOR + linkedHashMap.get("healthId") + GlobalTypes.BENEFICIARY_SEPARATOR), where.like("healthIdNumber", GlobalTypes.BENEFICIARY_SEPARATOR + linkedHashMap.get("healthIdNumber") + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]);
            }
            Iterator<MemberBean> it2 = where.query().iterator();
            while (it2.hasNext()) {
                arrayList2.add(new MemberDataBean(it2.next()));
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x01a5  */
    @Override // com.argusoft.sewa.android.app.core.NotificationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Integer> retrieveCountForAshaReportedEventNotificationType(java.util.List<java.lang.Integer> r20, java.util.List<java.lang.Integer> r21) {
        /*
            Method dump skipped, instructions count: 838
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl.retrieveCountForAshaReportedEventNotificationType(java.util.List, java.util.List):java.util.Map");
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x023c A[Catch: SQLException -> 0x0264, TryCatch #0 {SQLException -> 0x0264, blocks: (B:4:0x000c, B:6:0x0014, B:10:0x001e, B:12:0x0024, B:13:0x0044, B:15:0x004a, B:16:0x0058, B:18:0x005f, B:20:0x0065, B:21:0x0069, B:23:0x006f, B:24:0x0082, B:26:0x0088, B:27:0x008c, B:29:0x0092, B:30:0x00a5, B:33:0x00c1, B:35:0x0136, B:36:0x0147, B:38:0x014d, B:41:0x015b, B:44:0x0169, B:47:0x01ae, B:50:0x01bc, B:52:0x01de, B:55:0x01ec, B:76:0x0226, B:77:0x0231, B:78:0x023c, B:80:0x0248, B:62:0x0206, B:65:0x020e, B:68:0x0216, B:45:0x018a, B:82:0x0255, B:34:0x00f7), top: B:87:0x000c }] */
    @Override // com.argusoft.sewa.android.app.core.NotificationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Integer> retrieveCountForOtherServicesNotificationType(java.util.List<java.lang.Integer> r17, java.util.List<java.lang.Integer> r18) {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl.retrieveCountForOtherServicesNotificationType(java.util.List, java.util.List):java.util.Map");
    }

    @Override // com.argusoft.sewa.android.app.core.NotificationService
    public Boolean checkIfThereArePendingNotificationsForMember(Long l, String str) {
        try {
            if (this.notificationBeanDao.queryBuilder().where().eq(FieldNameConstants.NOTIFICATION_CODE, str).and().in("state", pendingStates).and().eq("memberId", l).countOf() > 0) {
                return true;
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        return false;
    }

    public List<MemberBean> getAdolescentChildrenInArea(List<Integer> list, List<Integer> list2, CharSequence charSequence, long j, long j2) throws SQLException {
        List<Integer> arrayList = list2 == null ? new ArrayList<>() : list2;
        if (arrayList.isEmpty() && list != null && !list.isEmpty()) {
            arrayList = new ArrayList<>();
            Iterator<LocationBean> it = this.locationBeanDao.queryBuilder().selectColumns(FieldNameConstants.ACTUAL_I_D).where().in(FieldNameConstants.PARENT, list).query().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getActualID());
            }
        }
        LinkedList linkedList = new LinkedList();
        if (list != null && !list.isEmpty()) {
            linkedList.addAll(list);
        }
        if (!arrayList.isEmpty()) {
            linkedList.addAll(arrayList);
        }
        Calendar calendar = Calendar.getInstance();
        calendar.add(1, -10);
        UtilBean.clearTimeFromDate(calendar);
        Date time = calendar.getTime();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.add(1, -19);
        UtilBean.clearTimeFromDate(calendar2);
        Date time2 = calendar2.getTime();
        Calendar calendar3 = Calendar.getInstance();
        calendar3.add(2, -1);
        UtilBean.clearTimeFromDate(calendar3);
        Date time3 = calendar3.getTime();
        QueryBuilder<FamilyBean, Integer> queryBuilder = this.familyBeanDao.queryBuilder();
        QueryBuilder<MemberBean, Integer> queryBuilderOffset = this.memberBeanDao.queryBuilder().join("familyId", "familyId", queryBuilder).limit(Long.valueOf(j)).offset(Long.valueOf(j2));
        Where<FamilyBean, Integer> where = queryBuilder.where();
        where.and(where.in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES), where.or(where.in("locationId", linkedList), where.in("areaId", linkedList), new Where[0]), new Where[0]);
        Where<MemberBean, Integer> where2 = queryBuilderOffset.where();
        if (charSequence != null) {
            where2.and(where2.between("dob", time2, time), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.or(where2.isNull(RelatedPropertyNameConstants.ADOLESCENT_SCREENING_DATE), where2.le(RelatedPropertyNameConstants.ADOLESCENT_SCREENING_DATE, time3), new Where[0]), where2.or(where2.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where2.eq(FieldNameConstants.IS_PREGNANT_FLAG, false), new Where[0]), where2.or(where2.like("firstName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where2.like("middleName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where2.like("lastName", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where2.like("uniqueHealthId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where2.like("familyId", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR), where2.like("mobileNumber", GlobalTypes.BENEFICIARY_SEPARATOR + ((Object) charSequence) + GlobalTypes.BENEFICIARY_SEPARATOR)));
        } else {
            where2.and(where2.between("dob", time2, time), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.or(where2.isNull(RelatedPropertyNameConstants.ADOLESCENT_SCREENING_DATE), where2.le(RelatedPropertyNameConstants.ADOLESCENT_SCREENING_DATE, time3), new Where[0]), where2.or(where2.isNull(FieldNameConstants.IS_PREGNANT_FLAG), where2.eq(FieldNameConstants.IS_PREGNANT_FLAG, false), new Where[0]));
        }
        return where2.query();
    }

    private List<NotificationBean> getDptBooster2AlertNotifications(List<Integer> list, String str, CharSequence charSequence, long j, long j2, Date date) throws SQLException {
        String str2;
        if (date != null) {
            str2 = "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where FamilyBean.state in (" + FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and MemberBean.state not in (" + FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and NotificationBean.notificationCode = '" + str + "' and STRFTIME('%Y-%m-%d', NotificationBean.scheduledDate) <= " + ("'" + new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4).format(date) + "'") + " and NotificationBean.state in (" + pendingStates.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) ";
        } else {
            str2 = "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where FamilyBean.state in (" + FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and MemberBean.state not in (" + FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) and NotificationBean.notificationCode = '" + str + "' and STRFTIME('%Y-%m-%d', NotificationBean.scheduledDate) <= date('now') and NotificationBean.state in (" + pendingStates.toString().replaceAll("(^.|.$)", "'").replace(", ", "','") + " ) ";
        }
        if (list != null && !list.isEmpty()) {
            str2 = str2 + "and NotificationBean.locationId in (" + list.toString().replace("[", "").replace("]", "") + ") ";
        }
        if (charSequence != null) {
            str2 = str2 + "and (MemberBean.uniqueHealthId like '%" + ((Object) charSequence) + "%' or MemberBean.firstName like '%" + ((Object) charSequence) + "%' or MemberBean.familyId like '%" + ((Object) charSequence) + "%' or MemberBean.mobileNumber like '%" + ((Object) charSequence) + "%' ) ";
        }
        List results = this.notificationBeanDao.queryRaw(str2 + " order by NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC limit " + j + " offset " + j2, new RawRowMapper<Integer>() { // from class: com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.j256.ormlite.dao.RawRowMapper
            public Integer mapRow(String[] strArr, String[] strArr2) {
                return Integer.valueOf(Integer.parseInt(strArr2[0]));
            }
        }, new String[0]).getResults();
        ArrayList arrayList = new ArrayList();
        Iterator it = results.iterator();
        while (it.hasNext()) {
            arrayList.add(this.notificationBeanDao.queryBuilder().orderByRaw("NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC").where().eq("memberId", (Integer) it.next()).and().eq(FieldNameConstants.NOTIFICATION_CODE, str).queryForFirst());
        }
        return arrayList;
    }
}
