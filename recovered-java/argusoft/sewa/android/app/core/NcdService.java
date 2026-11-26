package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberCbacDetailBean;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public interface NcdService {
    void markFamilyAsCbacDoneForAnyMember(Long l);

    void markMemberAsCbacDone(Long l);

    void markMemberAsNCDScreeningDone(Long l, String str, Date date);

    List<FamilyDataBean> retrieveFamiliesForCbacEntry(String str, Integer num, long j, long j2);

    List<FamilyDataBean> retrieveFamiliesForNcdScreening(String str, List<Integer> list, long j, long j2);

    MemberCbacDetailBean retrieveMemberCbacDetailBean(Long l);

    List<MemberDataBean> retrieveMembersForNcdRegisterAsha(List<Integer> list, String str, long j, long j2);

    List<MemberBean> retrieveMembersForNcdRegisterFhw(Integer num, List<Integer> list, String str);

    List<MemberDataBean> retrieveMembersListForCbacEntry(String str);

    List<MemberDataBean> retrieveMembersListForNcdScreening(String str);
}
