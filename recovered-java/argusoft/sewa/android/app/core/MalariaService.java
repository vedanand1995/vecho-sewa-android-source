package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.MemberDataBean;
import java.util.List;

/* loaded from: classes.dex */
public interface MalariaService {
    List<MemberDataBean> retrieveMembersForMalariaByAshaArea(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);

    List<MemberDataBean> retrieveMembersForMalariaReExamine(List<Integer> list, Integer num, CharSequence charSequence, long j, long j2);
}
