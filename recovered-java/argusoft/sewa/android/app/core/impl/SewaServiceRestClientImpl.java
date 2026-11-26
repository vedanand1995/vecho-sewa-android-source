package com.argusoft.sewa.android.app.core.impl;

import android.util.Base64;
import android.util.Log;
import com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticBackport0;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.SewaServiceRestClient;
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
import com.argusoft.sewa.android.app.model.LmsEventBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberRchIdBean;
import com.argusoft.sewa.android.app.model.MergedFamiliesBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import com.argusoft.sewa.android.app.model.UncaughtExceptionBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.restclient.impl.ApiManager;
import com.argusoft.sewa.android.app.restclient.impl.RestRequestImpl;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public class SewaServiceRestClientImpl implements SewaServiceRestClient {
    ApiManager apiManager;
    RestRequestImpl restRequest;
    Dao<VersionBean, Integer> versionBeanDao;

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String getSystemConfigurationByKey(String str) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (String) ((Map) apiManager.execute(apiManager.getInstance().getSystemConfigurationByKey(str))).get(str);
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String retrieveAndroidVersionFromServer() throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (String) apiManager.execute(apiManager.getInstance().getAppVersion());
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public boolean retrieveServerIsAlive() throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return ((Boolean) apiManager.execute(apiManager.getInstance().retrieveServerIsAlive())).booleanValue();
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Boolean retrieveUserInProductionFromServer(String str) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setUserName(str);
        ApiManager apiManager = this.apiManager;
        return (Boolean) apiManager.execute(apiManager.getInstance().retrieveUserInProductionFromServer(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Boolean retrieveUserInTrainingFromServer(String str) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setUserName(str);
        ApiManager apiManager = this.apiManager;
        return (Boolean) apiManager.execute(apiManager.getInstance().retrieveUserInProductionFromServer(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public UserInfoDataBean getUser(String str, String str2, Boolean bool) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setUserName(str);
        mobileRequestParamDto.setPassword(str2);
        mobileRequestParamDto.setFirstTimeLogin(bool);
        ApiManager apiManager = this.apiManager;
        return (UserInfoDataBean) apiManager.execute(apiManager.getInstance().getUser(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public UserInfoDataBean getUserEncrypted(String str, String str2, String str3, Boolean bool) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setUserName(str);
        mobileRequestParamDto.setPassword(new String(Base64.encode(str2.getBytes(), 2)));
        mobileRequestParamDto.setFirstTimeLogin(bool);
        mobileRequestParamDto.setFirebaseToken(str3);
        ApiManager apiManager = this.apiManager;
        return (UserInfoDataBean) apiManager.execute(apiManager.getInstance().getUserEncrypted(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public void addFireBaseToken(MobileRequestParamDto mobileRequestParamDto) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        apiManager.execute(apiManager.getInstance().addFireBaseToken(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String uploadUncaughtExceptionToServer(Long l, List<UncaughtExceptionBean> list) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setUserId(l);
        mobileRequestParamDto.setUncaughtExceptionBeans(list);
        ApiManager apiManager = this.apiManager;
        return (String) apiManager.execute(apiManager.getInstance().uploadUncaughtExceptionToServer(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public RecordStatusBean[] recordEntryFromMobileToServer(String str, String[] strArr) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(str);
        mobileRequestParamDto.setRecords(strArr);
        ApiManager apiManager = this.apiManager;
        return (RecordStatusBean[]) apiManager.execute(apiManager.getInstance().recordEntryFromMobileToServer(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Boolean syncMergedFamiliesInformationWithServer(List<MergedFamiliesBean> list) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        mobileRequestParamDto.setMergedFamiliesBeans(list);
        ApiManager apiManager = this.apiManager;
        return (Boolean) apiManager.execute(apiManager.getInstance().syncMergedFamiliesInformationWithServer(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, FamilyDataBean> getFamilyToBeAssignedBySearchString(String str, Boolean bool) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        mobileRequestParamDto.setSearchString(str);
        mobileRequestParamDto.setSearchByFamilyId(bool);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().getFamilyToBeAssignedBySearchString(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public FamilyDataBean assignFamilyToUser(String str, String str2) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        mobileRequestParamDto.setLocationId(str);
        mobileRequestParamDto.setFamilyId(str2);
        ApiManager apiManager = this.apiManager;
        return (FamilyDataBean) apiManager.execute(apiManager.getInstance().assignFamilyToUser(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<FormAccessibilityBean> getUserFormAccessDetailFromServer() throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getUserFormAccessDetailFromServer(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public void postUserReadyToMoveProduction(String str) throws RestHttpException {
        if (SewaUtil.isUserInTraining) {
            String str2 = WSConstants.CONTEXT_URL_TECHO_LIVE;
            MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
            mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
            mobileRequestParamDto.setFormCode(str);
            ApiManager apiManager = this.apiManager;
            apiManager.execute(apiManager.getInstance().postUserReadyToMoveProduction(mobileRequestParamDto));
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<LocationMasterBean> getLocationMasterData(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getLocationMasterData(loginRequestParamDetailDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LoggedInUserPrincipleDataBean getDetails(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (LoggedInUserPrincipleDataBean) apiManager.execute(apiManager.getInstance().getDetails(loginRequestParamDetailDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LoggedInUserPrincipleDataBean getDetailsForAsha(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (LoggedInUserPrincipleDataBean) apiManager.execute(apiManager.getInstance().getDetailsForAsha(loginRequestParamDetailDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LoggedInUserPrincipleDataBean getDetailsForAww(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (LoggedInUserPrincipleDataBean) apiManager.execute(apiManager.getInstance().getDetailsForAww(loginRequestParamDetailDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LoggedInUserPrincipleDataBean getDetailsForRbsk(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (LoggedInUserPrincipleDataBean) apiManager.execute(apiManager.getInstance().getDetailsForRbsk(loginRequestParamDetailDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LoggedInUserPrincipleDataBean getDetailsForOA(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (LoggedInUserPrincipleDataBean) apiManager.execute(apiManager.getInstance().getDetailsForOA(loginRequestParamDetailDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LoggedInUserPrincipleDataBean getDetailsForFHSR(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (LoggedInUserPrincipleDataBean) apiManager.execute(apiManager.getInstance().getDetailsForFHSR(loginRequestParamDetailDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LoggedInUserPrincipleDataBean getDetailsForMO(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (LoggedInUserPrincipleDataBean) apiManager.execute(apiManager.getInstance().getDetailsForMO(loginRequestParamDetailDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LoggedInUserPrincipleDataBean getDataForASHAFacilitator(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (LoggedInUserPrincipleDataBean) apiManager.execute(apiManager.getInstance().getDataForASHAFacilitator(loginRequestParamDetailDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<FamilyDataBean> getFamiliesByLocationId(Long l, String str) throws RestHttpException {
        LoginRequestParamDetailDataBean loginRequestParamDetailDataBean = new LoginRequestParamDetailDataBean();
        loginRequestParamDetailDataBean.setToken(SewaTransformer.loginBean.getUserToken());
        loginRequestParamDetailDataBean.setLocationId(l);
        loginRequestParamDetailDataBean.setLastUpdateDateForFamily(str);
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getFamiliesByLocationId(loginRequestParamDetailDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Boolean getTokenValidity(MobileRequestParamDto mobileRequestParamDto) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (Boolean) apiManager.execute(apiManager.getInstance().getTokenValidity(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LoggedInUserPrincipleDataBean revalidateUserToken(MobileRequestParamDto mobileRequestParamDto) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (LoggedInUserPrincipleDataBean) apiManager.execute(apiManager.getInstance().revalidateUserToken(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String[]> getUserIdAndTokenFromToken(MobileRequestParamDto mobileRequestParamDto) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().getUserIdAndTokenFromToken(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public QueryMobDataBean executeQuery(QueryMobDataBean queryMobDataBean) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (QueryMobDataBean) apiManager.execute(apiManager.getInstance().executeQuery(queryMobDataBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String storeRbskScreeningDetails(RbskScreeningDetailDto rbskScreeningDetailDto) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (String) apiManager.execute(apiManager.getInstance().storeRbskScreeningDetails(rbskScreeningDetailDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<MemberDataBean> getRbskMoScreeningMembers(List<Integer> list) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setLocationIds(list);
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getRbskMoScreeningMembers(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public void sendOtpRequest(String str) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        mobileRequestParamDto.setMobileNumber(str);
        ApiManager apiManager = this.apiManager;
        apiManager.execute(apiManager.getInstance().sendOtpRequest(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Boolean verifyOtp(String str, String str2) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        mobileRequestParamDto.setMobileNumber(str);
        mobileRequestParamDto.setOtp(str2);
        ApiManager apiManager = this.apiManager;
        return (Boolean) apiManager.execute(apiManager.getInstance().verifyOtp(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Integer markAttendanceForTheDay(String str) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        mobileRequestParamDto.setGpsRecords(str);
        ApiManager apiManager = this.apiManager;
        return (Integer) apiManager.execute(apiManager.getInstance().markAttendanceForTheDay(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public void storeAttendanceForTheDay(String str, Integer num) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        mobileRequestParamDto.setGpsRecords(str);
        mobileRequestParamDto.setAttendanceId(num);
        ApiManager apiManager = this.apiManager;
        apiManager.execute(apiManager.getInstance().storeAttendanceForTheDay(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, Object> checkIfDeviceIsBlockedOrDeleteDatabase(String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("imei", str);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().checkIfDeviceIsBlockedOrDeleteDatabase(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public void removeEntryForDeviceOfIMEI(String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("imei", str);
        ApiManager apiManager = this.apiManager;
        apiManager.execute(apiManager.getInstance().removeEntryForDeviceOfIMEI(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String storeOpdLabFormDetails(String str, Integer num, String str2) throws RestHttpException {
        LabTestRequest labTestRequest = new LabTestRequest(str, num.intValue(), str2, SewaTransformer.loginBean.getUserToken());
        ApiManager apiManager = this.apiManager;
        try {
            return ((ResponseBody) apiManager.execute(apiManager.getInstance().storeOpdLabFormDetails(labTestRequest))).string();
        } catch (IOException e) {
            throw new RestHttpException(e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String storeReferredLabTestDetails(String str) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        mobileRequestParamDto.setAnswerString(str);
        ApiManager apiManager = this.apiManager;
        try {
            return ((ResponseBody) apiManager.execute(apiManager.getInstance().storeReferredLabTestDetails(mobileRequestParamDto))).string();
        } catch (IOException e) {
            throw new RestHttpException(e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String checkIsMobileTimeSyncedProperly(Long l) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("timestamp", l);
        ApiManager apiManager = this.apiManager;
        return (String) apiManager.execute(apiManager.getInstance().checkIsMobileTimeSyncedProperly(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<RecordStatusBean> lmsEventEntryFromMobileToDBeans(List<LmsEventBean> list) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        mobileRequestParamDto.setMobileEvents(list);
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().lmsEventEntryFromMobileToDBeans(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> generateAadhaarOTP(String str, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("aadhaar", str);
        map.put("memberId", num);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().generateAadhaarOTP(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> generateAadhaarOTPV3(String str, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("aadhaar", str);
        map.put("memberId", num);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().generateAadhaarOTPV3(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdAccountProfileResponse createUsingAadhaarOTP(Integer num, String str, String str2, String str3, String str4, String str5) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", num);
        map.put(AadharScanUtil.MOBILE_HEX, str);
        map.put("otp", str2);
        map.put("txnId", str3);
        map.put("featureName", str4);
        map.put("consentValues", str5);
        ApiManager apiManager = this.apiManager;
        return (HealthIdAccountProfileResponse) apiManager.execute(apiManager.getInstance().createUsingAadhaarOTP(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public EnrollUsingAadhaar createUsingAadhaarOTPV3(Integer num, String str, String str2, String str3, String str4, String str5, String str6, Boolean bool) throws RestHttpException {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map2.put("txnId", str4);
        map2.put("otpValue", str3);
        map2.put(AadharScanUtil.MOBILE_HEX, str2);
        map2.put("aadhaar", str);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", num);
        map.put("featureName", str5);
        map.put("consentValue", str6);
        map.put("isAadhaarDetMatchConsent", bool);
        ApiManager apiManager = this.apiManager;
        return (EnrollUsingAadhaar) apiManager.execute(apiManager.getInstance().createUsingAadhaarOtpV3(map, map2));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdAccountProfileResponse createUsingAadharDemographics(Integer num, String str, String str2, String str3, String str4, String str5, String str6) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", num);
        map.put("aadhar", str);
        map.put("dateOfBirth", str2);
        map.put("gender", str3);
        map.put(AadharScanUtil.MOBILE_HEX, str4);
        map.put("name", str5);
        map.put("consentValues", str6);
        ApiManager apiManager = this.apiManager;
        return (HealthIdAccountProfileResponse) apiManager.execute(apiManager.getInstance().createUsingAadharDemographics(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public byte[] saveHealthIdCardV2(String str, String str2) throws IOException, RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put(FieldNameConstants.TOKEN, str);
        map.put("healthIdNumber", str2);
        ApiManager apiManager = this.apiManager;
        return ((ResponseBody) apiManager.execute(apiManager.getInstance().saveHealthIdCardV2(map))).bytes();
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public byte[] sendSMSandGetHealthIdCard(String str, String str2) throws IOException, RestHttpException {
        HashMap map = new HashMap();
        map.put("healthIdNumber", str2);
        map.put(FieldNameConstants.TOKEN, str);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        ApiManager apiManager = this.apiManager;
        return ((ResponseBody) apiManager.execute(apiManager.getInstance().sendSMSandGetHealthIdCard(map))).bytes();
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public byte[] getProfileAccountAbhaCard(Integer num, String str) throws IOException, RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", num);
        map.put(FieldNameConstants.TOKEN, str);
        ApiManager apiManager = this.apiManager;
        return ((ResponseBody) apiManager.execute(apiManager.getInstance().getProfileAccountAbhaCard(map))).bytes();
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> generateUpdateMobileOTP(String str, String str2, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("memberId", num);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map2 = new HashMap();
        map2.put("txnID", str);
        map2.put(AadharScanUtil.MOBILE_HEX, str2);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().generateUpdateMobileOTP(map, map2));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public VerifyOtpResponse verifyUpdateMobileOTP(String str, String str2, Integer num, String str3, String str4) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("txnId", str);
        map.put("otp", str2);
        HashMap map2 = new HashMap();
        map2.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map2.put("memberId", num);
        map2.put(AadharScanUtil.MOBILE_HEX, str3);
        map2.put("healthIdNumber", str4);
        ApiManager apiManager = this.apiManager;
        return (VerifyOtpResponse) apiManager.execute(apiManager.getInstance().verifyUpdateMobileOTP(map2, map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdSearchResponse searchUserByHealthId(String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("healthId", str);
        ApiManager apiManager = this.apiManager;
        return (HealthIdSearchResponse) apiManager.execute(apiManager.getInstance().searchUserByHealthId(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public AbhaAddressSearchResponse searchByAbhaAddress(Integer num, String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("memberId", num);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map2 = new HashMap();
        map2.put("abhaAddress", str);
        ApiManager apiManager = this.apiManager;
        return (AbhaAddressSearchResponse) apiManager.execute(apiManager.getInstance().searchByAbhaAddress(map, map2));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> healthIdVerificationAuthInit(String str, String str2) throws RestHttpException {
        new HashMap().put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map = new HashMap();
        map.put("healthid", str);
        map.put("authMethod", str2);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().healthIdVerificationAuthInit(SewaTransformer.loginBean.getUserToken(), map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> confirmAadharDemo(String str, String str2, String str3, String str4) throws RestHttpException {
        new HashMap().put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map = new HashMap();
        map.put("txnId", str);
        map.put("gender", str2);
        map.put("name", str3);
        map.put("yearOfBirth", str4);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().confirmAadharDemo(SewaTransformer.loginBean.getUserToken(), map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> confirmAadharOtp(String str, String str2) throws RestHttpException {
        new HashMap().put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map = new HashMap();
        map.put("txnId", str);
        map.put("otp", str2);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().confirmAadharOtp(SewaTransformer.loginBean.getUserToken(), map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdAccountProfileResponse createUsingAadhaarBiometrics(int i, String str, CreateHidAadharBioRequest createHidAadharBioRequest, String str2) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", Integer.valueOf(i));
        map.put("featureName", str);
        map.put("consentValues", str2);
        ApiManager apiManager = this.apiManager;
        return (HealthIdAccountProfileResponse) apiManager.execute(apiManager.getInstance().createUsingAadhaarBiometrics(map, createHidAadharBioRequest));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> confirmMobileOtp(String str, String str2) throws RestHttpException {
        new HashMap().put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map = new HashMap();
        map.put("txnId", str);
        map.put("otp", str2);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().confirmMobileOtp(SewaTransformer.loginBean.getUserToken(), map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> confirmPassword(String str, String str2) throws RestHttpException {
        new HashMap().put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map = new HashMap();
        map.put("txnId", str);
        map.put("password", str2);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().confirmPassword(SewaTransformer.loginBean.getUserToken(), map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> confirmBio(HealthIdConfirmBioRequest healthIdConfirmBioRequest) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().confirmBio(map, healthIdConfirmBioRequest));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdAccountProfileResponse getAccountProfileResponse(String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put(FieldNameConstants.TOKEN, str);
        ApiManager apiManager = this.apiManager;
        return (HealthIdAccountProfileResponse) apiManager.execute(apiManager.getInstance().getAccountProfileResponse(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdAccountProfileV3Response getAccountProfileResponseV3(String str, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put(FieldNameConstants.TOKEN, str);
        map.put("memberId", num);
        ApiManager apiManager = this.apiManager;
        return (HealthIdAccountProfileV3Response) apiManager.execute(apiManager.getInstance().getProfileAccountDetails(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdAccountProfileV3Response getAbhaAccountViaAbhaAddress(String str, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put(FieldNameConstants.TOKEN, str);
        map.put("memberId", num);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        ApiManager apiManager = this.apiManager;
        return (HealthIdAccountProfileV3Response) apiManager.execute(apiManager.getInstance().getAbhaProfileForVerificationViaAbhaAddress(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Boolean resendOtp(String str, String str2) throws RestHttpException {
        new HashMap().put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map = new HashMap();
        map.put("txnId", str);
        map.put("authMethod", str2);
        ApiManager apiManager = this.apiManager;
        return (Boolean) apiManager.execute(apiManager.getInstance().resendOtp(SewaTransformer.loginBean.getUserToken(), map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> generateLoginMobileOTP(String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("mobileNumber", str);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().generateLoginMobileOTP(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> generateOtpForAbhaVerificationV3(String str, String str2, Integer num, String str3) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("scope", str);
        map.put("loginId", str2);
        map.put("memberId", num);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        if (OtpVerificationActivity$$ExternalSyntheticBackport0.m(str3)) {
            map.put("txnId", str3);
        }
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().generateOtpForABHAVerificationV3(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public SearchAbhaResponse searchABHA(String str, String str2, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("scope", str);
        map.put("memberId", num);
        map.put("loginId", str2);
        ApiManager apiManager = this.apiManager;
        return (SearchAbhaResponse) apiManager.execute(apiManager.getInstance().searchABHA(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdProfileLoginVerifyResponse verifyOtpForAbhaVerificationV3(String str, String str2, String str3, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("scope", str);
        map.put("memberId", num);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map2 = new HashMap();
        map2.put("txnId", str3);
        map2.put("otpValue", str2);
        ApiManager apiManager = this.apiManager;
        return (HealthIdProfileLoginVerifyResponse) apiManager.execute(apiManager.getInstance().verifyOtpForAbhaVerificationV3(map, map2));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LinkBenefitIdResponse linkBenefitV3(Integer num, String str, String str2, String str3, String str4, String str5, Boolean bool) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", num);
        map.put(FieldNameConstants.TOKEN, str2);
        map.put(RelatedPropertyNameConstants.ABHA_NUMBER, str);
        map.put("featureName", str3);
        map.put("authMethodType", str4);
        map.put("consentValues", str5);
        map.put("isVerifyViaAbhaAddress", bool);
        ApiManager apiManager = this.apiManager;
        return (LinkBenefitIdResponse) apiManager.execute(apiManager.getInstance().linkBenefitIdV3(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public byte[] getAbhaCardForVerificationViaAbhaAddress(Integer num, String str) throws IOException, RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", num);
        map.put(FieldNameConstants.TOKEN, str);
        ApiManager apiManager = this.apiManager;
        return ((ResponseBody) apiManager.execute(apiManager.getInstance().getAbhaCardForVerificationViaAbhaAddress(map))).bytes();
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public MobileVerificationResponse verifyLoginMobileOTP(String str, String str2) throws RestHttpException {
        new HashMap().put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map = new HashMap();
        map.put("txnId", str);
        map.put("otp", str2);
        ApiManager apiManager = this.apiManager;
        return (MobileVerificationResponse) apiManager.execute(apiManager.getInstance().verifyLoginMobileOTP(SewaTransformer.loginBean.getUserToken(), map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> loginWithMobileVerifiedAbha(String str, String str2, String str3) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put(FieldNameConstants.TOKEN, str3);
        map.put("txnId", str);
        map.put("healthId", str2);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().loginWithMobileVerifiedAbha(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdAccountProfileTokenResponse verifyMobileProfileUserAbhaVerification(Integer num, String str, String str2, String str3) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("txnId", str);
        map.put("ABHANumber", str2);
        HashMap map2 = new HashMap();
        map2.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map2.put("memberId", num);
        map2.put(FieldNameConstants.TOKEN, str3);
        ApiManager apiManager = this.apiManager;
        return (HealthIdAccountProfileTokenResponse) apiManager.execute(apiManager.getInstance().profileLoginVerifyUser(map2, map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Boolean resendLoginMobileOTP(String str) throws RestHttpException {
        new HashMap().put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        HashMap map = new HashMap();
        map.put("txnId", str);
        ApiManager apiManager = this.apiManager;
        return (Boolean) apiManager.execute(apiManager.getInstance().resendLoginMobileOTP(SewaTransformer.loginBean.getUserToken(), map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public StateResponse[] getStates() throws RestHttpException {
        new HashMap().put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        ApiManager apiManager = this.apiManager;
        return (StateResponse[]) apiManager.execute(apiManager.getInstance().getStates(SewaTransformer.loginBean.getUserToken()));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public LinkBenefitIdResponse linkBenefitId(Integer num, String str, String str2, String str3, String str4, String str5) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", num);
        map.put("userToken", str);
        map.put("stateCode", str2);
        map.put("authMethodType", str3);
        map.put("featureName", str4);
        map.put("consentValues", str5);
        ApiManager apiManager = this.apiManager;
        return (LinkBenefitIdResponse) apiManager.execute(apiManager.getInstance().linkBenefitId(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public EnrollUsingAadhaar createUsingAadhaarBiometricsV3(String str, String str2, String str3, String str4, String str5, Boolean bool, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("aadhaar", str);
        map.put("fingerPrintAuthPid", str2);
        map.put(AadharScanUtil.MOBILE_HEX, str3);
        HashMap map2 = new HashMap();
        map2.put("memberId", num);
        map2.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map2.put("featureName", str4);
        map2.put("consentValues", str5);
        map2.put("isAadhaarDetailMatchConsentGiven", bool);
        ApiManager apiManager = this.apiManager;
        return (EnrollUsingAadhaar) apiManager.execute(apiManager.getInstance().createUsingAadhaarBiometricsV3(map2, map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdProfileLoginVerifyResponse verifyBiometricForAbhaVerificationV3(String str, String str2, String str3, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("aadhaar", str2);
        map.put("fingerPrintAuthPid", str3);
        HashMap map2 = new HashMap();
        map2.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map2.put("scope", str);
        map2.put("memberId", num);
        ApiManager apiManager = this.apiManager;
        return (HealthIdProfileLoginVerifyResponse) apiManager.execute(apiManager.getInstance().verifyBiometricForAbhaVerificationV3(map2, map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public HealthIdProfileLoginVerifyResponse verifyBiometricForAbhaVerificationV3(String str, String str2, Integer num, String str3) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("txnId", str3);
        map.put("fingerPrintAuthPid", str2);
        HashMap map2 = new HashMap();
        map2.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map2.put("scope", str);
        map2.put("memberId", num);
        ApiManager apiManager = this.apiManager;
        return (HealthIdProfileLoginVerifyResponse) apiManager.execute(apiManager.getInstance().verifyBiometricForAbhaVerificationV3(map2, map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Map<String, String> initLinking(String str, Integer num, String str2) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", num);
        map.put("healthId", str);
        map.put("authMode", str2);
        ApiManager apiManager = this.apiManager;
        return (Map) apiManager.execute(apiManager.getInstance().initLinking(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<HIPCareContextMaster> getCareContextMasterDetails(String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", str);
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getCareContextMasterDetails(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String checkForDirectAuth(String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("requestId", str);
        ApiManager apiManager = this.apiManager;
        return (String) apiManager.execute(apiManager.getInstance().checkForDirectAuth(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String verifyDemography(String str, HIPVerifyDemography hIPVerifyDemography) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("requestId", str);
        ApiManager apiManager = this.apiManager;
        return (String) apiManager.execute(apiManager.getInstance().verifyDemography(map, hIPVerifyDemography));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<String> fetchAuthModesByHealthId(String str, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("memberId", num);
        map.put("healthId", str);
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().fetchAuthModesByHealthId(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String verifyOtpForRecordLinking(String str, String str2) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        map.put("requestId", str);
        map.put("otp", str2);
        ApiManager apiManager = this.apiManager;
        return (String) apiManager.execute(apiManager.getInstance().verifyOtpForRecordLinking(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<AdolescentDataBean> getMembersOfSchool(Long l, Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put(RelatedPropertyNameConstants.SCHOOL_ACTUAL_ID, l);
        map.put("standard", num);
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getMembersOfSchool(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<MemberDataBean> getMembersByAdvanceSearch(Integer num, String str, Integer num2) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("parentId", num);
        map.put("searchText", str);
        map.put("standard", num2);
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getMembersByAdvanceSearch(map));
    }

    public void updateLanguagePreference(String str) throws RestHttpException {
        MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
        mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
        mobileRequestParamDto.setLanguageCode(str);
        ApiManager apiManager = this.apiManager;
        apiManager.execute(apiManager.getInstance().updateLanguagePreference(mobileRequestParamDto));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<MemberRchIdBean> retrieveMemberRchIds(String str, Long l) throws RestHttpException {
        HashMap map = new HashMap();
        map.put(FieldNameConstants.TOKEN, str);
        map.put(FieldNameConstants.MODIFIED_ON, l);
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().retrieveMemberRchIds(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<MemberDataBean> retrieveMembersForRIOnline(String str, String str2, String str3, String str4, String str5, String str6, String str7, Integer num, String str8, Long l, Long l2, String str9) throws RestHttpException {
        HashMap map = new HashMap();
        if (str != null) {
            map.put("mobileNumber", str);
        }
        if (str2 != null) {
            map.put("healthIdNumber", str2);
        }
        if (str3 != null) {
            map.put("familyId", str3);
        }
        if (str4 != null) {
            map.put("uniqueHealthId", str4);
        }
        if (str5 != null) {
            map.put("name", str5);
        }
        if (str6 != null) {
            map.put("dob", str6);
        }
        if (str7 != null) {
            map.put(RelatedPropertyNameConstants.LMP, str7);
        }
        if (num != null) {
            map.put("offset", num);
        }
        if (l != null) {
            map.put("locationId", l);
        }
        if (l2 != null) {
            map.put("scheduledDate", l2);
        }
        if (str9 != null) {
            map.put(FormulaConstants.VALIDATION_AADHAAR_NUMBER, str9);
        }
        map.put("selectedMemberType", str8);
        Log.d("requestParams", map.toString());
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().retrieveMembersForOnlineSearch(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<MemberDataBean> retrieveMemberFromUwinOnline(String str, String str2) throws RestHttpException {
        SearchBeneficiariesRequestDto searchBeneficiariesRequestDto = new SearchBeneficiariesRequestDto(str, str2);
        Log.d("requestDto", new Gson().toJson(searchBeneficiariesRequestDto));
        ApiManager apiManager = this.apiManager;
        List<UwinBeneficiaryDto> list = (List) apiManager.execute(apiManager.getInstance().retrieveMemberFromUwin(searchBeneficiariesRequestDto));
        ArrayList arrayList = new ArrayList();
        if (list == null || list.isEmpty()) {
            Log.w("UWIN", "Response is null or empty");
            return arrayList;
        }
        for (UwinBeneficiaryDto uwinBeneficiaryDto : list) {
            if (uwinBeneficiaryDto != null) {
                arrayList.add(SewaTransformer.convertUwinMemberDtoToMemberDataBean(uwinBeneficiaryDto));
            }
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public FamilyDataBean retrieveFamilyDataByMemberId(Integer num) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("memberId", num);
        ApiManager apiManager = this.apiManager;
        return (FamilyDataBean) apiManager.execute(apiManager.getInstance().retrieveImtechoFamilyDataByMemberId(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<MemberDataBean> retrieveMembersOfFamilyByFamilyId(String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("familyId", str);
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().retrieveMembersOfFamilyByFamilyId(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Integer storeInventoryDetailsToServer(RISessionInventoryBean rISessionInventoryBean) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        ApiManager apiManager = this.apiManager;
        return (Integer) apiManager.execute(apiManager.getInstance().storeInventoryDetailsToServer(map, rISessionInventoryBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Integer storeReturnInventoryDetailsToServer(RISessionInventoryBean rISessionInventoryBean) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        ApiManager apiManager = this.apiManager;
        return (Integer) apiManager.execute(apiManager.getInstance().storeReturnInventoryDetailsToServer(map, rISessionInventoryBean));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<MemberDataBean> getNPCBMembersSentByCHO(List<Integer> list, Integer num, Integer num2, String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("limit", num);
        map.put("offset", num2);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        if (str != null) {
            map.put("search", str);
        }
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getNPCBMembersSentByCHO(list, map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<MemberDataBean> getNPCBMembersForSpectsApproval(List<Integer> list, Integer num, Integer num2, String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("limit", num);
        map.put("offset", num2);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        if (str != null) {
            map.put("search", str);
        }
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getNPCBMembersForSpectsApproval(list, map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<MemberDataBean> getOnlineFortyPlusNPCBMembers(List<Integer> list, Integer num, Integer num2, String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("limit", num);
        map.put("offset", num2);
        if (str != null) {
            map.put("search", str);
        }
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getOnlineFortyPlusNPCBMembers(list, map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<MemberDataBean> getOnlineFollowUpNPCBMembers(List<Integer> list, Integer num, Integer num2, String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("limit", num);
        map.put("offset", num2);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        if (str != null) {
            map.put("search", str);
        }
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getOnlineFollowUpNPCBMembers(list, map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public List<RbskVisionReferredMemberBean> getRBSKVisionImpairmentReferredMembers(Integer num, Integer num2, String str) throws RestHttpException {
        HashMap map = new HashMap();
        map.put("limit", num);
        map.put("offset", num2);
        map.put("userMobileToken", SewaTransformer.loginBean.getUserToken());
        if (str != null) {
            map.put("search", str);
        }
        ApiManager apiManager = this.apiManager;
        return (List) apiManager.execute(apiManager.getInstance().getRBSKVisionImpairmentReferredMembers(map));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public Boolean checkPhoneNumberAlreadyExists(String str, Integer num) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (Boolean) apiManager.execute(apiManager.getInstance().checkPhoneNumberExists(SewaTransformer.loginBean.getUserToken(), str, num));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public void updateOtpVerificationDate(Integer num) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        apiManager.execute(apiManager.getInstance().updateOtpVerificationDate(SewaTransformer.loginBean.getUserToken(), num));
    }

    @Override // com.argusoft.sewa.android.app.core.SewaServiceRestClient
    public String getContactNumberForOtpVerification(Integer num) throws RestHttpException {
        ApiManager apiManager = this.apiManager;
        return (String) apiManager.execute(apiManager.getInstance().getContactNumberForOtpVerification(SewaTransformer.loginBean.getUserToken(), num));
    }
}
