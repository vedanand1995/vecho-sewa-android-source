package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MobileNumberUpdationBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.databean.RchVillageProfileDataBean;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.FhwServiceDetailBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberPregnancyStatusBean;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public interface SewaFhsService {
    String assignFamilyToUser(String str, FamilyDataBean familyDataBean);

    void deleteNotificationByMemberIdAndNotificationType(Long l, List<String> list);

    String getChildrenCount(Long l, boolean z, boolean z2, boolean z3);

    List<LocationBean> getDistinctLocationsAssignedToUser();

    List<String> getHealthInfraOfficersAssignedToUser();

    MemberDataBean getLatestChildByMotherId(Long l);

    String getListValueById(Integer num);

    LocationMasterBean getLocationByActualId(Integer num);

    long getMobileNumberCount(String str);

    LocationMasterBean getParentLocation(Integer num);

    String getRchIdByMemberId(String str);

    RchVillageProfileDataBean getRchVillageProfileDataBean(String str);

    List<String> getValueOfListValuesByField(String str);

    String getValueOfListValuesById(String str);

    void markFamilyAsArchived(String str);

    void markFamilyAsCFHCVerified(String str);

    void markFamilyAsMigrated(String str);

    void markFamilyAsVerified(String str);

    void markFilariaSideEffectsForMember(MemberDataBean memberDataBean);

    void markFilariaStatusForFamily(FamilyDataBean familyDataBean);

    void markLcdc02StatusForMembers(Set<MemberDataBean> set);

    void markLcdcStatusForFamily(FamilyDataBean familyDataBean);

    void markMemberAsDead(Long l);

    void markMemberAsMigrated(Long l);

    void markMrGivenForMember(MemberDataBean memberDataBean);

    void markNotificationAsRead(NotificationMobDataBean notificationMobDataBean);

    void mergeFamilies(FamilyDataBean familyDataBean, FamilyDataBean familyDataBean2);

    void mobileNumberVerificationAndUpdationOfFamilyMember(MobileNumberUpdationBean mobileNumberUpdationBean, Long l);

    List<MemberDataBean> retrieveActiveMemberByFamilyIdForIdsp(String str);

    List<MemberDataBean> retrieveAdolescentGirlsByAshaArea(Integer num, CharSequence charSequence, long j, long j2);

    List<FieldValueMobDataBean> retrieveAnganwadiListFromSubcentreId(Integer num);

    List<LocationBean> retrieveAshaAreaAssignedToUser(Integer num);

    Map<String, String> retrieveAshaInfoByAreaId(String str);

    List<FamilyDataBean> retrieveAssignedFamilyDataBeansToUserForMobileNumberUpdationAndVerification(CharSequence charSequence, String str, long j, long j2);

    List<MemberDataBean> retrieveChildsBelow5YearsByAshaArea(List<Integer> list, Boolean bool, List<Integer> list2, CharSequence charSequence, LinkedHashMap<String, String> linkedHashMap, String str, Date date, long j, long j2);

    List<MemberDataBean> retrieveChildsBelow6YearsByAshaArea(Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveChildsBelow7YearsByAshaArea(List<Integer> list, Boolean bool, List<Integer> list2, CharSequence charSequence, LinkedHashMap<String, String> linkedHashMap, String str, Date date, long j, long j2);

    List<MemberDataBean> retrieveChildsBetween6MonthsTo3YearsByAshaArea(Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveElderlyCareMembersByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveEligibleCouplesByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveEligibleCouplesByAshaAreaVhnd(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2, String str, Date date, boolean z);

    List<MemberDataBean> retrieveEligibleMembersForMalariaSlidesCollection(List<Integer> list, String str, long j, long j2);

    FamilyBean retrieveFamilyBeanByActualId(Long l);

    FamilyDataBean retrieveFamilyDataBeanByFamilyId(String str);

    List<FamilyDataBean> retrieveFamilyDataBeansByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    List<FamilyDataBean> retrieveFamilyDataBeansForAbhaNumberByArea(Long l, long j, long j2);

    List<FamilyDataBean> retrieveFamilyDataBeansForAbhaNumberByVillage(String str, long j, long j2);

    List<FamilyDataBean> retrieveFamilyDataBeansForCFHCByVillage(String str, boolean z, long j, long j2);

    List<FamilyDataBean> retrieveFamilyDataBeansForFHSByArea(Long l, long j, long j2);

    List<FamilyDataBean> retrieveFamilyDataBeansForFilariaByArea(List<Integer> list, long j, long j2);

    List<FamilyDataBean> retrieveFamilyDataBeansForIDSPByVillage(String str, List<Integer> list, long j, long j2);

    List<FamilyDataBean> retrieveFamilyDataBeansForLCDC02ByArea(List<Integer> list, long j, long j2);

    List<FamilyDataBean> retrieveFamilyDataBeansForLCDCByArea(List<Integer> list, long j, long j2);

    List<FamilyDataBean> retrieveFamilyDataBeansForMergeFamily(String str, String str2, long j, long j2);

    List<FamilyDataBean> retrieveFamilyDataBeansForVBDSByAshaArea(Integer num, String str);

    List<MemberBean> retrieveFamilyMembersContactListByMember(String str, String str2);

    List<FhwServiceDetailBean> retrieveFhwServiceDetailBeansByVillageId(Integer num);

    List<String[]> retrieveGeriatricMembers(List<String> list, CharSequence charSequence);

    MemberDataBean retrieveHeadMemberDataBeanByFamilyId(String str);

    Map<String, MemberDataBean> retrieveHeadMemberDataBeansByFamilyId(List<String> list);

    List<MemberDataBean> retrieveHighRiskPregnantWomanByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveLCDCEligibleMembersByFamilyId(String str);

    List<MemberDataBean> retrieveMalariaScreenedMembers(List<Integer> list, String str, long j, long j2, boolean z, boolean z2);

    MemberBean retrieveMemberBeanByActualId(Long l);

    MemberBean retrieveMemberBeanByHealthId(String str);

    Map<Long, MemberBean> retrieveMemberBeansMapByActualIds(List<Long> list);

    List<MemberDataBean> retrieveMemberDataBeanForMRVaccinationDrive(List<Integer> list, List<Integer> list2, String str, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveMemberDataBeanForMobileNumberUpdation(String str);

    List<MemberDataBean> retrieveMemberDataBeansByFamily(String str);

    List<MemberDataBean> retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(String str);

    List<MemberDataBean> retrieveMemberDataBeansForFilariasisByFamilyId(String str);

    List<MemberDataBean> retrieveMemberListForNPCB(List<Integer> list, CharSequence charSequence);

    List<MemberDataBean> retrieveMemberListForRchRegister(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    MemberDataBean retrieveMemberUsingAbhaScan(LinkedHashMap<String, String> linkedHashMap);

    List<MemberDataBean> retrieveMembersByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveMembersForPhoneVerificationByFhsr(Long l, String str, long j, long j2);

    List<MemberDataBean> retrieveMembersForSideEffectsOfFilaria(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveMentalHealthScreeningMembersByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea(Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveNewlyWedCouplesByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveNewlyWedCouplesVhnd(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2, String str, Date date, boolean z);

    List<MemberDataBean> retrievePncMothersByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrievePncMothersByAshaAreaVhnd(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2, String str, Date date, boolean z);

    MemberPregnancyStatusBean retrievePregnancyStatusBeanByMemberId(Long l);

    List<MemberDataBean> retrievePregnantWomenByAshaArea(List<Integer> list, boolean z, List<Integer> list2, CharSequence charSequence, long j, long j2);

    List<MemberBean> retrievePregnantWomenByAshaAreaByEligibleScheme(List<Integer> list, List<Integer> list2, CharSequence charSequence, long j, long j2, boolean z, boolean z2);

    Integer retrieveSubcenterIdFromAnganwadiId(Integer num);

    CovidTravellersInfoBean retrieveTravellersInfoBeanById(Integer num);

    List<CovidTravellersInfoBean> retrieveTravellersList(List<Integer> list, String str, long j, long j2);

    List<MemberDataBean> retrieveVeryHighRiskPregnantWomenByAshaArea(List<Integer> list, List<Integer> list2, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveWPDWomenByAshaArea(List<Integer> list, List<Integer> list2, CharSequence charSequence, long j, long j2);

    List<FamilyDataBean> searchFamilyDataBeansForCFHCByVillage(String str, String str2, boolean z);

    List<FamilyDataBean> searchFamilyDataBeansForFHSByArea(Long l, String str);

    List<FamilyDataBean> searchFamilyDataBeansForFilariaByArea(List<Integer> list, String str);

    List<FamilyDataBean> searchFamilyDataBeansForIDSPByVillage(String str, String str2, List<Integer> list);

    List<FamilyDataBean> searchFamilyDataBeansForLCDC02ByArea(List<Integer> list, String str);

    List<FamilyDataBean> searchFamilyDataBeansForLCDCByArea(List<Integer> list, String str);

    void storeFhsrPhoneVerificationForm(Long l, String str, String str2);

    void updateFamily(FamilyBean familyBean);

    void updateGravidaCountForMother(String str, String str2);

    void updateMemberLmpDate(Long l, Date date);

    void updateMemberPregnantFlag(Long l, boolean z);

    void updateVaccinationGivenForChild(Long l, String str);

    void updateVaccinationGivenForChild(String str, String str2);
}
