package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.ChlorinationStatusBean;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.model.DataQualityBean;
import com.argusoft.sewa.android.app.model.FhwServiceDetailBean;
import com.argusoft.sewa.android.app.model.HealthInfraAssignedBean;
import com.argusoft.sewa.android.app.model.HealthInfraTypeLocationBean;
import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.LocationTypeBean;
import com.argusoft.sewa.android.app.model.MemberCbacDetailBean;
import com.argusoft.sewa.android.app.model.MemberPregnancyStatusBean;
import com.argusoft.sewa.android.app.model.MenuBean;
import com.argusoft.sewa.android.app.model.PreviousYearIncentive;
import com.argusoft.sewa.android.app.model.SchoolBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleExceptionBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleMasterBean;
import com.argusoft.sewa.android.app.model.UserBean;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LoggedInUserPrincipleDataBean {
    private Boolean amrutpanEnabled;
    private List<FamilyDataBean> assignedFamilies;
    private String baselineModuleCourseIds;
    private List<CampaignSessionDataBean> campaignSessionMasterBeanList;
    private List<LmsCourseDataBean> courseDataBeans;
    private List<CovidTravellersInfoBean> covidTravellersInfos;
    private QueryMobDataBean csvCoordinates;
    private Map<String, Integer> currentSheetVersion;
    private List<DataQualityBean> dataQualityBeans;
    private List<String> deletedFamilies;
    private List<Long> deletedNotifications;
    private List<String> features;
    private String fhsLastUpdateTime;
    private List<FhwServiceDetailBean> fhwServiceStatusDtos;
    private List<HealthInfraAssignedBean> healthInfraAssignedBeans;
    private List<HealthInfraTypeLocationBean> healthInfraTypeLocationBeanList;
    private List<HealthInfrastructureBean> healthInfrastructures;
    private List<IncentiveMasterDataBean> incentiveMasterBeans;
    private List<IncentiveMonthlyDetailsDataBean> incentiveMonthlyDetails;
    private List<IncentiveOccurrenceDetailsDataBean> incentiveOccurrenceBeans;
    private Long lastPregnancyStatusDate;
    private List<LmsUserMetaDataBean> lmsUserMetaData;
    private List<LocationMasterBean> locationMasterBeans;
    private List<LocationTypeBean> locationTypeBeanList;
    private List<Long> locationsForFamilyDataDeletion;
    private List<MemberCbacDetailBean> memberCbacDetails;
    private List<MigratedFamilyDataBean> migratedFamilyDataBeans;
    private List<MigratedMembersDataBean> migratedMembersDataBeans;
    private List<LibraryDataBean> mobileLibraryDataBeans;
    private List<MenuBean> mobileMenus;
    private String newToken;
    private List<NotificationMobDataBean> notifications;
    private List<FamilyDataBean> orphanedAndReverificationFamilies;
    private List<MemberPregnancyStatusBean> pregnancyStatus;
    private List<PreviousYearIncentive> previousYearIncentives;
    private List<RchVillageProfileDataBean> rchVillageProfileDataBeans;
    private List<AnnouncementMobDataBean> retrievedAnnouncements;
    private QueryMobDataBean retrievedLabels;
    private List<FieldValueMobDataBean> retrievedListValues;
    private Map<Long, List<SurveyLocationMobDataBean>> retrievedVillageAndChildLocations;
    private Map<String, List<ComponentTagBean>> retrievedXlsData;
    private List<SchoolBean> schools;
    private String showYearEndSummary;
    private List<SmartReferralScheduleExceptionBean> smartReferralScheduleExceptionBeans;
    private List<SmartReferralScheduleMasterBean> smartReferralScheduleMasterBeans;
    private List<FamilyDataBean> updatedFamilyByDate;
    private List<UserBean> users;
    private List<ChlorinationStatusBean> vbdsChlorinationStatusAreas;

    public List<String> getDeletedFamilies() {
        return this.deletedFamilies;
    }

    public void setDeletedFamilies(List<String> list) {
        this.deletedFamilies = list;
    }

    public List<FamilyDataBean> getAssignedFamilies() {
        return this.assignedFamilies;
    }

    public void setAssignedFamilies(List<FamilyDataBean> list) {
        this.assignedFamilies = list;
    }

    public Map<Long, List<SurveyLocationMobDataBean>> getRetrievedVillageAndChildLocations() {
        return this.retrievedVillageAndChildLocations;
    }

    public void setRetrievedVillageAndChildLocations(Map<Long, List<SurveyLocationMobDataBean>> map) {
        this.retrievedVillageAndChildLocations = map;
    }

    public List<FamilyDataBean> getOrphanedAndReverificationFamilies() {
        return this.orphanedAndReverificationFamilies;
    }

    public void setOrphanedAndReverificationFamilies(List<FamilyDataBean> list) {
        this.orphanedAndReverificationFamilies = list;
    }

    public List<FhwServiceDetailBean> getFhwServiceStatusDtos() {
        return this.fhwServiceStatusDtos;
    }

    public void setFhwServiceStatusDtos(List<FhwServiceDetailBean> list) {
        this.fhwServiceStatusDtos = list;
    }

    public List<FamilyDataBean> getUpdatedFamilyByDate() {
        return this.updatedFamilyByDate;
    }

    public void setUpdatedFamilyByDate(List<FamilyDataBean> list) {
        this.updatedFamilyByDate = list;
    }

    public List<NotificationMobDataBean> getNotifications() {
        return this.notifications;
    }

    public void setNotifications(List<NotificationMobDataBean> list) {
        this.notifications = list;
    }

    public List<Long> getDeletedNotifications() {
        return this.deletedNotifications;
    }

    public void setDeletedNotifications(List<Long> list) {
        this.deletedNotifications = list;
    }

    public QueryMobDataBean getRetrievedLabels() {
        return this.retrievedLabels;
    }

    public void setRetrievedLabels(QueryMobDataBean queryMobDataBean) {
        this.retrievedLabels = queryMobDataBean;
    }

    public Map<String, List<ComponentTagBean>> getRetrievedXlsData() {
        return this.retrievedXlsData;
    }

    public void setRetrievedXlsData(Map<String, List<ComponentTagBean>> map) {
        this.retrievedXlsData = map;
    }

    public Map<String, Integer> getCurrentSheetVersion() {
        return this.currentSheetVersion;
    }

    public void setCurrentSheetVersion(Map<String, Integer> map) {
        this.currentSheetVersion = map;
    }

    public List<FieldValueMobDataBean> getRetrievedListValues() {
        return this.retrievedListValues;
    }

    public void setRetrievedListValues(List<FieldValueMobDataBean> list) {
        this.retrievedListValues = list;
    }

    public List<DataQualityBean> getDataQualityBeans() {
        return this.dataQualityBeans;
    }

    public void setDataQualityBeans(List<DataQualityBean> list) {
        this.dataQualityBeans = list;
    }

    public List<AnnouncementMobDataBean> getRetrievedAnnouncements() {
        return this.retrievedAnnouncements;
    }

    public void setRetrievedAnnouncements(List<AnnouncementMobDataBean> list) {
        this.retrievedAnnouncements = list;
    }

    public List<RchVillageProfileDataBean> getRchVillageProfileDataBeans() {
        return this.rchVillageProfileDataBeans;
    }

    public void setRchVillageProfileDataBeans(List<RchVillageProfileDataBean> list) {
        this.rchVillageProfileDataBeans = list;
    }

    public List<LocationMasterBean> getLocationMasterBeans() {
        return this.locationMasterBeans;
    }

    public void setLocationMasterBeans(List<LocationMasterBean> list) {
        this.locationMasterBeans = list;
    }

    public List<Long> getLocationsForFamilyDataDeletion() {
        return this.locationsForFamilyDataDeletion;
    }

    public void setLocationsForFamilyDataDeletion(List<Long> list) {
        this.locationsForFamilyDataDeletion = list;
    }

    public String getNewToken() {
        return this.newToken;
    }

    public void setNewToken(String str) {
        this.newToken = str;
    }

    public List<MemberCbacDetailBean> getMemberCbacDetails() {
        return this.memberCbacDetails;
    }

    public void setMemberCbacDetails(List<MemberCbacDetailBean> list) {
        this.memberCbacDetails = list;
    }

    public List<String> getFeatures() {
        return this.features;
    }

    public void setFeatures(List<String> list) {
        this.features = list;
    }

    public List<LibraryDataBean> getMobileLibraryDataBeans() {
        return this.mobileLibraryDataBeans;
    }

    public void setMobileLibraryDataBeans(List<LibraryDataBean> list) {
        this.mobileLibraryDataBeans = list;
    }

    public List<MigratedMembersDataBean> getMigratedMembersDataBeans() {
        return this.migratedMembersDataBeans;
    }

    public void setMigratedMembersDataBeans(List<MigratedMembersDataBean> list) {
        this.migratedMembersDataBeans = list;
    }

    public List<HealthInfrastructureBean> getHealthInfrastructures() {
        return this.healthInfrastructures;
    }

    public void setHealthInfrastructures(List<HealthInfrastructureBean> list) {
        this.healthInfrastructures = list;
    }

    public List<SmartReferralScheduleMasterBean> getSmartReferralScheduleMasterBeans() {
        return this.smartReferralScheduleMasterBeans;
    }

    public void setSmartReferralScheduleMasterBeans(List<SmartReferralScheduleMasterBean> list) {
        this.smartReferralScheduleMasterBeans = list;
    }

    public List<SmartReferralScheduleExceptionBean> getSmartReferralScheduleExceptionBeans() {
        return this.smartReferralScheduleExceptionBeans;
    }

    public void setSmartReferralScheduleExceptionBeans(List<SmartReferralScheduleExceptionBean> list) {
        this.smartReferralScheduleExceptionBeans = list;
    }

    public List<SchoolBean> getSchools() {
        return this.schools;
    }

    public void setSchools(List<SchoolBean> list) {
        this.schools = list;
    }

    public QueryMobDataBean getCsvCoordinates() {
        return this.csvCoordinates;
    }

    public void setCsvCoordinates(QueryMobDataBean queryMobDataBean) {
        this.csvCoordinates = queryMobDataBean;
    }

    public List<MemberPregnancyStatusBean> getPregnancyStatus() {
        return this.pregnancyStatus;
    }

    public void setPregnancyStatus(List<MemberPregnancyStatusBean> list) {
        this.pregnancyStatus = list;
    }

    public Long getLastPregnancyStatusDate() {
        return this.lastPregnancyStatusDate;
    }

    public void setLastPregnancyStatusDate(Long l) {
        this.lastPregnancyStatusDate = l;
    }

    public List<CovidTravellersInfoBean> getCovidTravellersInfos() {
        return this.covidTravellersInfos;
    }

    public void setCovidTravellersInfos(List<CovidTravellersInfoBean> list) {
        this.covidTravellersInfos = list;
    }

    public String getFhsLastUpdateTime() {
        return this.fhsLastUpdateTime;
    }

    public void setFhsLastUpdateTime(String str) {
        this.fhsLastUpdateTime = str;
    }

    public Boolean getAmrutpanEnabled() {
        return this.amrutpanEnabled;
    }

    public void setAmrutpanEnabled(Boolean bool) {
        this.amrutpanEnabled = bool;
    }

    public String getShowYearEndSummary() {
        return this.showYearEndSummary;
    }

    public void setShowYearEndSummary(String str) {
        this.showYearEndSummary = str;
    }

    public List<MigratedFamilyDataBean> getMigratedFamilyDataBeans() {
        return this.migratedFamilyDataBeans;
    }

    public void setMigratedFamilyDataBeans(List<MigratedFamilyDataBean> list) {
        this.migratedFamilyDataBeans = list;
    }

    public List<LmsCourseDataBean> getCourseDataBeans() {
        return this.courseDataBeans;
    }

    public void setCourseDataBeans(List<LmsCourseDataBean> list) {
        this.courseDataBeans = list;
    }

    public List<LmsUserMetaDataBean> getLmsUserMetaData() {
        return this.lmsUserMetaData;
    }

    public void setLmsUserMetaData(List<LmsUserMetaDataBean> list) {
        this.lmsUserMetaData = list;
    }

    public List<IncentiveMasterDataBean> getIncentiveMasterBeans() {
        return this.incentiveMasterBeans;
    }

    public void setIncentiveMasterBeans(List<IncentiveMasterDataBean> list) {
        this.incentiveMasterBeans = list;
    }

    public List<IncentiveMonthlyDetailsDataBean> getIncentiveMonthlyDetails() {
        return this.incentiveMonthlyDetails;
    }

    public void setIncentiveMonthlyDetails(List<IncentiveMonthlyDetailsDataBean> list) {
        this.incentiveMonthlyDetails = list;
    }

    public List<IncentiveOccurrenceDetailsDataBean> getIncentiveOccurrenceBeans() {
        return this.incentiveOccurrenceBeans;
    }

    public void setIncentiveOccurrenceBeans(List<IncentiveOccurrenceDetailsDataBean> list) {
        this.incentiveOccurrenceBeans = list;
    }

    public List<MenuBean> getMobileMenus() {
        return this.mobileMenus;
    }

    public void setMobileMenus(List<MenuBean> list) {
        this.mobileMenus = list;
    }

    public List<PreviousYearIncentive> getPreviousYearIncentives() {
        return this.previousYearIncentives;
    }

    public void setPreviousYearIncentives(List<PreviousYearIncentive> list) {
        this.previousYearIncentives = list;
    }

    public List<UserBean> getUsers() {
        return this.users;
    }

    public void setUsers(List<UserBean> list) {
        this.users = list;
    }

    public List<HealthInfraTypeLocationBean> getHealthInfraTypeLocationBeanList() {
        return this.healthInfraTypeLocationBeanList;
    }

    public void setHealthInfraTypeLocationBeanList(List<HealthInfraTypeLocationBean> list) {
        this.healthInfraTypeLocationBeanList = list;
    }

    public List<LocationTypeBean> getLocationTypeBeanList() {
        return this.locationTypeBeanList;
    }

    public void setLocationTypeBeanList(List<LocationTypeBean> list) {
        this.locationTypeBeanList = list;
    }

    public List<CampaignSessionDataBean> getCampaignSessionMasterBeanList() {
        return this.campaignSessionMasterBeanList;
    }

    public void setCampaignSessionMasterBeanList(List<CampaignSessionDataBean> list) {
        this.campaignSessionMasterBeanList = list;
    }

    public List<HealthInfraAssignedBean> getHealthInfraAssignedBeans() {
        return this.healthInfraAssignedBeans;
    }

    public void setHealthInfraAssignedBeans(List<HealthInfraAssignedBean> list) {
        this.healthInfraAssignedBeans = list;
    }

    public List<ChlorinationStatusBean> getVbdsChlorinationStatusAreas() {
        return this.vbdsChlorinationStatusAreas;
    }

    public void setVbdsChlorinationStatusAreas(List<ChlorinationStatusBean> list) {
        this.vbdsChlorinationStatusAreas = list;
    }

    public String getBaselineModuleCourseIds() {
        return this.baselineModuleCourseIds;
    }

    public void setBaselineModuleCourseIds(String str) {
        this.baselineModuleCourseIds = str;
    }
}
