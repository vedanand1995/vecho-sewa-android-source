package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import java.sql.SQLException;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface NotificationService {
    Boolean checkIfThereArePendingNotificationsForMember(Long l, String str);

    Map<String, Integer> retrieveCountForAshaDptBoosterNotificationBasedOnCampaign(List<Integer> list, Date date);

    Map<String, Integer> retrieveCountForAshaReportedEventNotificationType(List<Integer> list, List<Integer> list2);

    Map<String, Integer> retrieveCountForNotificationType(List<Integer> list, List<Integer> list2);

    Map<String, Integer> retrieveCountForNotificationTypeBasedOnCampaign(List<Integer> list, List<Integer> list2, Date date);

    Map<String, Integer> retrieveCountForOtherServicesNotificationType(List<Integer> list, List<Integer> list2);

    List<MemberDataBean> retrieveMembersForDPTAlertForAshaAsPerCampaign(List<Integer> list, Date date, CharSequence charSequence, LinkedHashMap<String, String> linkedHashMap, String str, Date date2, long j, long j2) throws SQLException;

    List<NotificationMobDataBean> retrieveNotificationsForUser(List<Integer> list, List<Integer> list2, String str, CharSequence charSequence, long j, long j2) throws SQLException;

    List<NotificationMobDataBean> retrieveNotificationsForUserAsPerCampaignDate(List<Integer> list, List<Integer> list2, String str, CharSequence charSequence, long j, long j2, Date date) throws SQLException;
}
