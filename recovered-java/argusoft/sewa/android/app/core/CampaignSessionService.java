package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.model.CampaignMasterBean;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import java.util.List;

/* loaded from: classes.dex */
public interface CampaignSessionService {
    void endSessionBySessionId(String str);

    CampaignMasterBean getCampaignMasterByConfigIdAndWeek(Integer num, Integer num2);

    List<CampaignMasterBean> getCampaignMasterByLocationId(List<Integer> list, CampaignSessionBean campaignSessionBean);

    CampaignSessionBean getCampaignSessionByConfigId(Integer num);

    CampaignSessionBean getCampaignSessionByLocationId(List<Integer> list, Boolean bool);

    CampaignSessionBean getCampaignSessionBySessionId(String str);

    CampaignSessionBean getCompletedSessionForTodayByLocationId(List<Integer> list);

    CampaignSessionBean startNewSession(CampaignMasterBean campaignMasterBean);

    void submitCampaignInventoryForm(RISessionInventoryBean rISessionInventoryBean);

    void submitCampaignInventoryReturnForm(RISessionInventoryBean rISessionInventoryBean);
}
