package com.argusoft.sewa.android.app.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.argusoft.sewa.android.app.BuildConfig;
import com.argusoft.sewa.android.app.activity.WelcomeActivity_;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.AnnouncementBean;
import com.argusoft.sewa.android.app.model.AnswerBean;
import com.argusoft.sewa.android.app.model.BaseEntity;
import com.argusoft.sewa.android.app.model.CampaignMasterBean;
import com.argusoft.sewa.android.app.model.CampaignRescheduleBean;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import com.argusoft.sewa.android.app.model.ChlorinationStatusBean;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.model.DailyNutritionLogBean;
import com.argusoft.sewa.android.app.model.DailyPresenceReport;
import com.argusoft.sewa.android.app.model.DataQualityBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.FhwServiceDetailBean;
import com.argusoft.sewa.android.app.model.FileDownloadBean;
import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import com.argusoft.sewa.android.app.model.HealthInfraAssignedBean;
import com.argusoft.sewa.android.app.model.HealthInfraTypeLocationBean;
import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.model.IncentiveMaster;
import com.argusoft.sewa.android.app.model.IncentiveMonthlyDetailsBean;
import com.argusoft.sewa.android.app.model.IncentiveOccurrenceBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.LibraryBean;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.model.LmsBookMarkBean;
import com.argusoft.sewa.android.app.model.LmsCourseBean;
import com.argusoft.sewa.android.app.model.LmsEventBean;
import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationCoordinatesBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.LocationTypeBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberCbacDetailBean;
import com.argusoft.sewa.android.app.model.MemberPregnancyStatusBean;
import com.argusoft.sewa.android.app.model.MemberRchIdBean;
import com.argusoft.sewa.android.app.model.MenuBean;
import com.argusoft.sewa.android.app.model.MergedFamiliesBean;
import com.argusoft.sewa.android.app.model.MigratedFamilyBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.model.PreviousYearIncentive;
import com.argusoft.sewa.android.app.model.QuestionBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import com.argusoft.sewa.android.app.model.ReadNotificationsBean;
import com.argusoft.sewa.android.app.model.SchoolBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleExceptionBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleMasterBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.model.SupportActionBean;
import com.argusoft.sewa.android.app.model.SupportAttachmentBean;
import com.argusoft.sewa.android.app.model.SupportCommentBean;
import com.argusoft.sewa.android.app.model.SupportTicketBean;
import com.argusoft.sewa.android.app.model.UncaughtExceptionBean;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.model.UserBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DBConnection extends OrmLiteSqliteOpenHelper {
    public DBConnection(Context context) {
        super(context, SewaConstants.DIR_DATABASE + "/sewa_final.db", null, BuildConfig.DATABASE_VERSION);
        Log.i(getClass().getSimpleName(), "DBConnection super constructor called");
    }

    private List<Class<? extends BaseEntity>> getDatabaseTableList() {
        Log.i(getClass().getSimpleName(), "Table List");
        return Arrays.asList(AnnouncementBean.class, AnswerBean.class, LabelBean.class, ListValueBean.class, LoggerBean.class, LoginBean.class, NotificationBean.class, QuestionBean.class, StoreAnswerBean.class, UploadFileDataBean.class, VersionBean.class, LocationBean.class, UncaughtExceptionBean.class, FamilyBean.class, MemberBean.class, DataQualityBean.class, FhwServiceDetailBean.class, MergedFamiliesBean.class, FormAccessibilityBean.class, LocationMasterBean.class, MemberCbacDetailBean.class, LibraryBean.class, MigratedMembersBean.class, ReadNotificationsBean.class, HealthInfrastructureBean.class, SmartReferralScheduleMasterBean.class, SmartReferralScheduleExceptionBean.class, LocationCoordinatesBean.class, MemberPregnancyStatusBean.class, DataQualityBean.class, SchoolBean.class, DailyPresenceReport.class, CovidTravellersInfoBean.class, DailyNutritionLogBean.class, MigratedFamilyBean.class, LmsBookMarkBean.class, LmsCourseBean.class, LmsViewedMediaBean.class, FileDownloadBean.class, LmsUserMetaDataBean.class, LmsEventBean.class, MemberRchIdBean.class, IncentiveMaster.class, IncentiveMonthlyDetailsBean.class, MenuBean.class, PreviousYearIncentive.class, IncentiveMonthlyDetailsBean.class, UserBean.class, HealthInfraTypeLocationBean.class, LocationTypeBean.class, RISessionInventoryBean.class, CampaignMasterBean.class, CampaignSessionBean.class, HealthInfraAssignedBean.class, IncentiveOccurrenceBean.class, CampaignRescheduleBean.class, ChlorinationStatusBean.class, SupportTicketBean.class, SupportCommentBean.class, SupportAttachmentBean.class, SupportActionBean.class);
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource) {
        Log.i(getClass().getSimpleName(), "OnCreate called");
        Iterator<Class<? extends BaseEntity>> it = getDatabaseTableList().iterator();
        while (it.hasNext()) {
            try {
                TableUtils.createTableIfNotExists(connectionSource, it.next());
            } catch (SQLException e) {
                Log.e(getClass().getSimpleName(), null, e);
                throw new DataException(e.getMessage(), e);
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        ((WelcomeActivity_) SharedStructureData.welcomeContext).showDbDowngradeAlert();
        super.onDowngrade(sQLiteDatabase, i, i2);
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource, int i, int i2) {
        Log.i(getClass().getSimpleName(), "OnUpgrade called");
        removeImageValuesFromStoreAnswerBeans(sQLiteDatabase);
        ((WelcomeActivity_) SharedStructureData.welcomeContext).showDBUpgradeProcessDialog();
        try {
            try {
                for (Class<? extends BaseEntity> cls : getDatabaseTableDrops(sQLiteDatabase, i)) {
                    if (checkIfTableExistsInDB(sQLiteDatabase, cls)) {
                        TableUtils.dropTable(connectionSource, (Class) cls, true);
                    }
                }
                for (Class<? extends BaseEntity> cls2 : getDatabaseTableUpdatable(sQLiteDatabase, i)) {
                    if (checkIfTableExistsInDB(sQLiteDatabase, cls2)) {
                        ArrayList arrayList = new ArrayList();
                        getPreviousData(cls2, arrayList, sQLiteDatabase);
                        TableUtils.dropTable(connectionSource, (Class) cls2, true);
                        if (!arrayList.isEmpty()) {
                            TableUtils.createTable(connectionSource, cls2);
                            Iterator<ContentValues> it = arrayList.iterator();
                            while (it.hasNext()) {
                                sQLiteDatabase.insert(cls2.getSimpleName().toLowerCase(), null, it.next());
                            }
                        }
                    }
                }
            } catch (SQLException e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
        } finally {
            onCreate(sQLiteDatabase, connectionSource);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x018d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x01a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0127 A[Catch: all -> 0x01a8, TryCatch #5 {all -> 0x01a8, blocks: (B:9:0x0038, B:11:0x003e, B:12:0x0044, B:14:0x004a, B:18:0x0074, B:19:0x0077, B:21:0x0080, B:22:0x0084, B:24:0x008a, B:26:0x0096, B:28:0x009c, B:32:0x00bb, B:33:0x00d7, B:59:0x0137, B:60:0x0144, B:62:0x014a, B:63:0x0167, B:77:0x01a1, B:75:0x019e, B:74:0x019b, B:56:0x0115, B:57:0x011f, B:58:0x0127, B:40:0x00ec, B:43:0x00f6, B:46:0x0100, B:17:0x0057, B:65:0x018d, B:70:0x0195), top: B:130:0x0038, inners: #2, #7, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014a A[Catch: all -> 0x01a8, LOOP:5: B:60:0x0144->B:62:0x014a, LOOP_END, TryCatch #5 {all -> 0x01a8, blocks: (B:9:0x0038, B:11:0x003e, B:12:0x0044, B:14:0x004a, B:18:0x0074, B:19:0x0077, B:21:0x0080, B:22:0x0084, B:24:0x008a, B:26:0x0096, B:28:0x009c, B:32:0x00bb, B:33:0x00d7, B:59:0x0137, B:60:0x0144, B:62:0x014a, B:63:0x0167, B:77:0x01a1, B:75:0x019e, B:74:0x019b, B:56:0x0115, B:57:0x011f, B:58:0x0127, B:40:0x00ec, B:43:0x00f6, B:46:0x0100, B:17:0x0057, B:65:0x018d, B:70:0x0195), top: B:130:0x0038, inners: #2, #7, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a1 A[Catch: all -> 0x01a8, TRY_LEAVE, TryCatch #5 {all -> 0x01a8, blocks: (B:9:0x0038, B:11:0x003e, B:12:0x0044, B:14:0x004a, B:18:0x0074, B:19:0x0077, B:21:0x0080, B:22:0x0084, B:24:0x008a, B:26:0x0096, B:28:0x009c, B:32:0x00bb, B:33:0x00d7, B:59:0x0137, B:60:0x0144, B:62:0x014a, B:63:0x0167, B:77:0x01a1, B:75:0x019e, B:74:0x019b, B:56:0x0115, B:57:0x011f, B:58:0x0127, B:40:0x00ec, B:43:0x00f6, B:46:0x0100, B:17:0x0057, B:65:0x018d, B:70:0x0195), top: B:130:0x0038, inners: #2, #7, #8 }] */
    /* JADX WARN: Type inference failed for: r19v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String, java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void removeImageValuesFromStoreAnswerBeans(android.database.sqlite.SQLiteDatabase r19) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.db.DBConnection.removeImageValuesFromStoreAnswerBeans(android.database.sqlite.SQLiteDatabase):void");
    }

    private Iterable<Class<? extends BaseEntity>> getDatabaseTableUpdatable(SQLiteDatabase sQLiteDatabase, int i) {
        Log.i(getClass().getSimpleName(), "Updatable Table List");
        ArrayList arrayList = new ArrayList();
        if (i < 184) {
            arrayList.add(QuestionBean.class);
            arrayList.add(UncaughtExceptionBean.class);
            arrayList.add(NotificationBean.class);
            arrayList.add(LoginBean.class);
            arrayList.add(StoreAnswerBean.class);
            arrayList.add(LoggerBean.class);
            arrayList.add(LabelBean.class);
            arrayList.add(ListValueBean.class);
            arrayList.add(FhwServiceDetailBean.class);
            arrayList.add(LibraryBean.class);
            arrayList.add(HealthInfrastructureBean.class);
            arrayList.add(LocationBean.class);
            arrayList.add(AnnouncementBean.class);
        }
        if (i < 191) {
            arrayList.add(FamilyBean.class);
        }
        if (i < 206) {
            arrayList.add(NotificationBean.class);
        }
        if (i < 219) {
            arrayList.add(MemberBean.class);
        }
        if (i < 220) {
            arrayList.add(SchoolBean.class);
        }
        if (i < 223) {
            arrayList.add(SmartReferralScheduleMasterBean.class);
            arrayList.add(SmartReferralScheduleExceptionBean.class);
        }
        if (i < 226) {
            arrayList.add(FamilyBean.class);
        }
        if (i < 238) {
            arrayList.add(MemberBean.class);
        }
        if (i < 239) {
            arrayList.add(UploadFileDataBean.class);
        }
        if (i < 242) {
            arrayList.add(IncentiveMaster.class);
        }
        if (i < 243) {
            arrayList.add(MemberBean.class);
        }
        if (i < 244) {
            arrayList.add(MemberBean.class);
        }
        if (i < 245) {
            arrayList.add(UploadFileDataBean.class);
        }
        if (i < 246) {
            arrayList.add(MemberBean.class);
        }
        if (i < 247) {
            arrayList.add(LoginBean.class);
        }
        if (i < 247) {
            arrayList.add(FamilyBean.class);
            arrayList.add(MemberBean.class);
        }
        if (i < 247) {
            arrayList.add(IncentiveMaster.class);
        }
        if (i < 247) {
            arrayList.add(IncentiveMonthlyDetailsBean.class);
        }
        if (i < 247) {
            arrayList.add(HealthInfraTypeLocationBean.class);
            arrayList.add(LocationTypeBean.class);
        }
        if (i < 248) {
            arrayList.add(MemberBean.class);
        }
        if (i < 249) {
            arrayList.add(LoggerBean.class);
        }
        if (i < 250) {
            arrayList.add(StoreAnswerBean.class);
        }
        if (i < 251) {
            arrayList.add(IncentiveMaster.class);
        }
        if (i < 253) {
            arrayList.add(MemberBean.class);
        }
        if (i < 254) {
            arrayList.add(IncentiveOccurrenceBean.class);
            arrayList.add(MemberBean.class);
        }
        if (i < 257) {
            arrayList.add(MemberBean.class);
        }
        if (i < 258) {
            arrayList.add(LoginBean.class);
            arrayList.add(MemberBean.class);
        }
        if (i < 259) {
            arrayList.add(MemberBean.class);
        }
        if (i < 260) {
            arrayList.add(MemberBean.class);
        }
        if (i < 261) {
            arrayList.add(MemberBean.class);
        }
        if (i < 262) {
            arrayList.add(FamilyBean.class);
        }
        if (i < 265) {
            arrayList.add(FamilyBean.class);
            arrayList.add(MemberBean.class);
        }
        if (i < 272) {
            arrayList.add(MemberBean.class);
        }
        if (i < 268) {
            arrayList.add(UploadFileDataBean.class);
        }
        if (i < 273) {
            arrayList.add(UploadFileDataBean.class);
            arrayList.add(LoginBean.class);
        }
        if (i < 275) {
            arrayList.add(LoginBean.class);
        }
        if (i < 277) {
            arrayList.add(LoggerBean.class);
        }
        return arrayList;
    }

    private void removeDeletedMemberBeanColumns(ContentValues contentValues, int i) {
        if (i < 267) {
            removeColumns(contentValues, new String[]{"hasAshaReferredCHO", FieldNameConstants.HAS_CHO_REFERRED_OA, FieldNameConstants.HAS_OA_SENT_TO_CHO, FieldNameConstants.HAS_CHO_FOLLOWUP_SENT_TO_OA_AGAIN, FieldNameConstants.HAS_OA_FOLLOWUP_SENT_TO_CHO_AGAIN, "isSentByAshaForNPCB", "isReferredByOA", "isNpcbFollowUpDone", "isExaminedByAsha", "isExaminedByCHO", FieldNameConstants.NPCB_STATUS, "npcbScreeningDate"});
        }
    }

    private void removeColumns(ContentValues contentValues, String[] strArr) {
        for (String str : strArr) {
            if (contentValues.containsKey(str)) {
                Log.i(getClass().getSimpleName(), "Removing column: " + str);
                contentValues.remove(str);
            }
        }
    }

    private Iterable<Class<? extends BaseEntity>> getDatabaseTableDrops(SQLiteDatabase sQLiteDatabase, int i) {
        Log.i(getClass().getSimpleName(), "Dropable Table List");
        ArrayList arrayList = new ArrayList();
        if (i == 169) {
            arrayList.add(SchoolBean.class);
        }
        if (i < 184) {
            arrayList.add(MigratedMembersBean.class);
        }
        if (i < 218) {
            arrayList.add(FamilyBean.class);
        }
        if (checkIfTableExistsInDB(sQLiteDatabase, LocationMasterBean.class) && !checkIfColumnExists(sQLiteDatabase, LocationMasterBean.class, FieldNameConstants.MODIFIED_ON)) {
            arrayList.add(LocationMasterBean.class);
        }
        if (i < 216) {
            arrayList.add(LmsCourseBean.class);
            arrayList.add(LmsViewedMediaBean.class);
            arrayList.add(LmsUserMetaDataBean.class);
            arrayList.add(LmsBookMarkBean.class);
        }
        if (i < 221) {
            arrayList.add(HealthInfrastructureBean.class);
        }
        if (i < 222) {
            arrayList.add(LmsViewedMediaBean.class);
        }
        if (i < 224) {
            arrayList.add(MemberBean.class);
        }
        if (i < 225) {
            arrayList.add(LmsCourseBean.class);
        }
        if (i < 232) {
            arrayList.add(IncentiveMonthlyDetailsBean.class);
            arrayList.add(IncentiveMaster.class);
        }
        if (i < 233) {
            arrayList.add(UploadFileDataBean.class);
        }
        if (i < 276 && checkIfTableExistsInDB(sQLiteDatabase, LocationMasterBean.class) && !checkIfColumnExists(sQLiteDatabase, LocationMasterBean.class, FieldNameConstants.ENGLISH_NAME) && !arrayList.contains(LocationMasterBean.class)) {
            arrayList.add(LocationMasterBean.class);
        }
        return arrayList;
    }

    private boolean checkIfTableExistsInDB(SQLiteDatabase sQLiteDatabase, Class<? extends BaseEntity> cls) {
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select DISTINCT tbl_name from sqlite_master where tbl_name = '" + cls.getSimpleName().toLowerCase() + "'", null);
        if (cursorRawQuery != null) {
            try {
                if (cursorRawQuery.getCount() > 0) {
                    if (cursorRawQuery == null) {
                        return true;
                    }
                    cursorRawQuery.close();
                    return true;
                }
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (cursorRawQuery == null) {
            return false;
        }
        cursorRawQuery.close();
        return false;
    }

    private boolean checkIfColumnExists(SQLiteDatabase sQLiteDatabase, Class<? extends BaseEntity> cls, String str) {
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + cls.getSimpleName().toLowerCase() + " LIMIT 0", null);
            try {
                boolean z = cursorRawQuery.getColumnIndex(str) != -1;
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return z;
            } finally {
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
            return false;
        }
    }

    private void getPreviousData(Class<?> cls, List<ContentValues> list, SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery = sQLiteDatabase.query(cls.getSimpleName().toLowerCase(), null, null, null, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    do {
                        ContentValues contentValues = new ContentValues();
                        for (int i = 0; i < cursorQuery.getColumnCount(); i++) {
                            try {
                                contentValues.put(cursorQuery.getColumnName(i), cursorQuery.getString(i));
                            } catch (Exception e) {
                                Log.e(getClass().getSimpleName(), null, e);
                                contentValues.put(cursorQuery.getColumnName(i), new String(cursorQuery.getBlob(i), StandardCharsets.UTF_16));
                            }
                        }
                        list.add(contentValues);
                    } while (cursorQuery.moveToNext());
                    Log.i(getClass().getSimpleName(), "Previous Data is :: \n" + list);
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
    }
}
