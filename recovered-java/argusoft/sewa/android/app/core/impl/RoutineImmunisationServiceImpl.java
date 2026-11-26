package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.RoutineImmunisationService;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class RoutineImmunisationServiceImpl implements RoutineImmunisationService {
    private static final String SERVICE_CHILDREN_5_TO_7 = "childrenAbove5";
    private static final String SERVICE_CHILDREN_GREATER_THAN_2 = "childrenGreaterThan2";
    private static final String SERVICE_CHILDREN_UPTO_2 = "childrenUpto2";
    private static final String SERVICE_CHILDREN_UPTO_5 = "childrenUpto5";
    private static final String SERVICE_ELIGIBLE_COUPLES = "eligibleCouples";
    private static final String SERVICE_NEWLY_WED = "newlyWed";
    private static final String SERVICE_PNC_MOTHERS = "pncMothers";
    private static final String SERVICE_PREGNANCY_OUTCOME = "pregnancyOutcome";
    private static final String SERVICE_PREGNANT_WOMEN = "pregnantWomen";
    private static final String TAG = "RIServiceImpl";
    Dao<FamilyBean, Integer> familyBeanDao;
    Dao<RISessionInventoryBean, Integer> inventoryBeanDao;
    Dao<MemberBean, Integer> memberBeanDao;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;

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

    @Override // com.argusoft.sewa.android.app.core.RoutineImmunisationService
    public List<MemberDataBean> retrieveChildrenForRoutineImmunisation(CharSequence charSequence, long j, long j2, LinkedHashMap<String, String> linkedHashMap, String str, Date date, List<Integer> list, Boolean bool) {
        ArrayList arrayList;
        ArrayList arrayList2;
        List<FamilyBean> listQuery;
        String str2;
        ArrayList arrayList3 = new ArrayList();
        try {
            Where<FamilyBean, Integer> where = this.familyBeanDao.queryBuilder().selectColumns("familyId").where();
            try {
                if (list == null) {
                    arrayList2 = arrayList3;
                    listQuery = where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_FAMILY_STATES).query();
                } else {
                    try {
                        arrayList2 = arrayList3;
                        listQuery = where.and(where.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_FAMILY_STATES), where.or(where.in("locationId", list), where.in("areaId", list), new Where[0]), new Where[0]).query();
                    } catch (SQLException e) {
                        e = e;
                        arrayList2 = arrayList3;
                        arrayList = arrayList2;
                        Log.e(TAG, null, e);
                        return arrayList;
                    }
                }
                if (listQuery != null && !listQuery.isEmpty()) {
                    ArrayList arrayList4 = new ArrayList();
                    Iterator<FamilyBean> it = listQuery.iterator();
                    while (it.hasNext()) {
                        arrayList4.add(it.next().getFamilyId());
                    }
                    Calendar calendar = Calendar.getInstance();
                    UtilBean.clearTimeFromDate(calendar);
                    calendar.add(1, -5);
                    Date time = calendar.getTime();
                    calendar.add(1, -2);
                    Date time2 = calendar.getTime();
                    new ArrayList();
                    Where<MemberBean, Integer> where2 = this.memberBeanDao.queryBuilder().limit(Long.valueOf(j)).offset(Long.valueOf(j2)).orderBy("dob", false).where();
                    if (!bool.booleanValue()) {
                        where2.and(where2.in("familyId", arrayList4), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.ge("dob", time));
                    } else {
                        where2.and(where2.in("familyId", arrayList4), where2.notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES), where2.ge("dob", time2), where2.lt("dob", time));
                    }
                    if (linkedHashMap != null && Objects.equals(linkedHashMap.get("isQrCodeScan"), "true")) {
                        where2.and().or(where2.like("healthId", GlobalTypes.BENEFICIARY_SEPARATOR + linkedHashMap.get("healthId") + GlobalTypes.BENEFICIARY_SEPARATOR), where2.like("healthIdNumber", GlobalTypes.BENEFICIARY_SEPARATOR + linkedHashMap.get("healthIdNumber") + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]);
                    } else if (str != null) {
                        if (charSequence != null) {
                            try {
                                str2 = null;
                                addSearchTypeConditionAccordingly(where2, str, charSequence.toString().trim(), null);
                            } catch (SQLException e2) {
                                e = e2;
                                arrayList = arrayList2;
                                Log.e(TAG, null, e);
                                return arrayList;
                            }
                        } else {
                            str2 = null;
                        }
                        if (date != null) {
                            addSearchTypeConditionAccordingly(where2, str, str2, date);
                        }
                    }
                    Iterator<MemberBean> it2 = where2.query().iterator();
                    while (it2.hasNext()) {
                        arrayList = arrayList2;
                        try {
                            arrayList.add(new MemberDataBean(it2.next()));
                            arrayList2 = arrayList;
                        } catch (SQLException e3) {
                            e = e3;
                            Log.e(TAG, null, e);
                            return arrayList;
                        }
                    }
                    return arrayList2;
                }
                return arrayList2;
            } catch (SQLException e4) {
                e = e4;
            }
        } catch (SQLException e5) {
            e = e5;
            arrayList = arrayList3;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:12|(2:15|13)|86|16|17|(12:19|80|20|(1:22)|31|55|(4:58|(1:96)(3:90|64|(3:92|66|98)(3:91|67|97))|93|56)|87|69|84|70|79)(1:25)|(1:54)(3:28|(1:30)(2:32|(1:34)(2:35|(1:37)(2:38|(3:40|(1:42)|43)(2:44|(1:46)(2:47|(1:49)(2:50|(1:52)(1:53)))))))|31)|55|(1:56)|87|69|84|70|79) */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x04b9, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0476 A[Catch: SQLException -> 0x014e, TryCatch #0 {SQLException -> 0x014e, blocks: (B:20:0x00c9, B:22:0x00d9, B:55:0x0462, B:56:0x0470, B:58:0x0476, B:60:0x0482, B:62:0x048c, B:64:0x0498, B:66:0x049e, B:67:0x04a7, B:28:0x015b, B:30:0x0163, B:32:0x01bc, B:34:0x01c4, B:35:0x021a, B:37:0x0222, B:38:0x0277, B:40:0x027f, B:42:0x028b, B:43:0x02b8, B:44:0x02fe, B:46:0x0306, B:47:0x0343, B:49:0x034b, B:50:0x03ec, B:52:0x03f4, B:54:0x0425), top: B:80:0x00c9 }] */
    @Override // com.argusoft.sewa.android.app.core.RoutineImmunisationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> retrievePregnantWomenForRoutineImmunisation(java.lang.CharSequence r21, long r22, long r24, java.util.LinkedHashMap<java.lang.String, java.lang.String> r26, java.lang.String r27, java.util.Date r28, java.util.List<java.lang.Integer> r29) {
        /*
            Method dump skipped, instructions count: 1222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.RoutineImmunisationServiceImpl.retrievePregnantWomenForRoutineImmunisation(java.lang.CharSequence, long, long, java.util.LinkedHashMap, java.lang.String, java.util.Date, java.util.List):java.util.List");
    }

    @Override // com.argusoft.sewa.android.app.core.RoutineImmunisationService
    public RISessionInventoryBean getRiInventoryBySessionId(String str) {
        try {
            return this.inventoryBeanDao.queryBuilder().where().eq(RelatedPropertyNameConstants.SESSION_ID, str).queryForFirst();
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
            return null;
        }
    }

    public void submitRIInventoryForm(RISessionInventoryBean rISessionInventoryBean) {
        try {
            this.inventoryBeanDao.create((Dao<RISessionInventoryBean, Integer>) rISessionInventoryBean);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        String str = SewaTransformer.loginBean.getUsername() + Calendar.getInstance().getTimeInMillis();
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.RI_SESSION_INVENTORY);
        storeAnswerBean.setAnswer(new Gson().toJson(rISessionInventoryBean));
        storeAnswerBean.setChecksum(str);
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
        loggerBean.setCheckSum(str);
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        loggerBean.setBeneficiaryName(UtilBean.getMyLabel("RI Inventory for Session"));
        loggerBean.setTaskName(UtilBean.getMyLabel("RI Inventory"));
        loggerBean.setFormType(FormConstants.RI_SESSION_INVENTORY);
        this.sewaService.createLoggerBean(loggerBean);
    }

    public void submitRIInventoryReturnFormOnline(RISessionInventoryBean rISessionInventoryBean) {
        try {
            this.inventoryBeanDao.update((Dao<RISessionInventoryBean, Integer>) rISessionInventoryBean);
            Integer numStoreReturnInventoryDetailsToServer = this.sewaServiceRestClient.storeReturnInventoryDetailsToServer(rISessionInventoryBean);
            if (numStoreReturnInventoryDetailsToServer == null || numStoreReturnInventoryDetailsToServer.intValue() <= 0) {
                return;
            }
            String str = SewaTransformer.loginBean.getUsername() + Calendar.getInstance().getTimeInMillis();
            LoggerBean loggerBean = new LoggerBean();
            loggerBean.setCheckSum(str);
            loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
            loggerBean.setStatus("S");
            loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
            loggerBean.setNoOfAttempt(0);
            loggerBean.setBeneficiaryName(UtilBean.getMyLabel("RI Inventory for Online Session"));
            loggerBean.setTaskName(UtilBean.getMyLabel("RI Inventory online"));
            loggerBean.setFormType(FormConstants.RI_SESSION_INVENTORY);
            this.sewaService.createLoggerBean(loggerBean);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    public void submitRIInventoryReturnForm(RISessionInventoryBean rISessionInventoryBean) {
        try {
            this.inventoryBeanDao.update((Dao<RISessionInventoryBean, Integer>) rISessionInventoryBean);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        String str = SewaTransformer.loginBean.getUsername() + Calendar.getInstance().getTimeInMillis();
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.RI_SESSION_INVENTORY_RETURN);
        storeAnswerBean.setAnswer(new Gson().toJson(rISessionInventoryBean));
        storeAnswerBean.setChecksum(str);
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
        loggerBean.setCheckSum(str);
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        loggerBean.setBeneficiaryName(UtilBean.getMyLabel("RI Inventory Return after session end"));
        loggerBean.setTaskName(UtilBean.getMyLabel("RI Inventory Return"));
        loggerBean.setFormType(FormConstants.RI_SESSION_INVENTORY);
        this.sewaService.createLoggerBean(loggerBean);
    }

    public void updatePWImmunisationUsedInInventory() {
        RISessionInventoryBean riInventoryBySessionId;
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SESSION_ID);
        if (str == null || str.isEmpty() || str.equalsIgnoreCase(LabelConstants.NULL) || (riInventoryBySessionId = getRiInventoryBySessionId(str)) == null) {
            return;
        }
        riInventoryBySessionId.setTdUsed(Integer.valueOf(riInventoryBySessionId.getTdUsed().intValue() + 1));
        try {
            this.inventoryBeanDao.update((Dao<RISessionInventoryBean, Integer>) riInventoryBySessionId);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0300 A[RETURN] */
    @Override // com.argusoft.sewa.android.app.core.RoutineImmunisationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String checkImmunisationStockAvailable(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 980
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.RoutineImmunisationServiceImpl.checkImmunisationStockAvailable(java.lang.String, java.lang.String):java.lang.String");
    }

    @Override // com.argusoft.sewa.android.app.core.RoutineImmunisationService
    public void addImmunisationToInventory(String str, String str2) {
        RISessionInventoryBean riInventoryBySessionId;
        if (str == null || str.isEmpty() || str.equalsIgnoreCase(LabelConstants.NULL) || (riInventoryBySessionId = getRiInventoryBySessionId(str)) == null) {
            return;
        }
        str2.hashCode();
        switch (str2) {
            case "F_IPV_1_01":
            case "F_IPV_2_01":
            case "F_IPV_2_05":
            case "F_IPV_3":
                riInventoryBySessionId.setFipvUsed(Integer.valueOf(riInventoryBySessionId.getFipvUsed().intValue() + 1));
                break;
            case "MEASLES_1":
            case "MEASLES_2":
            case "MEASLES_RUBELLA_1":
            case "MEASLES_RUBELLA_2":
                riInventoryBySessionId.setMrUsed(Integer.valueOf(riInventoryBySessionId.getMrUsed().intValue() + 1));
                break;
            case "OPV_BOOSTER":
            case "OPV_0":
            case "OPV_1":
            case "OPV_2":
            case "OPV_3":
                riInventoryBySessionId.setOpvUsed(Integer.valueOf(riInventoryBySessionId.getOpvUsed().intValue() + 1));
                break;
            case "HEPATITIS_B_0":
                riInventoryBySessionId.setHepUsed(Integer.valueOf(riInventoryBySessionId.getHepUsed().intValue() + 1));
                break;
            case "BCG":
                riInventoryBySessionId.setBcgUsed(Integer.valueOf(riInventoryBySessionId.getBcgUsed().intValue() + 1));
                break;
            case "TD1":
            case "TD2":
            case "TD_10":
            case "TD_16":
            case "TD_BOOSTER":
                riInventoryBySessionId.setTdUsed(Integer.valueOf(riInventoryBySessionId.getTdUsed().intValue() + 1));
                break;
            case "PCV_BOOSTER":
            case "PCV_1":
            case "PCV_2":
                riInventoryBySessionId.setPcvUsed(Integer.valueOf(riInventoryBySessionId.getPcvUsed().intValue() + 1));
                break;
            case "PENTA_1":
            case "PENTA_2":
            case "PENTA_3":
                riInventoryBySessionId.setPentaUsed(Integer.valueOf(riInventoryBySessionId.getPentaUsed().intValue() + 1));
                break;
            case "DPT_1":
            case "DPT_2":
            case "DPT_3":
            case "DPT_BOOSTER":
            case "DPT_BOOSTER_2":
                riInventoryBySessionId.setDptUsed(Integer.valueOf(riInventoryBySessionId.getDptUsed().intValue() + 1));
                break;
            case "ROTA_VIRUS_1":
            case "ROTA_VIRUS_2":
            case "ROTA_VIRUS_3":
                riInventoryBySessionId.setRotaUsed(Integer.valueOf(riInventoryBySessionId.getRotaUsed().intValue() + 1));
                break;
        }
        try {
            this.inventoryBeanDao.update((Dao<RISessionInventoryBean, Integer>) riInventoryBySessionId);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.RoutineImmunisationService
    public void removeImmunisationFromInventory(String str, String str2) {
        RISessionInventoryBean riInventoryBySessionId;
        if (str == null || str.isEmpty() || str.equalsIgnoreCase(LabelConstants.NULL) || (riInventoryBySessionId = getRiInventoryBySessionId(str)) == null) {
            return;
        }
        str2.hashCode();
        switch (str2) {
            case "F_IPV_1_01":
            case "F_IPV_2_01":
            case "F_IPV_2_05":
            case "F_IPV_3":
                riInventoryBySessionId.setFipvUsed(Integer.valueOf(riInventoryBySessionId.getFipvUsed().intValue() - 1));
                break;
            case "MEASLES_1":
            case "MEASLES_2":
            case "MEASLES_RUBELLA_1":
            case "MEASLES_RUBELLA_2":
                riInventoryBySessionId.setMrUsed(Integer.valueOf(riInventoryBySessionId.getMrUsed().intValue() - 1));
                break;
            case "OPV_BOOSTER":
            case "OPV_0":
            case "OPV_1":
            case "OPV_2":
            case "OPV_3":
                riInventoryBySessionId.setOpvUsed(Integer.valueOf(riInventoryBySessionId.getOpvUsed().intValue() - 1));
                break;
            case "HEPATITIS_B_0":
                riInventoryBySessionId.setHepUsed(Integer.valueOf(riInventoryBySessionId.getHepUsed().intValue() - 1));
                break;
            case "BCG":
                riInventoryBySessionId.setBcgUsed(Integer.valueOf(riInventoryBySessionId.getBcgUsed().intValue() - 1));
                break;
            case "TD1":
            case "TD2":
            case "TD_10":
            case "TD_16":
            case "TD_BOOSTER":
                riInventoryBySessionId.setTdUsed(Integer.valueOf(riInventoryBySessionId.getTdUsed().intValue() - 1));
                break;
            case "PCV_BOOSTER":
            case "PCV_1":
            case "PCV_2":
                riInventoryBySessionId.setPcvUsed(Integer.valueOf(riInventoryBySessionId.getPcvUsed().intValue() - 1));
                break;
            case "PENTA_1":
            case "PENTA_2":
            case "PENTA_3":
                riInventoryBySessionId.setPentaUsed(Integer.valueOf(riInventoryBySessionId.getPentaUsed().intValue() - 1));
                break;
            case "DPT_1":
            case "DPT_2":
            case "DPT_3":
            case "DPT_BOOSTER":
            case "DPT_BOOSTER_2":
                riInventoryBySessionId.setDptUsed(Integer.valueOf(riInventoryBySessionId.getDptUsed().intValue() - 1));
                break;
            case "ROTA_VIRUS_1":
            case "ROTA_VIRUS_2":
            case "ROTA_VIRUS_3":
                riInventoryBySessionId.setRotaUsed(Integer.valueOf(riInventoryBySessionId.getRotaUsed().intValue() - 1));
                break;
        }
        try {
            this.inventoryBeanDao.update((Dao<RISessionInventoryBean, Integer>) riInventoryBySessionId);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x035d  */
    @Override // com.argusoft.sewa.android.app.core.RoutineImmunisationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Integer> retrieveCountForRIServices(java.lang.Integer r25) {
        /*
            Method dump skipped, instructions count: 965
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.RoutineImmunisationServiceImpl.retrieveCountForRIServices(java.lang.Integer):java.util.Map");
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0486 A[Catch: SQLException -> 0x0157, TRY_LEAVE, TryCatch #1 {SQLException -> 0x0157, blocks: (B:20:0x00d7, B:22:0x00e7, B:55:0x047c, B:56:0x0480, B:58:0x0486, B:29:0x0165, B:31:0x016d, B:32:0x01c8, B:34:0x01d4, B:35:0x022c, B:37:0x0234, B:38:0x028a, B:40:0x0292, B:42:0x029e, B:43:0x02cb, B:44:0x0312, B:46:0x031a, B:47:0x035a, B:49:0x0362, B:50:0x0404, B:52:0x040c, B:54:0x043a), top: B:73:0x00d7 }] */
    @Override // com.argusoft.sewa.android.app.core.RoutineImmunisationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> retrieveWpdWomenByArea(java.lang.CharSequence r22, long r23, long r25, java.util.LinkedHashMap<java.lang.String, java.lang.String> r27, java.lang.String r28, java.util.Date r29, java.util.List<java.lang.Integer> r30) {
        /*
            Method dump skipped, instructions count: 1193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.RoutineImmunisationServiceImpl.retrieveWpdWomenByArea(java.lang.CharSequence, long, long, java.util.LinkedHashMap, java.lang.String, java.util.Date, java.util.List):java.util.List");
    }
}
