package com.argusoft.sewa.android.app.core;

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
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MigratedFamilyBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface MigrationService {
    void createFamilyMigrationInConfirmation(FamilyMigrationInConfirmationDataBean familyMigrationInConfirmationDataBean, FamilyMigrationDetailsDataBean familyMigrationDetailsDataBean);

    void createFamilyMigrationOut(FamilyMigrationOutDataBean familyMigrationOutDataBean, FamilyDataBean familyDataBean, NotificationMobDataBean notificationMobDataBean);

    void createMigrationIn(MigrationInDataBean migrationInDataBean);

    void createMigrationInConfirmation(MigrationInConfirmationDataBean migrationInConfirmationDataBean, MigrationDetailsDataBean migrationDetailsDataBean);

    void createMigrationOut(MigrationOutDataBean migrationOutDataBean, MemberDataBean memberDataBean, NotificationBean notificationBean);

    void createMigrationOutConfirmation(MigrationOutConfirmationDataBean migrationOutConfirmationDataBean, MigrationDetailsDataBean migrationDetailsDataBean);

    void deleteMigratedFamilyBean(MigratedFamilyBean migratedFamilyBean);

    void deleteMigratedMembersBean(MigratedMembersBean migratedMembersBean);

    List<MemberBean> retrieveChildrenUnder5YearsByMotherId(Long l);

    List<FamilyDataBean> retrieveFamilyListBySearchForMigration(String str);

    Map<Integer, String> retrieveHierarchyOfVillage(LocationMasterBean locationMasterBean);

    List<LocationMasterBean> retrieveLocationMasterBeansBySearch(CharSequence charSequence, Integer num);

    List<MigratedFamilyBean> retrieveMigrationDetailsForMigratedFamily(Integer num, List<Integer> list, boolean z, long j, long j2);

    List<MigratedMembersBean> retrieveMigrationDetailsForMigratedMembers(Integer num, List<Integer> list, boolean z, long j, long j2);

    List<FamilyDataBean> searchFamilyByLocation(String str, Long l, long j, long j2);

    void storeRevertedFamilyMigrationBean(MigratedFamilyDataBean migratedFamilyDataBean);

    void storeRevertedMigrationBean(MigratedMembersDataBean migratedMembersDataBean);
}
