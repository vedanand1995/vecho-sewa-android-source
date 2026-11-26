package com.argusoft.sewa.android.app.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.FullFormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RIInventoryConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.SchoolBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FormMetaDataUtil {
    private static List<String> invalidStates;
    public Dao<FamilyBean, Integer> familyBeanDao;
    public SewaFhsServiceImpl fhsService;
    Dao<HealthInfrastructureBean, Integer> healthInfrastructureBeanDao;
    public ImmunisationServiceImpl immunisationService;
    public Dao<ListValueBean, Integer> listValueBeanDao;
    public Dao<LocationBean, Integer> locationBeanDao;
    public Dao<LocationMasterBean, Integer> locationMasterBeanDao;
    public Dao<MemberBean, Integer> memberBeanDao;
    SewaServiceRestClientImpl restClient;
    public Dao<SchoolBean, Integer> schoolBeanDao;
    Dao<VersionBean, Integer> versionBeanDao;

    static {
        ArrayList arrayList = new ArrayList();
        invalidStates = arrayList;
        arrayList.addAll(FhsConstants.FHS_ARCHIVED_CRITERIA_MEMBER_STATES);
        invalidStates.addAll(FhsConstants.FHS_DEAD_CRITERIA_MEMBER_STATES);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:1001:0x1ec8  */
    /* JADX WARN: Removed duplicated region for block: B:1007:0x1ef0  */
    /* JADX WARN: Removed duplicated region for block: B:1019:0x1f52  */
    /* JADX WARN: Removed duplicated region for block: B:1030:0x1f9d  */
    /* JADX WARN: Removed duplicated region for block: B:1196:0x2513  */
    /* JADX WARN: Removed duplicated region for block: B:1207:0x2531  */
    /* JADX WARN: Removed duplicated region for block: B:1297:0x16ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x05b9  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x060b  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0652  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0662  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0681  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x06b6  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x06c2  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x09bd  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0a40  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0a50  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0a60  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0a70  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0a80  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0a90  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0aa0  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0ab0  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0ac0  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0ad0  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0ae0  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0af0  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0b00  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0b10  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0b20  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0b30  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x0b40  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0b50  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0b60  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0b70  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0b80  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0b8c  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0b98  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0ba3  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0baf  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0bbb  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0bc6  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0bd1  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0bea  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0c7c  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0cad  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0d33  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x0ff6  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x1242  */
    /* JADX WARN: Removed duplicated region for block: B:559:0x129f  */
    /* JADX WARN: Removed duplicated region for block: B:670:0x1692  */
    /* JADX WARN: Removed duplicated region for block: B:705:0x1721  */
    /* JADX WARN: Removed duplicated region for block: B:824:0x1a7f  */
    /* JADX WARN: Removed duplicated region for block: B:833:0x1ad2  */
    /* JADX WARN: Removed duplicated region for block: B:836:0x1ae9  */
    /* JADX WARN: Removed duplicated region for block: B:839:0x1af6  */
    /* JADX WARN: Removed duplicated region for block: B:842:0x1b0a  */
    /* JADX WARN: Removed duplicated region for block: B:848:0x1b2b  */
    /* JADX WARN: Removed duplicated region for block: B:856:0x1b4d  */
    /* JADX WARN: Removed duplicated region for block: B:861:0x1b66  */
    /* JADX WARN: Removed duplicated region for block: B:864:0x1b78  */
    /* JADX WARN: Removed duplicated region for block: B:874:0x1ba7  */
    /* JADX WARN: Removed duplicated region for block: B:884:0x1bd6  */
    /* JADX WARN: Removed duplicated region for block: B:895:0x1c18  */
    /* JADX WARN: Removed duplicated region for block: B:896:0x1c20  */
    /* JADX WARN: Removed duplicated region for block: B:902:0x1c3f  */
    /* JADX WARN: Removed duplicated region for block: B:905:0x1c4c  */
    /* JADX WARN: Removed duplicated region for block: B:908:0x1c5d  */
    /* JADX WARN: Removed duplicated region for block: B:914:0x1c8b  */
    /* JADX WARN: Removed duplicated region for block: B:917:0x1c96  */
    /* JADX WARN: Removed duplicated region for block: B:923:0x1cbb  */
    /* JADX WARN: Removed duplicated region for block: B:929:0x1cdc  */
    /* JADX WARN: Removed duplicated region for block: B:935:0x1cfd  */
    /* JADX WARN: Removed duplicated region for block: B:941:0x1d1e  */
    /* JADX WARN: Removed duplicated region for block: B:947:0x1d3f  */
    /* JADX WARN: Removed duplicated region for block: B:950:0x1d4a  */
    /* JADX WARN: Removed duplicated region for block: B:953:0x1d59  */
    /* JADX WARN: Removed duplicated region for block: B:966:0x1da4  */
    /* JADX WARN: Removed duplicated region for block: B:972:0x1dd2  */
    /* JADX WARN: Removed duplicated region for block: B:978:0x1dfa  */
    /* JADX WARN: Removed duplicated region for block: B:991:0x1e49 A[Catch: JsonSyntaxException -> 0x1e6e, LOOP:9: B:989:0x1e43->B:991:0x1e49, LOOP_END, TRY_LEAVE, TryCatch #19 {JsonSyntaxException -> 0x1e6e, blocks: (B:988:0x1e26, B:989:0x1e43, B:991:0x1e49), top: B:1266:0x1e26 }] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:496:0x0fe7 -> B:1288:0x25fc). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setMetaDataForRchFormByFormType(java.lang.String r29, java.lang.String r30, java.lang.String r31, com.argusoft.sewa.android.app.databean.NotificationMobDataBean r32, android.content.SharedPreferences r33) {
        /*
            Method dump skipped, instructions count: 9938
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FormMetaDataUtil.setMetaDataForRchFormByFormType(java.lang.String, java.lang.String, java.lang.String, com.argusoft.sewa.android.app.databean.NotificationMobDataBean, android.content.SharedPreferences):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x06d4  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0746  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0c10  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0492 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0443 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setMetaDataForAdolescentForm(java.lang.Long r25, com.argusoft.sewa.android.app.databean.AdolescentDataBean r26, com.argusoft.sewa.android.app.databean.MemberDataBean r27, android.content.SharedPreferences r28, boolean r29, boolean r30, java.lang.String r31, java.lang.Integer r32, java.lang.Integer r33, java.lang.Integer r34) {
        /*
            Method dump skipped, instructions count: 3686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FormMetaDataUtil.setMetaDataForAdolescentForm(java.lang.Long, com.argusoft.sewa.android.app.databean.AdolescentDataBean, com.argusoft.sewa.android.app.databean.MemberDataBean, android.content.SharedPreferences, boolean, boolean, java.lang.String, java.lang.Integer, java.lang.Integer, java.lang.Integer):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x002f A[Catch: SQLException -> 0x0109, TryCatch #0 {SQLException -> 0x0109, blocks: (B:4:0x0018, B:6:0x001e, B:8:0x0034, B:10:0x0068, B:11:0x00a6, B:13:0x00ac, B:15:0x00c4, B:16:0x00c8, B:18:0x00dd, B:19:0x00e8, B:20:0x00ec, B:22:0x00f2, B:7:0x002f), top: B:27:0x0018 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.argusoft.sewa.android.app.databean.OptionDataBean> getMembersLessThan20(java.lang.String r11, com.argusoft.sewa.android.app.databean.MemberDataBean r12) {
        /*
            r10 = this;
            java.lang.String r0 = "state"
            java.lang.String r1 = "motherId"
            java.lang.String r2 = "familyId"
            java.util.Calendar r3 = java.util.Calendar.getInstance()
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r6 = 0
            r7 = 1
            if (r12 == 0) goto L2f
            java.lang.Long r8 = r12.getDob()     // Catch: java.sql.SQLException -> L109
            if (r8 == 0) goto L2f
            java.lang.Long r8 = r12.getDob()     // Catch: java.sql.SQLException -> L109
            long r8 = r8.longValue()     // Catch: java.sql.SQLException -> L109
            r3.setTimeInMillis(r8)     // Catch: java.sql.SQLException -> L109
            r8 = 16
            r3.add(r7, r8)     // Catch: java.sql.SQLException -> L109
            goto L34
        L2f:
            r8 = -20
            r3.add(r7, r8)     // Catch: java.sql.SQLException -> L109
        L34:
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.MemberBean, java.lang.Integer> r7 = r10.memberBeanDao     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.QueryBuilder r7 = r7.queryBuilder()     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r7 = r7.where()     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r11 = r7.eq(r2, r11)     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r11 = r11.and()     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r11 = r11.isNull(r1)     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r11 = r11.and()     // Catch: java.sql.SQLException -> L109
            java.lang.String r7 = "dob"
            java.util.Date r3 = r3.getTime()     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r11 = r11.gt(r7, r3)     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r11 = r11.and()     // Catch: java.sql.SQLException -> L109
            java.util.List<java.lang.String> r3 = com.argusoft.sewa.android.app.util.FormMetaDataUtil.invalidStates     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r11 = r11.notIn(r0, r3)     // Catch: java.sql.SQLException -> L109
            java.util.List r11 = r11.query()     // Catch: java.sql.SQLException -> L109
            if (r12 == 0) goto Le8
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.MemberBean, java.lang.Integer> r3 = r10.memberBeanDao     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.QueryBuilder r3 = r3.queryBuilder()     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r3 = r3.where()     // Catch: java.sql.SQLException -> L109
            java.lang.String r7 = r12.getId()     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r1 = r3.eq(r1, r7)     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r1 = r1.and()     // Catch: java.sql.SQLException -> L109
            java.lang.String r3 = r12.getFamilyId()     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r1 = r1.eq(r2, r3)     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r1 = r1.and()     // Catch: java.sql.SQLException -> L109
            java.lang.String r2 = "actualId"
            java.lang.String r12 = r12.getId()     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r12 = r1.ne(r2, r12)     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r12 = r12.and()     // Catch: java.sql.SQLException -> L109
            java.util.List<java.lang.String> r1 = com.argusoft.sewa.android.app.util.FormMetaDataUtil.invalidStates     // Catch: java.sql.SQLException -> L109
            com.j256.ormlite.stmt.Where r12 = r12.notIn(r0, r1)     // Catch: java.sql.SQLException -> L109
            java.util.List r12 = r12.query()     // Catch: java.sql.SQLException -> L109
            java.util.Iterator r0 = r12.iterator()     // Catch: java.sql.SQLException -> L109
        La6:
            boolean r1 = r0.hasNext()     // Catch: java.sql.SQLException -> L109
            if (r1 == 0) goto Lc8
            java.lang.Object r1 = r0.next()     // Catch: java.sql.SQLException -> L109
            com.argusoft.sewa.android.app.model.MemberBean r1 = (com.argusoft.sewa.android.app.model.MemberBean) r1     // Catch: java.sql.SQLException -> L109
            java.lang.String r2 = r1.getActualId()     // Catch: java.sql.SQLException -> L109
            r5.append(r2)     // Catch: java.sql.SQLException -> L109
            java.lang.String r2 = ","
            r5.append(r2)     // Catch: java.sql.SQLException -> L109
            boolean r2 = r11.contains(r1)     // Catch: java.sql.SQLException -> L109
            if (r2 != 0) goto La6
            r11.add(r1)     // Catch: java.sql.SQLException -> L109
            goto La6
        Lc8:
            java.util.Map<java.lang.String, java.lang.String> r0 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable     // Catch: java.sql.SQLException -> L109
            java.lang.String r1 = "actualGravida"
            int r2 = r12.size()     // Catch: java.sql.SQLException -> L109
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.sql.SQLException -> L109
            r0.put(r1, r2)     // Catch: java.sql.SQLException -> L109
            boolean r12 = r12.isEmpty()     // Catch: java.sql.SQLException -> L109
            if (r12 != 0) goto Le8
            java.util.Map<java.lang.String, java.lang.String> r12 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable     // Catch: java.sql.SQLException -> L109
            java.lang.String r0 = "selectedChildren"
            java.lang.String r1 = r5.toString()     // Catch: java.sql.SQLException -> L109
            r12.put(r0, r1)     // Catch: java.sql.SQLException -> L109
        Le8:
            java.util.Iterator r11 = r11.iterator()     // Catch: java.sql.SQLException -> L109
        Lec:
            boolean r12 = r11.hasNext()     // Catch: java.sql.SQLException -> L109
            if (r12 == 0) goto L115
            java.lang.Object r12 = r11.next()     // Catch: java.sql.SQLException -> L109
            com.argusoft.sewa.android.app.model.MemberBean r12 = (com.argusoft.sewa.android.app.model.MemberBean) r12     // Catch: java.sql.SQLException -> L109
            com.argusoft.sewa.android.app.databean.OptionDataBean r0 = new com.argusoft.sewa.android.app.databean.OptionDataBean     // Catch: java.sql.SQLException -> L109
            java.lang.String r1 = r12.getActualId()     // Catch: java.sql.SQLException -> L109
            java.lang.String r12 = com.argusoft.sewa.android.app.util.UtilBean.getMemberFullName(r12)     // Catch: java.sql.SQLException -> L109
            r0.<init>(r1, r12, r6)     // Catch: java.sql.SQLException -> L109
            r4.add(r0)     // Catch: java.sql.SQLException -> L109
            goto Lec
        L109:
            r11 = move-exception
            java.lang.Class r12 = r10.getClass()
            java.lang.String r12 = r12.getSimpleName()
            android.util.Log.e(r12, r6, r11)
        L115:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FormMetaDataUtil.getMembersLessThan20(java.lang.String, com.argusoft.sewa.android.app.databean.MemberDataBean):java.util.List");
    }

    private boolean checkIfMotherWasPregnantWithinLast3Years(MemberBean memberBean) {
        return (memberBean.getLmpDate() == null || memberBean.getLastDeliveryDate() == null || ((double) UtilBean.calculateYearsBetweenDates(memberBean.getLmpDate().getTime(), memberBean.getLastDeliveryDate().getTime())) > 2.0d) ? false : true;
    }

    private String getImmunisationGivenString(MemberBean memberBean) {
        String[] strArrSplit = memberBean.getImmunisationGiven().split(GlobalTypes.COMMA);
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (String str : strArrSplit) {
            String[] strArrSplit2 = str.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
            sb.append(UtilBean.getMyLabel(strArrSplit2[0]).replace("TT", RIInventoryConstants.TD));
            sb.append(" - ");
            sb.append(strArrSplit2[1]);
            i++;
            if (i != strArrSplit.length) {
                sb.append(LabelConstants.NEW_LINE);
            }
        }
        return sb.toString();
    }

    public String isChildImmunisedInOneYear(MemberBean memberBean) {
        if (memberBean.getImmunisationGiven() != null && memberBean.getImmunisationGiven().length() > 0) {
            String[] strArrSplit = memberBean.getImmunisationGiven().split(GlobalTypes.COMMA);
            ArrayList arrayList = new ArrayList();
            for (String str : strArrSplit) {
                arrayList.add(str.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH)[0]);
            }
            if (!arrayList.isEmpty()) {
                if (arrayList.contains("BCG") && arrayList.contains(RchConstants.OPV_1) && arrayList.contains(RchConstants.OPV_2) && arrayList.contains(RchConstants.OPV_3) && ((arrayList.contains(RchConstants.PENTA_1) || arrayList.contains(RchConstants.DPT_1)) && ((arrayList.contains(RchConstants.PENTA_2) || arrayList.contains(RchConstants.DPT_2)) && ((arrayList.contains(RchConstants.PENTA_3) || arrayList.contains(RchConstants.DPT_3)) && (arrayList.contains(RchConstants.MEASLES_RUBELLA_1) || arrayList.contains(RchConstants.MEASLES_1)))))) {
                    return UtilBean.getMyLabel("Yes");
                }
                return UtilBean.getMyLabel("No");
            }
            return UtilBean.getMyLabel("No");
        }
        return UtilBean.getMyLabel("No");
    }

    public String isChildImmunisedInTwoYear(MemberBean memberBean) {
        if (memberBean.getImmunisationGiven() != null && memberBean.getImmunisationGiven().length() > 0) {
            String[] strArrSplit = memberBean.getImmunisationGiven().split(GlobalTypes.COMMA);
            ArrayList arrayList = new ArrayList();
            for (String str : strArrSplit) {
                arrayList.add(str.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH)[0]);
            }
            if (!arrayList.isEmpty()) {
                if (arrayList.contains("BCG") && arrayList.contains(RchConstants.OPV_1) && arrayList.contains(RchConstants.OPV_2) && arrayList.contains(RchConstants.OPV_3) && arrayList.contains(RchConstants.OPV_BOOSTER) && ((arrayList.contains(RchConstants.PENTA_1) || arrayList.contains(RchConstants.DPT_1)) && ((arrayList.contains(RchConstants.PENTA_2) || arrayList.contains(RchConstants.DPT_2)) && ((arrayList.contains(RchConstants.PENTA_3) || arrayList.contains(RchConstants.DPT_3)) && ((arrayList.contains(RchConstants.MEASLES_RUBELLA_1) || arrayList.contains(RchConstants.MEASLES_1)) && (arrayList.contains(RchConstants.MEASLES_RUBELLA_2) || arrayList.contains(RchConstants.MEASLES_2))))))) {
                    return UtilBean.getMyLabel("Yes");
                }
                return UtilBean.getMyLabel("No");
            }
            return UtilBean.getMyLabel("No");
        }
        return UtilBean.getMyLabel("No");
    }

    public void setMetaDataForMemberUpdateForm(MemberDataBean memberDataBean, FamilyDataBean familyDataBean, SharedPreferences sharedPreferences) {
        Iterator<MemberDataBean> it;
        ArrayList arrayList;
        Object obj;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        sharedPreferences.edit().clear().apply();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DATE, String.valueOf(Calendar.getInstance().getTimeInMillis()));
        if (memberDataBean != null) {
            editorEdit.putString(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberDataBean.getId());
        }
        if (familyDataBean != null) {
            editorEdit.putString("familyId", familyDataBean.getId());
            if (familyDataBean.getAreaId() != null) {
                editorEdit.putString("locationId", familyDataBean.getAreaId());
            } else {
                editorEdit.putString("locationId", familyDataBean.getLocationId());
            }
        }
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedStructureData.currentFamilyDataBean = familyDataBean;
        SharedStructureData.currentMemberDataBean = memberDataBean;
        SharedStructureData.membersUnderTwenty.clear();
        Object obj2 = null;
        try {
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
            if (listQueryForEq != null && !listQueryForEq.isEmpty() && listQueryForEq.get(0).getValue().contains(GlobalTypes.MOB_FEATURE_ABDM_HEALTH_ID)) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.GENERATE_ABDM_HEALTH_ID, GlobalTypes.MOB_FEATURE_ABDM_HEALTH_ID);
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        if (familyDataBean != null && familyDataBean.getFamilyId() != null) {
            SharedStructureData.relatedPropertyHashTable.put("familyId", familyDataBean.getFamilyId());
            SharedStructureData.membersUnderTwenty = getMembersLessThan20(familyDataBean.getFamilyId(), null);
            if (!SharedStructureData.membersUnderTwenty.isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBERS_UNDER_20_AVAILABLE, "T");
            } else {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBERS_UNDER_20_AVAILABLE, "F");
            }
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HEAD_OF_FAMILY, familyDataBean.getHeadMemberName());
        }
        if (memberDataBean != null) {
            SharedStructureData.relatedPropertyHashTable.put("memberId", memberDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, UtilBean.getMemberFullName(memberDataBean));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AADHAR_NUMBER, memberDataBean.getAadharNumber());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BANK_ACCOUNT_NUMBER, memberDataBean.getAccountNumber());
            SharedStructureData.relatedPropertyHashTable.put("middleName", memberDataBean.getMiddleName());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, UtilBean.getMemberFullName(memberDataBean) + "(" + memberDataBean.getUniqueHealthId() + ")");
            if (memberDataBean.getDob() != null) {
                SharedStructureData.relatedPropertyHashTable.put("dob", memberDataBean.getDob().toString());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DOB_DISPLAY, simpleDateFormat.format(new Date(memberDataBean.getDob().longValue())));
            }
            SharedStructureData.relatedPropertyHashTable.put("familyHeadFlag", MorbiditiesConstant.TWO_PLUS);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CAN_ARCHIVE_HOF_MEMBER, MorbiditiesConstant.ONE_PLUS);
            if (memberDataBean.getFamilyHeadFlag() != null && memberDataBean.getFamilyHeadFlag().booleanValue()) {
                List<MemberDataBean> listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId = this.fhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(familyDataBean.getFamilyId());
                int i = 1;
                if (listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId != null && !listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId.isEmpty()) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<MemberDataBean> it2 = listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId.iterator();
                    while (it2.hasNext()) {
                        MemberDataBean next = it2.next();
                        if (next.getFamilyHeadFlag() == null || !next.getFamilyHeadFlag().booleanValue()) {
                            Calendar calendar = Calendar.getInstance();
                            it = it2;
                            calendar.add(i, -18);
                            Date time = calendar.getTime();
                            if (next.getDob() != null) {
                                ArrayList arrayList3 = arrayList2;
                                if (new Date(next.getDob().longValue()).before(time)) {
                                    obj = null;
                                    arrayList = arrayList3;
                                    arrayList.add(new OptionDataBean(next.getId(), UtilBean.getMemberFullName(next), null));
                                } else {
                                    arrayList = arrayList3;
                                }
                            } else {
                                arrayList = arrayList2;
                            }
                            obj = null;
                        } else {
                            it = it2;
                            ArrayList arrayList4 = arrayList2;
                            obj = obj2;
                            arrayList = arrayList4;
                        }
                        it2 = it;
                        i = 1;
                        Object obj3 = obj;
                        arrayList2 = arrayList;
                        obj2 = obj3;
                    }
                    ArrayList arrayList5 = arrayList2;
                    if (!memberDataBean.getState().equals(FhsConstants.FHS_MEMBER_STATE_ARCHIVED) && !memberDataBean.getState().equals(FhsConstants.CFHC_MEMBER_STATE_DEAD)) {
                        SharedStructureData.nonHofMemberNameList = arrayList5;
                    }
                }
                if (SharedStructureData.nonHofMemberNameList == null || SharedStructureData.nonHofMemberNameList.isEmpty()) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CAN_ARCHIVE_HOF_MEMBER, MorbiditiesConstant.TWO_PLUS);
                }
                Iterator<MemberDataBean> it3 = familyDataBean.getMembers().iterator();
                while (it3.hasNext()) {
                    if (it3.next().getState().equals(FhsConstants.CFHC_MEMBER_STATE_VERIFIED)) {
                        Integer num = SharedStructureData.totalVerifiedFamilyMembersCount;
                        SharedStructureData.totalVerifiedFamilyMembersCount = Integer.valueOf(SharedStructureData.totalVerifiedFamilyMembersCount.intValue() + 1);
                    }
                }
                SharedStructureData.relatedPropertyHashTable.put("familyHeadFlag", MorbiditiesConstant.ONE_PLUS);
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.GRANDFATHER_NAME, memberDataBean.getGrandfatherName());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HEAD_OF_FAMILY, UtilBean.getMemberFullName(memberDataBean));
            }
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_FULL_NAME, UtilBean.getMemberFullName(memberDataBean));
            SharedStructureData.relatedPropertyHashTable.put("firstName", memberDataBean.getFirstName());
            SharedStructureData.relatedPropertyHashTable.put("middleName", memberDataBean.getMiddleName());
            SharedStructureData.relatedPropertyHashTable.put("lastName", memberDataBean.getLastName());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_BASED_ON_AADHAR, memberDataBean.getNameBasedOnAadhar());
            SharedStructureData.relatedPropertyHashTable.put("mobileNumber", memberDataBean.getMobileNumber());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.IFSC, memberDataBean.getIfsc());
            SharedStructureData.relatedPropertyHashTable.put("uniqueHealthId", memberDataBean.getUniqueHealthId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DEFAULT_MARITAL_STATUS, memberDataBean.getMaritalStatus());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ANS_12, MorbiditiesConstant.ONE_PLUS);
            if (memberDataBean.isAadharUpdated()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AADHAR_AVAILABLE, MorbiditiesConstant.ONE_PLUS);
            }
            if (memberDataBean.getNormalCycleDays() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NORMAL_CYCLE_DAYS, memberDataBean.getNormalCycleDays().toString());
            }
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_PLANNING_METHOD, memberDataBean.getFamilyPlanningMethod());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.IS_PREGNANT, MorbiditiesConstant.TWO_PLUS);
            if (memberDataBean.getGender() != null && memberDataBean.getGender().equals("F")) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ANS_12, MorbiditiesConstant.TWO_PLUS);
                if (memberDataBean.getIsPregnantFlag() != null && memberDataBean.getIsPregnantFlag().booleanValue()) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.IS_PREGNANT, MorbiditiesConstant.ONE_PLUS);
                }
                if (memberDataBean.getLmpDate() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.LMP, memberDataBean.getLmpDate().toString());
                }
            }
            if (memberDataBean.getEducationStatus() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.EDUCATION_STATUS, (String) Objects.requireNonNull(this.fhsService.getListValueById(Integer.valueOf(Integer.parseInt(memberDataBean.getEducationStatus())))));
            }
            if (memberDataBean.getCongenitalAnomalyIds() != null && !memberDataBean.getCongenitalAnomalyIds().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CONGENITAL_STATUS, MorbiditiesConstant.ONE_PLUS);
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CONGENITAL_ANOMALY_IDS, memberDataBean.getCongenitalAnomalyIds());
            } else {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CONGENITAL_STATUS, MorbiditiesConstant.TWO_PLUS);
            }
            if (memberDataBean.getChronicDiseaseIds() != null && !memberDataBean.getChronicDiseaseIds().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CHRONIC_DISEASE_STATUS, MorbiditiesConstant.ONE_PLUS);
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CHRONIC_DISEASE_IDS, memberDataBean.getChronicDiseaseIds());
            } else {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CHRONIC_DISEASE_STATUS, MorbiditiesConstant.TWO_PLUS);
            }
            if (memberDataBean.getCurrentDiseaseIds() != null && !memberDataBean.getCurrentDiseaseIds().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DISEASE_STATUS, MorbiditiesConstant.ONE_PLUS);
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DISEASE_IDS, memberDataBean.getCurrentDiseaseIds());
            } else {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DISEASE_STATUS, MorbiditiesConstant.TWO_PLUS);
            }
            if (memberDataBean.getEyeIssueIds() != null && !memberDataBean.getEyeIssueIds().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.EYE_ISSUE_STATUS, MorbiditiesConstant.ONE_PLUS);
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.EYE_ISSUE_IDS, memberDataBean.getEyeIssueIds());
            } else {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.EYE_ISSUE_STATUS, MorbiditiesConstant.TWO_PLUS);
            }
            if (memberDataBean.getMotherId() != null) {
                SharedStructureData.relatedPropertyHashTable.put("motherId", String.valueOf(memberDataBean.getMotherId()));
            }
            if (memberDataBean.getHealthIdNumber() != null && !memberDataBean.getHealthIdNumber().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put("healthIdNumber", memberDataBean.getHealthIdNumber());
            }
            if (memberDataBean.getGender() != null && memberDataBean.getGender().equals("F") && memberDataBean.getMaritalStatus() != null && memberDataBean.getMaritalStatus().equals("629")) {
                SharedStructureData.membersUnderTwenty = getMembersLessThan20(memberDataBean.getFamilyId(), memberDataBean);
                if (!SharedStructureData.membersUnderTwenty.isEmpty()) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBERS_UNDER_20_AVAILABLE, "T");
                } else {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBERS_UNDER_20_AVAILABLE, "F");
                }
            }
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.RCH_ID, this.fhsService.getRchIdByMemberId(memberDataBean.getId()));
            if (memberDataBean.getAdditionalInfo() != null && !memberDataBean.getAdditionalInfo().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MO_VERIFIED, Boolean.TRUE.equals(((MemberAdditionalInfoDataBean) new GsonBuilder().registerTypeAdapter(Date.class, UtilBean.JSON_DATE_DESERIALIZER).create().fromJson(memberDataBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class)).getNsUploaded()) ? "T" : "F");
            }
            if (memberDataBean.getNameAsPerBankAccount() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_AS_PER_BANK, memberDataBean.getNameAsPerBankAccount());
            }
            if (memberDataBean.getPmjayNumber() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PMJAY_CARD_NUMBER, memberDataBean.getPmjayNumber());
            }
            if (memberDataBean.getBrnNumber() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BRN_NUMBER, memberDataBean.getBrnNumber());
            }
        }
        editorEdit.apply();
    }

    public void setMetaDataForNCDForms(MemberDataBean memberDataBean, FamilyDataBean familyDataBean, SharedPreferences sharedPreferences) {
        SharedStructureData.relatedPropertyHashTable.clear();
        sharedPreferences.edit().clear().apply();
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DATE, String.valueOf(Calendar.getInstance().getTimeInMillis()));
        Map<String, String> mapRetrieveAshaInfoByAreaId = SharedStructureData.sewaFhsService.retrieveAshaInfoByAreaId(familyDataBean.getAreaId());
        if (mapRetrieveAshaInfoByAreaId != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ASHA_NAME, UtilBean.getNotAvailableIfNull(mapRetrieveAshaInfoByAreaId.get("name")));
        }
        Map<String, String> mapRetrieveAshaInfoByAreaId2 = SharedStructureData.sewaFhsService.retrieveAshaInfoByAreaId(familyDataBean.getLocationId());
        if (mapRetrieveAshaInfoByAreaId2 != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FHW_NAME, UtilBean.getNotAvailableIfNull(mapRetrieveAshaInfoByAreaId2.get("name")));
        }
        LocationMasterBean locationByActualId = SharedStructureData.sewaFhsService.getLocationByActualId(Integer.valueOf(Integer.parseInt(familyDataBean.getLocationId())));
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.VILLAGE, locationByActualId.getName());
        LocationMasterBean parentLocation = SharedStructureData.sewaFhsService.getParentLocation(locationByActualId.getParent());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SUB_CENTRE, parentLocation.getName());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PHC, SharedStructureData.sewaFhsService.getParentLocation(parentLocation.getParent()).getName());
        if (memberDataBean != null) {
            SharedStructureData.relatedPropertyHashTable.put("memberId", memberDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put("uniqueHealthId", memberDataBean.getUniqueHealthId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_NAME, UtilBean.getMemberFullName(memberDataBean));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, UtilBean.getMemberFullName(memberDataBean));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, UtilBean.getMemberFullName(memberDataBean) + "(" + memberDataBean.getUniqueHealthId() + ")");
            if (memberDataBean.getGender() != null) {
                SharedStructureData.relatedPropertyHashTable.put("gender", UtilBean.getGenderLabelFromValue(memberDataBean.getGender()));
            }
            if (memberDataBean.getMobileNumber() != null) {
                SharedStructureData.relatedPropertyHashTable.put("mobileNumber", memberDataBean.getMobileNumber());
            }
            if (memberDataBean.getDob() != null) {
                SharedStructureData.relatedPropertyHashTable.put("dob", memberDataBean.getDob().toString());
                int[] iArrCalculateAgeYearMonthDay = UtilBean.calculateAgeYearMonthDay(memberDataBean.getDob().longValue());
                String ageDisplay = UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay[0], iArrCalculateAgeYearMonthDay[1], iArrCalculateAgeYearMonthDay[2]);
                if (ageDisplay != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE_DISPLAY, ageDisplay);
                }
            }
            if (memberDataBean.getCbacDate() != null && new Date(memberDataBean.getCbacDate().longValue()).after(UtilBean.getStartOfFinancialYear(null))) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CBAC_DONE, MorbiditiesConstant.ONE_PLUS);
            }
            if (memberDataBean.getCbacDate() != null) {
                SharedStructureData.relatedPropertyHashTable.put("cbacDate", String.valueOf(memberDataBean.getCbacDate()));
            }
        }
        if (familyDataBean != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_ACTUAL_ID, familyDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ADDRESS, UtilBean.getFamilyFullAddress(familyDataBean));
            if (familyDataBean.getAnyMemberCbacDone() != null && familyDataBean.getAnyMemberCbacDone().booleanValue()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ANY_MEMBER_CBAC_DONE, MorbiditiesConstant.ONE_PLUS);
                if (familyDataBean.getTypeOfHouse() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TYPE_OF_HOUSE, FullFormConstants.getFullFormOfCBACFamilyDataConstants(familyDataBean.getTypeOfHouse()));
                }
                if (familyDataBean.getTypeOfToilet() != null) {
                    ArrayList arrayList = new ArrayList();
                    for (String str : familyDataBean.getTypeOfToilet().split(GlobalTypes.COMMA)) {
                        arrayList.add(FullFormConstants.getFullFormOfCBACFamilyDataConstants(str));
                    }
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AVAILABILITY_OF_TOILET, TextUtils.join(", ", arrayList));
                }
                if (familyDataBean.getElectricityAvailability() != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (String str2 : familyDataBean.getElectricityAvailability().split(GlobalTypes.COMMA)) {
                        arrayList2.add(FullFormConstants.getFullFormOfCBACFamilyDataConstants(str2));
                    }
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AVAILABILITY_OF_ELECTRICITY, TextUtils.join(", ", arrayList2));
                }
                if (familyDataBean.getDrinkingWaterSource() != null) {
                    ArrayList arrayList3 = new ArrayList();
                    for (String str3 : familyDataBean.getDrinkingWaterSource().split(GlobalTypes.COMMA)) {
                        arrayList3.add(FullFormConstants.getFullFormOfCBACFamilyDataConstants(str3));
                    }
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SOURCE_OF_DRINKING_WATER, TextUtils.join(", ", arrayList3));
                }
                if (familyDataBean.getFuelForCooking() != null) {
                    ArrayList arrayList4 = new ArrayList();
                    for (String str4 : familyDataBean.getFuelForCooking().split(GlobalTypes.COMMA)) {
                        arrayList4.add(FullFormConstants.getFullFormOfCBACFamilyDataConstants(str4));
                    }
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TYPE_OF_FUEL_USED, TextUtils.join(", ", arrayList4));
                }
                if (familyDataBean.getVehicleDetails() != null) {
                    ArrayList arrayList5 = new ArrayList();
                    for (String str5 : familyDataBean.getVehicleDetails().split(GlobalTypes.COMMA)) {
                        arrayList5.add(FullFormConstants.getFullFormOfCBACFamilyDataConstants(str5));
                    }
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TYPE_OF_MOTORIZED_VEHICLE, TextUtils.join(", ", arrayList5));
                }
                if (familyDataBean.getHouseOwnershipStatus() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HOUSE_OWNERSHIP_STATUS, FullFormConstants.getFullFormOfCBACFamilyDataConstants(familyDataBean.getHouseOwnershipStatus()));
                }
                if (familyDataBean.getRationCardNumber() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.RATION_CARD_NUMBER, familyDataBean.getRationCardNumber());
                }
                if (familyDataBean.getAnnualIncome() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ANNUAL_HOUSEHOLD_INCOME, FullFormConstants.getFullFormOfCBACFamilyDataConstants(familyDataBean.getAnnualIncome()));
                    return;
                }
                return;
            }
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ANY_MEMBER_CBAC_DONE, MorbiditiesConstant.TWO_PLUS);
        }
    }

    public void setMetaDataForNPCBForms(Long l) {
        String valueOfListValuesById;
        String valueOfListValuesById2;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
            SharedStructureData.relatedPropertyHashTable.clear();
            Calendar calendar = Calendar.getInstance();
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SERVICE_DATE, String.valueOf(calendar.getTimeInMillis()));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DATE, String.valueOf(calendar.getTimeInMillis()));
            MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(l);
            if (memberBeanRetrieveMemberBeanByActualId != null) {
                SharedStructureData.relatedPropertyHashTable.put("memberId", memberBeanRetrieveMemberBeanByActualId.getActualId());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberBeanRetrieveMemberBeanByActualId.getActualId());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_NAME, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId));
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId));
                SharedStructureData.relatedPropertyHashTable.put("uniqueHealthId", memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId());
                SharedStructureData.relatedPropertyHashTable.put("familyId", memberBeanRetrieveMemberBeanByActualId.getFamilyId());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PHONE_NUMBER, memberBeanRetrieveMemberBeanByActualId.getMobileNumber());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId) + "(" + memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId() + ")");
                if (memberBeanRetrieveMemberBeanByActualId.getDob() != null) {
                    SharedStructureData.relatedPropertyHashTable.put("dob", String.valueOf(memberBeanRetrieveMemberBeanByActualId.getDob().getTime()));
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DOB_DISPLAY, simpleDateFormat.format(memberBeanRetrieveMemberBeanByActualId.getDob()));
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE_DISPLAY, UtilBean.getAgeDisplayOnGivenDate(memberBeanRetrieveMemberBeanByActualId.getDob(), new Date()));
                }
                String fullFormOfGender = FullFormConstants.getFullFormOfGender(memberBeanRetrieveMemberBeanByActualId.getGender());
                if (fullFormOfGender != null) {
                    SharedStructureData.relatedPropertyHashTable.put("gender", fullFormOfGender);
                }
                if (memberBeanRetrieveMemberBeanByActualId.getAdditionalInfo() != null) {
                    MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberBeanRetrieveMemberBeanByActualId.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                    if (memberAdditionalInfoDataBean.getBloodSugar() != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BLOOD_SUGAR, memberAdditionalInfoDataBean.getBloodSugar().toString());
                    }
                    if (memberAdditionalInfoDataBean.getSymptomsExperiencedNew() != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.EYE_PROBLEMS, memberAdditionalInfoDataBean.getSymptomsExperiencedNew());
                    }
                    if (memberAdditionalInfoDataBean.getMedicalHistoryNew() != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEDICAL_HISTORY, memberAdditionalInfoDataBean.getMedicalHistoryNew());
                    }
                    if (memberAdditionalInfoDataBean.getFamilyMedicalHistoryNew() != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_MEDICAL_HISTORY, memberAdditionalInfoDataBean.getFamilyMedicalHistoryNew());
                    }
                }
                FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(memberBeanRetrieveMemberBeanByActualId.getFamilyId());
                if (familyDataBeanRetrieveFamilyDataBeanByFamilyId != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_ACTUAL_ID, familyDataBeanRetrieveFamilyDataBeanByFamilyId.getId());
                    SharedStructureData.relatedPropertyHashTable.put("areaId", familyDataBeanRetrieveFamilyDataBeanByFamilyId.getAreaId());
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ADDRESS, UtilBean.getFamilyFullAddress(familyDataBeanRetrieveFamilyDataBeanByFamilyId));
                    if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion() != null && (valueOfListValuesById2 = this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion())) != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.RELIGION, valueOfListValuesById2);
                    }
                    if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste() != null && (valueOfListValuesById = this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste())) != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CASTE, valueOfListValuesById);
                    }
                }
                if (memberBeanRetrieveMemberBeanByActualId.getAdditionalInfo() != null) {
                    MemberAdditionalInfoDataBean memberAdditionalInfoDataBean2 = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberBeanRetrieveMemberBeanByActualId.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                    if (memberAdditionalInfoDataBean2.getPresumptiveDiagnosis() != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PRESUMPTIVE_DIAGNOSIS, memberAdditionalInfoDataBean2.getPresumptiveDiagnosis());
                    }
                    if (memberAdditionalInfoDataBean2.getVisionData() != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.VISION_DATA, memberAdditionalInfoDataBean2.getVisionData());
                    }
                }
                if (memberBeanRetrieveMemberBeanByActualId.isAadharUpdated()) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AADHAR_AVAILABLE, MorbiditiesConstant.ONE_PLUS);
                }
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    public void setMetaDataForNPCBFormsFromOnline(MemberDataBean memberDataBean) {
        String valueOfListValuesById;
        String valueOfListValuesById2;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
            SharedStructureData.relatedPropertyHashTable.clear();
            Calendar calendar = Calendar.getInstance();
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SERVICE_DATE, String.valueOf(calendar.getTimeInMillis()));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DATE, String.valueOf(calendar.getTimeInMillis()));
            if (memberDataBean != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberDataBean.getId());
                if (memberDataBean.getNotificationId() != null) {
                    SharedStructureData.relatedPropertyHashTable.put("notificationId", String.valueOf(memberDataBean.getNotificationId()));
                }
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_ACTUAL_ID, memberDataBean.getFamilyActualId());
                SharedStructureData.relatedPropertyHashTable.put("areaId", memberDataBean.getAreaId());
                setOnsiteBlockVillageIdsFromMemberArea(memberDataBean.getAreaId());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_NAME, UtilBean.getMemberFullName(memberDataBean));
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, UtilBean.getMemberFullName(memberDataBean));
                SharedStructureData.relatedPropertyHashTable.put("uniqueHealthId", memberDataBean.getUniqueHealthId());
                SharedStructureData.relatedPropertyHashTable.put("familyId", memberDataBean.getFamilyId());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PHONE_NUMBER, memberDataBean.getMobileNumber());
                SharedStructureData.relatedPropertyHashTable.put("healthIdNumber", memberDataBean.getHealthIdNumber());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BPL_CARD_NUMBER, memberDataBean.getBplCardNumber());
                String memberFullName = UtilBean.getMemberFullName(memberDataBean);
                if (memberDataBean.getUniqueHealthId() != null && !memberDataBean.getUniqueHealthId().trim().isEmpty()) {
                    memberFullName = memberFullName + "(" + memberDataBean.getUniqueHealthId() + ")";
                }
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, memberFullName);
                if (memberDataBean.getDob() != null) {
                    SharedStructureData.relatedPropertyHashTable.put("dob", String.valueOf(new Date(memberDataBean.getDob().longValue()).getTime()));
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DOB_DISPLAY, simpleDateFormat.format(memberDataBean.getDob()));
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE_DISPLAY, UtilBean.getAgeDisplayOnGivenDate(new Date(memberDataBean.getDob().longValue()), new Date()));
                }
                String fullFormOfGender = FullFormConstants.getFullFormOfGender(memberDataBean.getGender());
                if (fullFormOfGender != null) {
                    SharedStructureData.relatedPropertyHashTable.put("gender", fullFormOfGender);
                }
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ADDRESS, memberDataBean.getAddress());
                if (memberDataBean.getReligion() != null && (valueOfListValuesById2 = this.fhsService.getValueOfListValuesById(memberDataBean.getReligion())) != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.RELIGION, valueOfListValuesById2);
                }
                if (memberDataBean.getCaste() != null && (valueOfListValuesById = this.fhsService.getValueOfListValuesById(memberDataBean.getCaste())) != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CASTE, valueOfListValuesById);
                }
                if (memberDataBean.getAdditionalInfo() != null) {
                    MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberDataBean.getAdditionalInfo(), new TypeToken<MemberAdditionalInfoDataBean>() { // from class: com.argusoft.sewa.android.app.util.FormMetaDataUtil.9
                    }.getType());
                    if (memberAdditionalInfoDataBean.getVisionData() != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.GLASS_PRESCRIPTION, formatVisionDataString(String.valueOf(memberAdditionalInfoDataBean.getVisionData())));
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SPECTS_DATA, String.valueOf(memberAdditionalInfoDataBean.getVisionData()));
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.VISION_DATA, String.valueOf(memberAdditionalInfoDataBean.getVisionData()));
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.OS_TREATMENT, String.valueOf(memberAdditionalInfoDataBean.getOsTreatment()));
                    }
                    String strBuildEyeProblemsSummary = buildEyeProblemsSummary(memberAdditionalInfoDataBean);
                    if (!strBuildEyeProblemsSummary.isEmpty()) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.REASONS_FOR_REFERRAL, strBuildEyeProblemsSummary);
                    }
                }
                if (memberDataBean.isAadharUpdated()) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AADHAR_AVAILABLE, MorbiditiesConstant.ONE_PLUS);
                }
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    private void setOnsiteBlockVillageIdsFromMemberArea(String str) throws NumberFormatException {
        if (str == null || str.trim().isEmpty() || SharedStructureData.locationMasterService == null) {
            return;
        }
        try {
            Integer numValueOf = Integer.valueOf(str.trim());
            LocationMasterBean blockLevelAncestor = SharedStructureData.locationMasterService.getBlockLevelAncestor(numValueOf);
            if (blockLevelAncestor != null && blockLevelAncestor.getActualID() != null) {
                List<LocationMasterBean> listRetrieveVillagesUnderAncestor = SharedStructureData.locationMasterService.retrieveVillagesUnderAncestor(Integer.valueOf(blockLevelAncestor.getActualID().intValue()));
                StringBuilder sb = new StringBuilder();
                for (LocationMasterBean locationMasterBean : listRetrieveVillagesUnderAncestor) {
                    if (sb.length() > 0) {
                        sb.append(GlobalTypes.COMMA);
                    }
                    sb.append(locationMasterBean.getActualID());
                }
                Log.i(getClass().getSimpleName(), "setOnsiteBlockVillageIdsFromMemberArea: memberAreaId=" + numValueOf + " block=" + blockLevelAncestor.getActualID() + " villagesFound=" + listRetrieveVillagesUnderAncestor.size());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ONSITE_BLOCK_VILLAGE_IDS, sb.toString());
                return;
            }
            Log.i(getClass().getSimpleName(), "setOnsiteBlockVillageIdsFromMemberArea: no block ancestor found for member areaId=" + numValueOf + " - either that location isn't in the local location_master table, or its parent chain up to District is incomplete");
        } catch (NumberFormatException e) {
            Log.e(getClass().getSimpleName(), "Invalid member areaId: " + str, e);
        }
    }

    private String buildEyeProblemsSummary(MemberAdditionalInfoDataBean memberAdditionalInfoDataBean) {
        ArrayList<String> arrayList = new ArrayList();
        String symptomsExperiencedNew = memberAdditionalInfoDataBean.getSymptomsExperiencedNew();
        if (symptomsExperiencedNew != null && !symptomsExperiencedNew.trim().isEmpty()) {
            for (String str : symptomsExperiencedNew.split(GlobalTypes.COMMA)) {
                String strTrim = str.trim();
                if (!strTrim.isEmpty() && !"NONE".equalsIgnoreCase(strTrim)) {
                    arrayList.add(strTrim.replace("_", " "));
                }
            }
        }
        if (Boolean.FALSE.equals(memberAdditionalInfoDataBean.getIsBigEVisible())) {
            arrayList.add("Big letter visibility issue");
        }
        if (Boolean.FALSE.equals(memberAdditionalInfoDataBean.getAreThreeEVisible())) {
            arrayList.add("Multiple letter visibility issue");
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : arrayList) {
            if (sb.length() > 0) {
                sb.append(LabelConstants.NEW_LINE);
            }
            sb.append("• ");
            sb.append(str2);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0196  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String formatVisionDataString(java.lang.String r26) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FormMetaDataUtil.formatVisionDataString(java.lang.String):java.lang.String");
    }

    private static String getParamValue(String str, String str2) {
        if (str != null && !str.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (next.trim().equalsIgnoreCase(str2)) {
                        return jSONObject.getString(next).trim();
                    }
                }
            } catch (Exception unused) {
                for (String str3 : str.split("\\|")) {
                    String[] strArrSplit = str3.split(":");
                    if (strArrSplit.length == 2 && strArrSplit[0].trim().equalsIgnoreCase(str2)) {
                        return strArrSplit[1].trim();
                    }
                }
            }
        }
        return "";
    }

    public void setMetaDataForOtherNotificationsForm(NotificationMobDataBean notificationMobDataBean) {
        String fhwDetailString;
        String valueOfListValuesById;
        String valueOfListValuesById2;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedStructureData.membersUnderTwenty.clear();
        SharedStructureData.selectedHealthInfra = null;
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DATE, String.valueOf(Calendar.getInstance().getTimeInMillis()));
        if (notificationMobDataBean != null) {
            SharedStructureData.relatedPropertyHashTable.put("notificationId", notificationMobDataBean.getId().toString());
            if (notificationMobDataBean.getScheduledDate() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.IRON_SUCROSE_DUE_DATE, simpleDateFormat.format(new Date(notificationMobDataBean.getScheduledDate().longValue())));
            }
            MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(notificationMobDataBean.getMemberId());
            if (memberBeanRetrieveMemberBeanByActualId != null) {
                SharedStructureData.relatedPropertyHashTable.put("memberId", memberBeanRetrieveMemberBeanByActualId.getActualId());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberBeanRetrieveMemberBeanByActualId.getActualId());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId));
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_NAME, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId));
                SharedStructureData.relatedPropertyHashTable.put("uniqueHealthId", memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId());
                SharedStructureData.relatedPropertyHashTable.put("familyId", memberBeanRetrieveMemberBeanByActualId.getFamilyId());
                SharedStructureData.relatedPropertyHashTable.put("healthIdNumber", memberBeanRetrieveMemberBeanByActualId.getHealthIdNumber());
                try {
                } catch (SQLException e) {
                    Log.e(getClass().getSimpleName(), null, e);
                }
                MemberBean memberBeanQueryForFirst = memberBeanRetrieveMemberBeanByActualId.getMotherId() != null ? this.memberBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, memberBeanRetrieveMemberBeanByActualId.getMotherId()).queryForFirst() : null;
                String fullFormOfGender = FullFormConstants.getFullFormOfGender(memberBeanRetrieveMemberBeanByActualId.getGender());
                if (fullFormOfGender != null) {
                    SharedStructureData.relatedPropertyHashTable.put("gender", fullFormOfGender);
                }
                if (memberBeanQueryForFirst != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PHONE_NUMBER, memberBeanQueryForFirst.getMobileNumber());
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MOTHER_HEALTH_ID, memberBeanQueryForFirst.getUniqueHealthId());
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MOTHER_NAME, UtilBean.getMemberFullName(memberBeanQueryForFirst));
                }
                new MemberAdditionalInfoDataBean();
                if (memberBeanRetrieveMemberBeanByActualId.getAdditionalInfo() != null && !memberBeanRetrieveMemberBeanByActualId.getAdditionalInfo().isEmpty()) {
                    MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new GsonBuilder().registerTypeAdapter(Date.class, UtilBean.JSON_DATE_DESERIALIZER).create().fromJson(memberBeanRetrieveMemberBeanByActualId.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                    if (memberBeanRetrieveMemberBeanByActualId.getWeight() != null) {
                        String str = memberBeanRetrieveMemberBeanByActualId.getWeight().toString() + " " + UtilBean.getMyLabel(LabelConstants.UNIT_OF_MASS_IN_KG);
                        if (memberAdditionalInfoDataBean.getLastWeightDate() != null) {
                            simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
                            str = str + " (" + simpleDateFormat.format(new Date(memberAdditionalInfoDataBean.getLastWeightDate().longValue())) + ")";
                        }
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.LAST_WEIGHT_AND_DATE, str);
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.LAST_WEIGHT, str);
                    }
                }
                if (memberBeanRetrieveMemberBeanByActualId.getPlaceOfBirth() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PLACE_OF_BIRTH, memberBeanRetrieveMemberBeanByActualId.getPlaceOfBirth());
                }
                if (memberBeanRetrieveMemberBeanByActualId.getBirthWeight() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BIRTH_WEIGHT, memberBeanRetrieveMemberBeanByActualId.getBirthWeight().toString());
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BIRTH_WEIGHT_DISPLAY, memberBeanRetrieveMemberBeanByActualId.getBirthWeight().toString() + " " + UtilBean.getMyLabel(LabelConstants.UNIT_OF_MASS_IN_KG));
                }
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId) + "(" + memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId() + ")");
                if (memberBeanRetrieveMemberBeanByActualId.getDob() != null) {
                    SharedStructureData.relatedPropertyHashTable.put("dob", String.valueOf(memberBeanRetrieveMemberBeanByActualId.getDob().getTime()));
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DOB_DISPLAY, simpleDateFormat.format(memberBeanRetrieveMemberBeanByActualId.getDob()));
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE_DISPLAY, UtilBean.getAgeDisplayOnGivenDate(memberBeanRetrieveMemberBeanByActualId.getDob(), new Date()));
                }
                if (memberBeanRetrieveMemberBeanByActualId.getLmpDate() != null) {
                    SharedStructureData.relatedPropertyHashTable.put("lmpDate", String.valueOf(memberBeanRetrieveMemberBeanByActualId.getLmpDate().getTime()));
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.LMP_DATE_DISPLAY, simpleDateFormat.format(memberBeanRetrieveMemberBeanByActualId.getLmpDate()));
                }
                if (memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.IMMUNISATION, memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven().replace(GlobalTypes.MORBIDITY_SEPARATOR_HASH, " - ").replace(GlobalTypes.COMMA, LabelConstants.NEW_LINE));
                    if (memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven().contains(RchConstants.TT1)) {
                        for (String str2 : memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven().split(GlobalTypes.COMMA)) {
                            String[] strArrSplit = str2.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                            if (strArrSplit[0].equals(RchConstants.TT1)) {
                                try {
                                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TT_1_GIVEN_ON, String.valueOf(simpleDateFormat.parse(strArrSplit[1]).getTime()));
                                } catch (ParseException e2) {
                                    Log.e(getClass().getSimpleName(), null, e2);
                                }
                            }
                        }
                    }
                }
                FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(memberBeanRetrieveMemberBeanByActualId.getFamilyId());
                if (familyDataBeanRetrieveFamilyDataBeanByFamilyId != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_ACTUAL_ID, familyDataBeanRetrieveFamilyDataBeanByFamilyId.getId());
                    if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag() != null && familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag().booleanValue()) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.IS_BPL, LabelConstants.FAMILY_IS_BPL);
                    } else {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.IS_BPL, LabelConstants.FAMILY_IS_NOT_BPL);
                    }
                    if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion() != null && (valueOfListValuesById2 = this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion())) != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.RELIGION, valueOfListValuesById2);
                    }
                    if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste() != null && (valueOfListValuesById = this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste())) != null) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CASTE, valueOfListValuesById);
                    }
                    if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getAreaId() != null) {
                        try {
                            LocationMasterBean locationMasterBeanQueryForFirst = this.locationMasterBeanDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, familyDataBeanRetrieveFamilyDataBeanByFamilyId.getAreaId()).queryForFirst();
                            if (locationMasterBeanQueryForFirst != null && (fhwDetailString = locationMasterBeanQueryForFirst.getFhwDetailString()) != null) {
                                Map map = (Map) ((List) new Gson().fromJson(fhwDetailString, new TypeToken<List<Map<String, String>>>() { // from class: com.argusoft.sewa.android.app.util.FormMetaDataUtil.10
                                }.getType())).get(0);
                                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ASHA_INFO, ((String) map.get("name")) + " (" + ((String) map.get("mobileNumber")) + ")");
                            }
                        } catch (SQLException e3) {
                            Log.e(getClass().getSimpleName(), null, e3);
                        }
                    }
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ADDRESS, UtilBean.getFamilyFullAddress(familyDataBeanRetrieveFamilyDataBeanByFamilyId));
                }
            }
        }
    }

    public void setMetaDataForCovidTravellersForm(CovidTravellersInfoBean covidTravellersInfoBean, NotificationMobDataBean notificationMobDataBean) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DATE, String.valueOf(Calendar.getInstance().getTimeInMillis()));
        SharedStructureData.relatedPropertyHashTable.put("actualId", covidTravellersInfoBean.getActualId().toString());
        SharedStructureData.relatedPropertyHashTable.put("name", covidTravellersInfoBean.getName());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, covidTravellersInfoBean.getName());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ADDRESS, covidTravellersInfoBean.getAddress());
        SharedStructureData.relatedPropertyHashTable.put("mobileNumber", covidTravellersInfoBean.getMobileNumber());
        if (covidTravellersInfoBean.getDateOfDeparture() != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TRAVEL_DATE, String.valueOf(covidTravellersInfoBean.getDateOfDeparture().getTime()));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TRAVEL_DATE_DISPLAY, simpleDateFormat.format(covidTravellersInfoBean.getDateOfDeparture()));
        }
        if (covidTravellersInfoBean.getDateOfReceipt() != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.INFO_RECEIVED_DATE, String.valueOf(covidTravellersInfoBean.getDateOfReceipt().getTime()));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.INFO_RECEIVED_DATE_DISPLAY, simpleDateFormat.format(covidTravellersInfoBean.getDateOfReceipt()));
        }
        if (covidTravellersInfoBean.getPinCode() != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PIN_CODE, covidTravellersInfoBean.getPinCode().toString());
        }
        if (covidTravellersInfoBean.getTrackingStartDate() != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TRACKING_START_DATE, covidTravellersInfoBean.getTrackingStartDate().toString());
            int numberOfDays = UtilBean.getNumberOfDays(covidTravellersInfoBean.getTrackingStartDate(), new Date());
            if (numberOfDays < 14) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TRACKING_DAY, numberOfDays + " of 14");
            }
        }
        if (notificationMobDataBean != null) {
            SharedStructureData.relatedPropertyHashTable.put("notificationId", notificationMobDataBean.getId().toString());
        }
    }

    public void setMetaDataForAmrutpanSupervisionForm(MemberDataBean memberDataBean, SharedPreferences sharedPreferences) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.clear().apply();
        editorEdit.putString(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberDataBean.getId());
        editorEdit.putString("familyId", memberDataBean.getFamilyId());
        Calendar calendar = Calendar.getInstance();
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SERVICE_DATE, String.valueOf(calendar.getTimeInMillis()));
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DATE, String.valueOf(calendar.getTimeInMillis()));
        if (memberDataBean != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put("areaId", memberDataBean.getAreaId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_NAME, UtilBean.getMemberFullName(memberDataBean));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, UtilBean.getMemberFullName(memberDataBean));
            SharedStructureData.relatedPropertyHashTable.put("uniqueHealthId", memberDataBean.getUniqueHealthId());
            SharedStructureData.relatedPropertyHashTable.put("familyId", memberDataBean.getFamilyId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PHONE_NUMBER, memberDataBean.getMobileNumber());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, UtilBean.getMemberFullName(memberDataBean) + "(" + memberDataBean.getUniqueHealthId() + ")");
            if (memberDataBean.getDob() != null) {
                SharedStructureData.relatedPropertyHashTable.put("dob", String.valueOf(new Date(memberDataBean.getDob().longValue()).getTime()));
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DOB_DISPLAY, simpleDateFormat.format(memberDataBean.getDob()));
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE_DISPLAY, UtilBean.getAgeDisplayOnGivenDate(new Date(memberDataBean.getDob().longValue()), new Date()));
            }
            if (memberDataBean.getWeight() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.WEIGHT, String.valueOf(memberDataBean.getWeight()));
            }
            editorEdit.apply();
        }
    }

    public void setMetaDataForLcdcCampaign(FamilyDataBean familyDataBean, Context context, String str) {
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedStructureData.lcdcSuspectedDataBeans.clear();
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.clear().apply();
        Calendar calendar = Calendar.getInstance();
        UtilBean.clearTimeFromDate(calendar);
        if (FormConstants.LCDC_CAMPAIGN.equalsIgnoreCase(str)) {
            calendar.set(2026, 2, 31);
        } else {
            calendar.set(2026, 5, 7);
        }
        if (familyDataBean != null) {
            SharedStructureData.currentFamilyDataBean = familyDataBean;
            editorEdit.putString("familyId", familyDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put("familyId", familyDataBean.getFamilyId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_ACTUAL_ID, familyDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put("areaId", familyDataBean.getAreaId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, familyDataBean.getFamilyId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CUSTOM_DATE, String.valueOf(calendar.getTime().getTime()));
            if (familyDataBean.getAreaId() != null) {
                editorEdit.putString("locationId", familyDataBean.getAreaId());
                SharedStructureData.relatedPropertyHashTable.put("locationId", familyDataBean.getAreaId());
            } else {
                editorEdit.putString("locationId", familyDataBean.getLocationId());
                SharedStructureData.relatedPropertyHashTable.put("locationId", familyDataBean.getLocationId());
            }
            editorEdit.apply();
        }
    }

    public void setMetaDataForFilariaCampaign(FamilyDataBean familyDataBean, Context context, int i, MemberDataBean memberDataBean) {
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedStructureData.filariaAnswerMapWithMemberAsKey.clear();
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.clear().apply();
        Calendar calendar = Calendar.getInstance();
        UtilBean.clearTimeFromDate(calendar);
        calendar.set(2026, 1, 8);
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FILARIASIS_TYPE, String.valueOf(i));
        if (memberDataBean != null) {
            SharedStructureData.currentMemberDataBean = memberDataBean;
            editorEdit.putString("familyId", memberDataBean.getFamilyActualId());
            editorEdit.putString(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_NAME, String.format("%s (%s)", UtilBean.getMemberFullName(memberDataBean), memberDataBean.getUniqueHealthId()));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, String.format("%s (%s)", UtilBean.getMemberFullName(memberDataBean), memberDataBean.getUniqueHealthId()));
            editorEdit.apply();
        }
        if (familyDataBean != null) {
            SharedStructureData.currentFamilyDataBean = familyDataBean;
            editorEdit.putString("familyId", familyDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put("familyId", familyDataBean.getFamilyId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_ACTUAL_ID, familyDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put("areaId", familyDataBean.getAreaId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, familyDataBean.getFamilyId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CUSTOM_DATE, String.valueOf(calendar.getTime().getTime()));
            if (familyDataBean.getLastFilariaDate() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.LAST_SERVICE_DATE, String.valueOf(familyDataBean.getLastFilariaDate()));
            }
            editorEdit.apply();
        }
    }

    public void setMetaDataForVBDSForms(Integer num, MemberDataBean memberDataBean, Context context) {
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.clear().apply();
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SERVICE_DATE, String.valueOf(calendar.getTimeInMillis()));
        if (num != null) {
            SharedStructureData.relatedPropertyHashTable.put("locationId", num.toString());
        }
        if (memberDataBean != null) {
            SharedStructureData.currentMemberDataBean = memberDataBean;
            editorEdit.putString("familyId", memberDataBean.getFamilyActualId());
            editorEdit.putString(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberDataBean.getId());
            SharedStructureData.relatedPropertyHashTable.put("familyId", memberDataBean.getFamilyId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_NAME, String.format("%s (%s)", UtilBean.getMemberFullName(memberDataBean), memberDataBean.getUniqueHealthId()));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, String.format("%s (%s)", UtilBean.getMemberFullName(memberDataBean), memberDataBean.getUniqueHealthId()));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_FULL_NAME, UtilBean.getMemberFullName(memberDataBean));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.GENDER_DISPLAY, UtilBean.getGenderLabelFromValue(memberDataBean.getGender()));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DOB_DISPLAY, simpleDateFormat.format(memberDataBean.getDob()));
            SharedStructureData.relatedPropertyHashTable.put("uniqueHealthId", memberDataBean.getUniqueHealthId());
            editorEdit.apply();
        }
    }
}
