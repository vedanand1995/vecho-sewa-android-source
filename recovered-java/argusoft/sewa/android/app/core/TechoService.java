package com.argusoft.sewa.android.app.core;

import android.content.Context;
import java.util.Map;

/* loaded from: classes.dex */
public interface TechoService {
    Map<String, Boolean> checkIfDeviceIsBlockedOrDeleteDatabase();

    boolean checkIfFeatureIsReleased();

    Boolean checkIfOfflineAnyFormFilledForFormType(String str);

    Boolean checkIfOfflineAnyFormFilledForLocation(Long l);

    Boolean checkIfOfflineAnyFormFilledForMember(Long l);

    Boolean checkIfOfflineAnyFormFilledForMemberWithFormType(Long l, String str);

    void deleteDatabaseFileFromLocal(Context context);

    void deleteQuestionAndAnswersByFormCode(String str);

    void fetchLocationMasterData();

    String getBaselineModuleCourseIds();

    void getDataForASHA();

    void getDataForASHAFacilitator();

    void getDataForAWW();

    void getDataForFHSR();

    void getDataForFHW();

    void getDataForMO();

    void getDataForMemberRchId();

    void getDataForOA();

    void getDataForRbsk();

    void getLgdCodeWiseCoordinates();

    Boolean syncMergedFamiliesInformationWithServer();
}
