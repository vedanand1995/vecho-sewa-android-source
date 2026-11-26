package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.OptionDataBean;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface RchHighRiskService {
    void identifyHighRisk(String str, Object obj, List<OptionDataBean> list);

    String identifyHighRiskForAdolescent(Map<String, Object> map);

    String identifyHighRiskForChildRchPnc(Object obj, Object obj2);

    String identifyHighRiskForChildRchWpd(Object obj);

    String identifyHighRiskForMotherRchPnc(Object obj, Object obj2, Object obj3);

    String identifyHighRiskForRchAnc(Map<String, Object> map);

    Boolean identifyHighRiskOnInput(String str, Object obj);
}
