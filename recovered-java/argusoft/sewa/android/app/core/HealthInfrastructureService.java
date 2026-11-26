package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleExceptionBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleMasterBean;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface HealthInfrastructureService {
    HealthInfrastructureBean getHealthInfraByActualId(Integer num);

    Map<Long, String> retrieveDistinctHealthInfraType();

    List<HealthInfrastructureBean> retrieveHealthInfraByLocationId(Long l, Long l2, String str);

    List<HealthInfrastructureBean> retrieveHealthInfraBySearch(String str, Long l, String str2);

    List<HealthInfrastructureBean> retrieveHealthInfraByTypeAndLocations(List<String> list, List<Integer> list2);

    List<SmartReferralScheduleExceptionBean> retrieveSmartExceptionByHospitalInfraId(Long l, String str);

    List<SmartReferralScheduleMasterBean> retrieveSmartMasterByHospitalInfraId(Long l, String str);
}
