package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.model.IncentiveMaster;
import com.argusoft.sewa.android.app.model.IncentiveMonthlyDetailsBean;
import com.argusoft.sewa.android.app.model.PreviousYearIncentive;
import java.util.List;

/* loaded from: classes.dex */
public interface IncentiveService {
    IncentiveMaster getIncentiveMasterById(Integer num);

    List<IncentiveMonthlyDetailsBean> retrieveApprovedIncentives();

    List<IncentiveMonthlyDetailsBean> retrieveAshaApprovedIncentives(int i);

    List<IncentiveMonthlyDetailsBean> retrieveAshaFacApprovedIncentives(int i);

    List<FamilyDataBean> retrieveFamilyListByCode(String str, CharSequence charSequence, Long l, Long l2);

    IncentiveMaster retrieveIncentiveMasterByIncentiveCode(String str);

    IncentiveMonthlyDetailsBean retrieveIncentiveMonthlyBeanByActualId(Integer num);

    List<MemberDataBean> retrieveMemberListByCode(String str, CharSequence charSequence, Long l, Long l2);

    List<IncentiveMonthlyDetailsBean> retrievePendingIncentives();

    List<PreviousYearIncentive> retrievePreviousIncentives(Long l);
}
