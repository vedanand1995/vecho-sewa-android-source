package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.MemberDataBean;
import java.util.List;

/* loaded from: classes.dex */
public interface NPCBService {
    List<MemberDataBean> ashaRetrievingMembersForNPCBScreening(List<Integer> list, String str, long j, long j2);

    List<MemberDataBean> choRetrievingMembersForNPCBScreening(List<Integer> list, String str, long j, long j2);

    List<MemberDataBean> fhwRetrieveMembersForNPCBScreening(List<Integer> list, String str, long j, long j2);

    List<MemberDataBean> retrieveMembersForNPCBSentByOA(List<Integer> list, String str, long j, long j2);

    List<MemberDataBean> retrieveMembersSentByFieldHealthWorkers(List<Integer> list, String str, long j, long j2);
}
