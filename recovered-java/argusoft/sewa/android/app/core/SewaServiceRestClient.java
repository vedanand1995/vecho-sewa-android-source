package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.AbhaAddressSearchResponse;
import com.argusoft.sewa.android.app.databean.AdolescentDataBean;
import com.argusoft.sewa.android.app.databean.CreateHidAadharBioRequest;
import com.argusoft.sewa.android.app.databean.EnrollUsingAadhaar;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.HIPCareContextMaster;
import com.argusoft.sewa.android.app.databean.HIPVerifyDemography;
import com.argusoft.sewa.android.app.databean.HealthIdAccountProfileResponse;
import com.argusoft.sewa.android.app.databean.HealthIdAccountProfileTokenResponse;
import com.argusoft.sewa.android.app.databean.HealthIdAccountProfileV3Response;
import com.argusoft.sewa.android.app.databean.HealthIdConfirmBioRequest;
import com.argusoft.sewa.android.app.databean.HealthIdProfileLoginVerifyResponse;
import com.argusoft.sewa.android.app.databean.HealthIdSearchResponse;
import com.argusoft.sewa.android.app.databean.LinkBenefitIdResponse;
import com.argusoft.sewa.android.app.databean.LoggedInUserPrincipleDataBean;
import com.argusoft.sewa.android.app.databean.LoginRequestParamDetailDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MobileRequestParamDto;
import com.argusoft.sewa.android.app.databean.MobileVerificationResponse;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.databean.RbskScreeningDetailDto;
import com.argusoft.sewa.android.app.databean.RbskVisionReferredMemberBean;
import com.argusoft.sewa.android.app.databean.RecordStatusBean;
import com.argusoft.sewa.android.app.databean.SearchAbhaResponse;
import com.argusoft.sewa.android.app.databean.StateResponse;
import com.argusoft.sewa.android.app.databean.UserInfoDataBean;
import com.argusoft.sewa.android.app.databean.VerifyOtpResponse;
import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import com.argusoft.sewa.android.app.model.LmsEventBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberRchIdBean;
import com.argusoft.sewa.android.app.model.MergedFamiliesBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import com.argusoft.sewa.android.app.model.UncaughtExceptionBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface SewaServiceRestClient {
    void addFireBaseToken(MobileRequestParamDto mobileRequestParamDto) throws RestHttpException;

    FamilyDataBean assignFamilyToUser(String str, String str2) throws RestHttpException;

    String checkForDirectAuth(String str) throws RestHttpException;

    Map<String, Object> checkIfDeviceIsBlockedOrDeleteDatabase(String str) throws RestHttpException;

    String checkIsMobileTimeSyncedProperly(Long l) throws RestHttpException;

    Boolean checkPhoneNumberAlreadyExists(String str, Integer num) throws RestHttpException;

    Map<String, String> confirmAadharDemo(String str, String str2, String str3, String str4) throws RestHttpException;

    Map<String, String> confirmAadharOtp(String str, String str2) throws RestHttpException;

    Map<String, String> confirmBio(HealthIdConfirmBioRequest healthIdConfirmBioRequest) throws RestHttpException;

    Map<String, String> confirmMobileOtp(String str, String str2) throws RestHttpException;

    Map<String, String> confirmPassword(String str, String str2) throws RestHttpException;

    HealthIdAccountProfileResponse createUsingAadhaarBiometrics(int i, String str, CreateHidAadharBioRequest createHidAadharBioRequest, String str2) throws RestHttpException;

    EnrollUsingAadhaar createUsingAadhaarBiometricsV3(String str, String str2, String str3, String str4, String str5, Boolean bool, Integer num) throws RestHttpException;

    HealthIdAccountProfileResponse createUsingAadhaarOTP(Integer num, String str, String str2, String str3, String str4, String str5) throws RestHttpException;

    EnrollUsingAadhaar createUsingAadhaarOTPV3(Integer num, String str, String str2, String str3, String str4, String str5, String str6, Boolean bool) throws RestHttpException;

    HealthIdAccountProfileResponse createUsingAadharDemographics(Integer num, String str, String str2, String str3, String str4, String str5, String str6) throws RestHttpException;

    QueryMobDataBean executeQuery(QueryMobDataBean queryMobDataBean) throws RestHttpException;

    List<String> fetchAuthModesByHealthId(String str, Integer num) throws RestHttpException;

    Map<String, String> generateAadhaarOTP(String str, Integer num) throws RestHttpException;

    Map<String, String> generateAadhaarOTPV3(String str, Integer num) throws RestHttpException;

    Map<String, String> generateLoginMobileOTP(String str) throws RestHttpException;

    Map<String, String> generateOtpForAbhaVerificationV3(String str, String str2, Integer num, String str3) throws RestHttpException;

    Map<String, String> generateUpdateMobileOTP(String str, String str2, Integer num) throws RestHttpException;

    HealthIdAccountProfileV3Response getAbhaAccountViaAbhaAddress(String str, Integer num) throws RestHttpException;

    byte[] getAbhaCardForVerificationViaAbhaAddress(Integer num, String str) throws IOException, RestHttpException;

    HealthIdAccountProfileResponse getAccountProfileResponse(String str) throws RestHttpException;

    HealthIdAccountProfileV3Response getAccountProfileResponseV3(String str, Integer num) throws RestHttpException;

    List<HIPCareContextMaster> getCareContextMasterDetails(String str) throws RestHttpException;

    String getContactNumberForOtpVerification(Integer num) throws RestHttpException;

    LoggedInUserPrincipleDataBean getDataForASHAFacilitator(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException;

    LoggedInUserPrincipleDataBean getDetails(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException;

    LoggedInUserPrincipleDataBean getDetailsForAsha(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException;

    LoggedInUserPrincipleDataBean getDetailsForAww(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException;

    LoggedInUserPrincipleDataBean getDetailsForFHSR(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException;

    LoggedInUserPrincipleDataBean getDetailsForMO(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException;

    LoggedInUserPrincipleDataBean getDetailsForOA(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException;

    LoggedInUserPrincipleDataBean getDetailsForRbsk(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException;

    List<FamilyDataBean> getFamiliesByLocationId(Long l, String str) throws RestHttpException;

    Map<String, FamilyDataBean> getFamilyToBeAssignedBySearchString(String str, Boolean bool) throws RestHttpException;

    List<LocationMasterBean> getLocationMasterData(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException;

    List<MemberDataBean> getMembersByAdvanceSearch(Integer num, String str, Integer num2) throws RestHttpException;

    List<AdolescentDataBean> getMembersOfSchool(Long l, Integer num) throws RestHttpException;

    List<MemberDataBean> getNPCBMembersForSpectsApproval(List<Integer> list, Integer num, Integer num2, String str) throws RestHttpException;

    List<MemberDataBean> getNPCBMembersSentByCHO(List<Integer> list, Integer num, Integer num2, String str) throws RestHttpException;

    List<MemberDataBean> getOnlineFollowUpNPCBMembers(List<Integer> list, Integer num, Integer num2, String str) throws RestHttpException;

    List<MemberDataBean> getOnlineFortyPlusNPCBMembers(List<Integer> list, Integer num, Integer num2, String str) throws RestHttpException;

    byte[] getProfileAccountAbhaCard(Integer num, String str) throws IOException, RestHttpException;

    List<RbskVisionReferredMemberBean> getRBSKVisionImpairmentReferredMembers(Integer num, Integer num2, String str) throws RestHttpException;

    List<MemberDataBean> getRbskMoScreeningMembers(List<Integer> list) throws RestHttpException;

    StateResponse[] getStates() throws RestHttpException;

    String getSystemConfigurationByKey(String str) throws RestHttpException;

    Boolean getTokenValidity(MobileRequestParamDto mobileRequestParamDto) throws RestHttpException;

    UserInfoDataBean getUser(String str, String str2, Boolean bool) throws RestHttpException;

    UserInfoDataBean getUserEncrypted(String str, String str2, String str3, Boolean bool) throws RestHttpException;

    List<FormAccessibilityBean> getUserFormAccessDetailFromServer() throws RestHttpException;

    Map<String, String[]> getUserIdAndTokenFromToken(MobileRequestParamDto mobileRequestParamDto) throws RestHttpException;

    Map<String, String> healthIdVerificationAuthInit(String str, String str2) throws RestHttpException;

    Map<String, String> initLinking(String str, Integer num, String str2) throws RestHttpException;

    LinkBenefitIdResponse linkBenefitId(Integer num, String str, String str2, String str3, String str4, String str5) throws RestHttpException;

    LinkBenefitIdResponse linkBenefitV3(Integer num, String str, String str2, String str3, String str4, String str5, Boolean bool) throws RestHttpException;

    List<RecordStatusBean> lmsEventEntryFromMobileToDBeans(List<LmsEventBean> list) throws RestHttpException;

    Map<String, String> loginWithMobileVerifiedAbha(String str, String str2, String str3) throws RestHttpException;

    Integer markAttendanceForTheDay(String str) throws RestHttpException;

    void postUserReadyToMoveProduction(String str) throws RestHttpException;

    RecordStatusBean[] recordEntryFromMobileToServer(String str, String[] strArr) throws RestHttpException;

    void removeEntryForDeviceOfIMEI(String str) throws RestHttpException;

    Boolean resendLoginMobileOTP(String str) throws RestHttpException;

    Boolean resendOtp(String str, String str2) throws RestHttpException;

    String retrieveAndroidVersionFromServer() throws RestHttpException;

    FamilyDataBean retrieveFamilyDataByMemberId(Integer num) throws RestHttpException;

    List<MemberDataBean> retrieveMemberFromUwinOnline(String str, String str2) throws RestHttpException;

    List<MemberRchIdBean> retrieveMemberRchIds(String str, Long l) throws RestHttpException;

    List<MemberDataBean> retrieveMembersForRIOnline(String str, String str2, String str3, String str4, String str5, String str6, String str7, Integer num, String str8, Long l, Long l2, String str9) throws RestHttpException;

    List<MemberDataBean> retrieveMembersOfFamilyByFamilyId(String str) throws RestHttpException;

    boolean retrieveServerIsAlive() throws RestHttpException;

    Boolean retrieveUserInProductionFromServer(String str) throws RestHttpException;

    Boolean retrieveUserInTrainingFromServer(String str) throws RestHttpException;

    LoggedInUserPrincipleDataBean revalidateUserToken(MobileRequestParamDto mobileRequestParamDto) throws RestHttpException;

    byte[] saveHealthIdCardV2(String str, String str2) throws IOException, RestHttpException;

    SearchAbhaResponse searchABHA(String str, String str2, Integer num) throws RestHttpException;

    AbhaAddressSearchResponse searchByAbhaAddress(Integer num, String str) throws RestHttpException;

    HealthIdSearchResponse searchUserByHealthId(String str) throws RestHttpException;

    void sendOtpRequest(String str) throws RestHttpException;

    byte[] sendSMSandGetHealthIdCard(String str, String str2) throws IOException, RestHttpException;

    void storeAttendanceForTheDay(String str, Integer num) throws RestHttpException;

    Integer storeInventoryDetailsToServer(RISessionInventoryBean rISessionInventoryBean) throws RestHttpException;

    String storeOpdLabFormDetails(String str, Integer num, String str2) throws RestHttpException;

    String storeRbskScreeningDetails(RbskScreeningDetailDto rbskScreeningDetailDto) throws RestHttpException;

    String storeReferredLabTestDetails(String str) throws RestHttpException;

    Integer storeReturnInventoryDetailsToServer(RISessionInventoryBean rISessionInventoryBean) throws RestHttpException;

    Boolean syncMergedFamiliesInformationWithServer(List<MergedFamiliesBean> list) throws RestHttpException;

    void updateOtpVerificationDate(Integer num) throws RestHttpException;

    String uploadUncaughtExceptionToServer(Long l, List<UncaughtExceptionBean> list) throws RestHttpException;

    HealthIdProfileLoginVerifyResponse verifyBiometricForAbhaVerificationV3(String str, String str2, Integer num, String str3) throws RestHttpException;

    HealthIdProfileLoginVerifyResponse verifyBiometricForAbhaVerificationV3(String str, String str2, String str3, Integer num) throws RestHttpException;

    String verifyDemography(String str, HIPVerifyDemography hIPVerifyDemography) throws RestHttpException;

    MobileVerificationResponse verifyLoginMobileOTP(String str, String str2) throws RestHttpException;

    HealthIdAccountProfileTokenResponse verifyMobileProfileUserAbhaVerification(Integer num, String str, String str2, String str3) throws RestHttpException;

    Boolean verifyOtp(String str, String str2) throws RestHttpException;

    HealthIdProfileLoginVerifyResponse verifyOtpForAbhaVerificationV3(String str, String str2, String str3, Integer num) throws RestHttpException;

    String verifyOtpForRecordLinking(String str, String str2) throws RestHttpException;

    VerifyOtpResponse verifyUpdateMobileOTP(String str, String str2, Integer num, String str3, String str4) throws RestHttpException;
}
