package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface RoutineImmunisationService {
    void addImmunisationToInventory(String str, String str2);

    String checkImmunisationStockAvailable(String str, String str2);

    RISessionInventoryBean getRiInventoryBySessionId(String str);

    void removeImmunisationFromInventory(String str, String str2);

    List<MemberDataBean> retrieveChildrenForRoutineImmunisation(CharSequence charSequence, long j, long j2, LinkedHashMap<String, String> linkedHashMap, String str, Date date, List<Integer> list, Boolean bool);

    Map<String, Integer> retrieveCountForRIServices(Integer num);

    List<MemberDataBean> retrievePregnantWomenForRoutineImmunisation(CharSequence charSequence, long j, long j2, LinkedHashMap<String, String> linkedHashMap, String str, Date date, List<Integer> list);

    List<MemberDataBean> retrieveWpdWomenByArea(CharSequence charSequence, long j, long j2, LinkedHashMap<String, String> linkedHashMap, String str, Date date, List<Integer> list);
}
