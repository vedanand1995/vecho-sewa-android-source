package com.argusoft.sewa.android.app.restclient;

import com.argusoft.sewa.android.app.constants.FieldNameConstants;
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
import com.argusoft.sewa.android.app.databean.LabTestRequest;
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
import com.argusoft.sewa.android.app.databean.SearchBeneficiariesRequestDto;
import com.argusoft.sewa.android.app.databean.StateResponse;
import com.argusoft.sewa.android.app.databean.UserInfoDataBean;
import com.argusoft.sewa.android.app.databean.UwinBeneficiaryDto;
import com.argusoft.sewa.android.app.databean.VerifyOtpResponse;
import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberRchIdBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.support.SupportAttachment;
import com.argusoft.sewa.android.app.support.SupportComment;
import com.argusoft.sewa.android.app.support.SupportTicket;
import java.util.List;
import java.util.Map;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.Streaming;

/* loaded from: classes.dex */
public interface ApiService {
    @POST("api/mobile/firebaseToken")
    Call<ResponseBody> addFireBaseToken(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/techopostassignfamilytouser")
    Call<FamilyDataBean> assignFamilyToUser(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/ndhm/healthid/check-for-direct-auth-mode")
    Call<String> checkForDirectAuth(@QueryMap Map<String, Object> map);

    @GET("api/mobile/getimeiblockedordeletedatabase")
    Call<Map<String, Object>> checkIfDeviceIsBlockedOrDeleteDatabase(@QueryMap Map<String, Object> map);

    @GET("api/mobile/checkmobiletimesyncstatus")
    Call<String> checkIsMobileTimeSyncedProperly(@QueryMap Map<String, Object> map);

    @POST("api/mobile/checkPhoneNumberExists")
    Call<Boolean> checkPhoneNumberExists(@Query(FieldNameConstants.TOKEN) String str, @Query("phone") String str2, @Query(FieldNameConstants.USER_ID) Integer num);

    @POST("api/mobile/ndhm/healthid/confirm-aadhar-demo")
    Call<Map<String, String>> confirmAadharDemo(@Query("userMobileToken") String str, @Body Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/confirm-aadhar-otp")
    Call<Map<String, String>> confirmAadharOtp(@Query("userMobileToken") String str, @Body Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/confirm-bio")
    Call<Map<String, String>> confirmBio(@QueryMap Map<String, Object> map, @Body HealthIdConfirmBioRequest healthIdConfirmBioRequest);

    @POST("api/mobile/ndhm/healthid/confirm-mobile-otp")
    Call<Map<String, String>> confirmMobileOtp(@Query("userMobileToken") String str, @Body Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/confirm-password")
    Call<Map<String, String>> confirmPassword(@Query("userMobileToken") String str, @Body Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/create-using-aadhaar-bio")
    Call<HealthIdAccountProfileResponse> createUsingAadhaarBiometrics(@QueryMap Map<String, Object> map, @Body CreateHidAadharBioRequest createHidAadharBioRequest);

    @POST("api/mobile/ndhm/healthid/create-using-aadhaar-bio-v3")
    Call<EnrollUsingAadhaar> createUsingAadhaarBiometricsV3(@QueryMap Map<String, Object> map, @Body Map<String, Object> map2);

    @POST("api/mobile/ndhm/healthid/create-using-aadhar-otp")
    Call<HealthIdAccountProfileResponse> createUsingAadhaarOTP(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/create-using-aadhaar-otp-v3")
    Call<EnrollUsingAadhaar> createUsingAadhaarOtpV3(@QueryMap Map<String, Object> map, @Body Map<String, Object> map2);

    @POST("api/mobile/ndhm/healthid/create-using-aadhar-demo")
    Call<HealthIdAccountProfileResponse> createUsingAadharDemographics(@QueryMap Map<String, Object> map);

    @POST("api/mobile/getdata")
    Call<QueryMobDataBean> executeQuery(@Body QueryMobDataBean queryMobDataBean);

    @POST("api/mobile/ndhm/healthid/fetch-auth-modes-by-healthid")
    Call<List<String>> fetchAuthModesByHealthId(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/generate-aadhar-otp")
    Call<Map<String, String>> generateAadhaarOTP(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/generate-aadhaar-otp-v3")
    Call<Map<String, String>> generateAadhaarOTPV3(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/generate-mobile-otp-for-login")
    Call<Map<String, String>> generateLoginMobileOTP(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/generate-otp-for-abha-verification-v3")
    Call<Map<String, String>> generateOtpForABHAVerificationV3(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/change-phone-generate-otp")
    Call<Map<String, String>> generateUpdateMobileOTP(@QueryMap Map<String, Object> map, @Body Map<String, String> map2);

    @GET("api/mobile/ndhm/healthid/get-abha-card-verification-via-abha-address")
    Call<ResponseBody> getAbhaCardForVerificationViaAbhaAddress(@QueryMap Map<String, Object> map);

    @GET("api/mobile/ndhm/healthid/get-abha-profile-verification-via-abha-address")
    Call<HealthIdAccountProfileV3Response> getAbhaProfileForVerificationViaAbhaAddress(@QueryMap Map<String, Object> map);

    @GET("api/mobile/ndhm/healthid/get-account-details")
    Call<HealthIdAccountProfileResponse> getAccountProfileResponse(@QueryMap Map<String, Object> map);

    @GET("api/mobile/retrieveAndroidVersion")
    Call<String> getAppVersion();

    @GET("api/mobile/ndhm/healthid/get-all-health-ids-by-member-id")
    Call<List<HIPCareContextMaster>> getCareContextMasterDetails(@QueryMap Map<String, Object> map);

    @GET("api/mobile/getContactNumberForOtpVerification")
    Call<String> getContactNumberForOtpVerification(@Query(FieldNameConstants.TOKEN) String str, @Query(FieldNameConstants.USER_ID) Integer num);

    @POST("api/mobile/getdetailsashafacilitator")
    Call<LoggedInUserPrincipleDataBean> getDataForASHAFacilitator(@Body LoginRequestParamDetailDataBean loginRequestParamDetailDataBean);

    @POST("api/mobile/getDetails")
    Call<LoggedInUserPrincipleDataBean> getDetails(@Body LoginRequestParamDetailDataBean loginRequestParamDetailDataBean);

    @POST("api/mobile/getdetailsasha")
    Call<LoggedInUserPrincipleDataBean> getDetailsForAsha(@Body LoginRequestParamDetailDataBean loginRequestParamDetailDataBean);

    @POST("api/mobile/getdetailsaww")
    Call<LoggedInUserPrincipleDataBean> getDetailsForAww(@Body LoginRequestParamDetailDataBean loginRequestParamDetailDataBean);

    @POST("api/mobile/getdetailsfhsr")
    Call<LoggedInUserPrincipleDataBean> getDetailsForFHSR(@Body LoginRequestParamDetailDataBean loginRequestParamDetailDataBean);

    @POST("api/mobile/getdetailsfhsr")
    Call<LoggedInUserPrincipleDataBean> getDetailsForMO(@Body LoginRequestParamDetailDataBean loginRequestParamDetailDataBean);

    @POST("api/mobile/getdetailsoa")
    Call<LoggedInUserPrincipleDataBean> getDetailsForOA(@Body LoginRequestParamDetailDataBean loginRequestParamDetailDataBean);

    @POST("api/mobile/getdetailsrbsk")
    Call<LoggedInUserPrincipleDataBean> getDetailsForRbsk(@Body LoginRequestParamDetailDataBean loginRequestParamDetailDataBean);

    @POST("api/mobile/getfamiliesbylocation")
    Call<List<FamilyDataBean>> getFamiliesByLocationId(@Body LoginRequestParamDetailDataBean loginRequestParamDetailDataBean);

    @POST("api/mobile/techogetfamilybysearchstring")
    Call<Map<String, FamilyDataBean>> getFamilyToBeAssignedBySearchString(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/getLocationMasterData")
    Call<List<LocationMasterBean>> getLocationMasterData(@Body LoginRequestParamDetailDataBean loginRequestParamDetailDataBean);

    @GET("api/mobile/getMembersByAdvanceSearch")
    Call<List<MemberDataBean>> getMembersByAdvanceSearch(@QueryMap Map<String, Object> map);

    @GET("api/mobile/getMembersOfSchool")
    Call<List<AdolescentDataBean>> getMembersOfSchool(@QueryMap Map<String, Object> map);

    @GET("api/mobile/getNPCBMembersForSpectsApproval")
    Call<List<MemberDataBean>> getNPCBMembersForSpectsApproval(@Query("locationId") List<Integer> list, @QueryMap Map<String, Object> map);

    @GET("api/mobile/getNPCBMembersSentByCHO")
    Call<List<MemberDataBean>> getNPCBMembersSentByCHO(@Query("locationId") List<Integer> list, @QueryMap Map<String, Object> map);

    @GET("api/mobile/getOnlineFollowUpNPCBMembers")
    Call<List<MemberDataBean>> getOnlineFollowUpNPCBMembers(@Query("locationId") List<Integer> list, @QueryMap Map<String, Object> map);

    @GET("api/mobile/getOnlineFortyPlusNPCBMembers")
    Call<List<MemberDataBean>> getOnlineFortyPlusNPCBMembers(@Query("locationId") List<Integer> list, @QueryMap Map<String, Object> map);

    @GET("api/mobile/ndhm/healthid/get-profile-account-abha-card")
    Call<ResponseBody> getProfileAccountAbhaCard(@QueryMap Map<String, Object> map);

    @GET("api/mobile/ndhm/healthid/get-profile-account-abha-details")
    Call<HealthIdAccountProfileV3Response> getProfileAccountDetails(@QueryMap Map<String, Object> map);

    @GET("api/mobile/getRBSKVisionImpairmentReferredMembers")
    Call<List<RbskVisionReferredMemberBean>> getRBSKVisionImpairmentReferredMembers(@QueryMap Map<String, Object> map);

    @POST("api/mobile/rbskmoscreeningdetails")
    Call<List<MemberDataBean>> getRbskMoScreeningMembers(@Body MobileRequestParamDto mobileRequestParamDto);

    @GET("api/mobile/ndhm/healthid/states")
    Call<StateResponse[]> getStates(@Query("userMobileToken") String str);

    @GET("api/mobile/systemConfiguration")
    Call<Map<String, String>> getSystemConfigurationByKey(@Query(FieldNameConstants.KEY) String str);

    @POST("api/mobile/techogettokenvalidity")
    Call<Boolean> getTokenValidity(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/techovalidateusernew")
    Call<UserInfoDataBean> getUser(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/validateuserenc")
    Call<UserInfoDataBean> getUserEncrypted(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/techogetuserformaccessdetail")
    Call<List<FormAccessibilityBean>> getUserFormAccessDetailFromServer(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/techogetuserfromtoken")
    Call<Map<String, String[]>> getUserIdAndTokenFromToken(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/ndhm/healthid/authentication")
    Call<Map<String, String>> healthIdVerificationAuthInit(@Query("userMobileToken") String str, @Body Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/init-linking-care-context")
    Call<Map<String, String>> initLinking(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/link-benefit")
    Call<LinkBenefitIdResponse> linkBenefitId(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/link-benefit-v3")
    Call<LinkBenefitIdResponse> linkBenefitIdV3(@QueryMap Map<String, Object> map);

    @POST("api/mobile/lmsevententry")
    Call<List<RecordStatusBean>> lmsEventEntryFromMobileToDBeans(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/ndhm/healthid/login-with-mobile-verified-abha")
    Call<Map<String, String>> loginWithMobileVerifiedAbha(@QueryMap Map<String, Object> map);

    @POST("api/mobile/markattendance")
    Call<Integer> markAttendanceForTheDay(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/techopostuserreadytomoveproduction")
    Call<List<FormAccessibilityBean>> postUserReadyToMoveProduction(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/ndhm/healthid/verify-mobile-profile-user-abha-verification")
    Call<HealthIdAccountProfileTokenResponse> profileLoginVerifyUser(@QueryMap Map<String, Object> map, @Body Map<String, Object> map2);

    @POST("api/mobile/techorecordentryfrommobiletodbservernew")
    Call<RecordStatusBean[]> recordEntryFromMobileToServer(@Body MobileRequestParamDto mobileRequestParamDto);

    @GET("api/mobile/removeimeiblockedentry")
    Call<ResponseBody> removeEntryForDeviceOfIMEI(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/resend-mobile-otp-for-login")
    Call<Boolean> resendLoginMobileOTP(@Query("userMobileToken") String str, @Body Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/resend-otp")
    Call<Boolean> resendOtp(@Query("userMobileToken") String str, @Body Map<String, Object> map);

    @GET("api/mobile/retrieveFamilyDataBeanByMemberId")
    Call<FamilyDataBean> retrieveImtechoFamilyDataByMemberId(@QueryMap Map<String, Object> map);

    @POST("api/mobile/fetchUwinMember")
    Call<List<UwinBeneficiaryDto>> retrieveMemberFromUwin(@Body SearchBeneficiariesRequestDto searchBeneficiariesRequestDto);

    @GET("api/mobile/retrieveMemberRchIds")
    Call<List<MemberRchIdBean>> retrieveMemberRchIds(@QueryMap Map<String, Object> map);

    @GET("api/mobile/retrieveMembersForOnlineSearch")
    Call<List<MemberDataBean>> retrieveMembersForOnlineSearch(@QueryMap Map<String, Object> map);

    @GET("api/mobile/retrieveMembersOfFamilyByFamilyId")
    Call<List<MemberDataBean>> retrieveMembersOfFamilyByFamilyId(@QueryMap Map<String, Object> map);

    @GET("api/mobile/getserverisalive")
    Call<Boolean> retrieveServerIsAlive();

    @POST("api/mobile/techoisuserinproduction")
    Call<Boolean> retrieveUserInProductionFromServer(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/techorevalidatetoken")
    Call<LoggedInUserPrincipleDataBean> revalidateUserToken(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/ndhm/healthid/heath-id-card-v2")
    Call<ResponseBody> saveHealthIdCardV2(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/search-abha")
    Call<SearchAbhaResponse> searchABHA(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/search-by-abha-address-v3")
    Call<AbhaAddressSearchResponse> searchByAbhaAddress(@QueryMap Map<String, Object> map, @Body Map<String, Object> map2);

    @POST("api/mobile/ndhm/healthid/search")
    Call<HealthIdSearchResponse> searchUserByHealthId(@QueryMap Map<String, Object> map);

    @POST("api/mobile/generateotptecho")
    Call<ResponseBody> sendOtpRequest(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/ndhm/healthid/send-sms-and-get-health-id-card-v3")
    Call<ResponseBody> sendSMSandGetHealthIdCard(@QueryMap Map<String, Object> map);

    @POST("api/mobile/storeattendance")
    Call<ResponseBody> storeAttendanceForTheDay(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/storeRiInventory")
    Call<Integer> storeInventoryDetailsToServer(@QueryMap Map<String, Object> map, @Body RISessionInventoryBean rISessionInventoryBean);

    @POST("api/mobile/storeOpdLabTest")
    Call<ResponseBody> storeOpdLabFormDetails(@Body LabTestRequest labTestRequest);

    @POST("api/mobile/rbskscreeningdetails")
    Call<String> storeRbskScreeningDetails(@Body RbskScreeningDetailDto rbskScreeningDetailDto);

    @POST("api/mobile/storeReferredLabTest")
    Call<ResponseBody> storeReferredLabTestDetails(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/storeRiReturnInventory")
    Call<Integer> storeReturnInventoryDetailsToServer(@QueryMap Map<String, Object> map, @Body RISessionInventoryBean rISessionInventoryBean);

    @Streaming
    @GET("api/mobile/support/tickets/{id}/attachments/{attachmentId}/content")
    Call<ResponseBody> supportAttachmentContent(@Path("id") long j, @Path("attachmentId") long j2);

    @GET("api/mobile/support/tickets/{id}/attachments")
    Call<List<SupportAttachment>> supportAttachments(@Path("id") long j);

    @GET("api/mobile/support/tickets/{id}/comments")
    Call<List<SupportComment>> supportComments(@Path("id") long j);

    @POST("api/mobile/support/tickets/{id}/fixed")
    Call<SupportTicket> supportFixed(@Path("id") long j);

    @GET("api/mobile/support/tickets")
    Call<List<SupportTicket>> supportMine();

    @POST("api/mobile/support/tickets/{id}/not-fixed")
    Call<SupportTicket> supportNotFixed(@Path("id") long j, @Body Map<String, String> map);

    @POST("api/mobile/support/tickets")
    @Multipart
    Call<SupportTicket> supportRaise(@Header("Idempotency-Key") String str, @Part("topic") RequestBody requestBody, @Part("description") RequestBody requestBody2, @Part("diagnostics") RequestBody requestBody3, @Part MultipartBody.Part part, @Part List<MultipartBody.Part> list);

    @POST("api/mobile/support/tickets/{id}/comments")
    Call<SupportComment> supportReply(@Path("id") long j, @Body Map<String, String> map);

    @GET("api/mobile/support/tickets/{id}")
    Call<SupportTicket> supportTicket(@Path("id") long j);

    @POST("api/mobile/support/tickets/{id}/voice")
    @Multipart
    Call<SupportComment> supportVoiceReply(@Path("id") long j, @Part MultipartBody.Part part);

    @POST("api/mobile/techopostmergedfamiliesinformation")
    Call<Boolean> syncMergedFamiliesInformationWithServer(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/user/changeLanguage")
    Call<ResponseBody> updateLanguagePreference(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/updateOtpVerificationDate")
    Call<Void> updateOtpVerificationDate(@Query(FieldNameConstants.TOKEN) String str, @Query(FieldNameConstants.USER_ID) Integer num);

    @POST("api/mobile/uploadMedia")
    @Multipart
    Call<RecordStatusBean> uploadMediaToServer(@Part MultipartBody.Part part, @Part("uploadFileDataBean") UploadFileDataBean uploadFileDataBean);

    @PUT("api/mobile/techouploaduncaughtexceptiondetail")
    Call<String> uploadUncaughtExceptionToServer(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/ndhm/healthid/verify-biometric-for-abha-verification-v3")
    Call<HealthIdProfileLoginVerifyResponse> verifyBiometricForAbhaVerificationV3(@QueryMap Map<String, Object> map, @Body Map<String, Object> map2);

    @POST("api/mobile/ndhm/healthid/verify-demography-care-context")
    Call<String> verifyDemography(@QueryMap Map<String, Object> map, @Body HIPVerifyDemography hIPVerifyDemography);

    @POST("api/mobile/ndhm/healthid/verify-mobile-otp-for-login")
    Call<MobileVerificationResponse> verifyLoginMobileOTP(@Query("userMobileToken") String str, @Body Map<String, Object> map);

    @POST("api/mobile/verifyotptecho")
    Call<Boolean> verifyOtp(@Body MobileRequestParamDto mobileRequestParamDto);

    @POST("api/mobile/ndhm/healthid/verify-otp-for-abha-verification-v3")
    Call<HealthIdProfileLoginVerifyResponse> verifyOtpForAbhaVerificationV3(@QueryMap Map<String, Object> map, @Body Map<String, Object> map2);

    @POST("api/mobile/ndhm/healthid/verify-otp-care-context")
    Call<String> verifyOtpForRecordLinking(@QueryMap Map<String, Object> map);

    @POST("api/mobile/ndhm/healthid/change-phone-otp-verify")
    Call<VerifyOtpResponse> verifyUpdateMobileOTP(@QueryMap Map<String, Object> map, @Body Map<String, String> map2);
}
