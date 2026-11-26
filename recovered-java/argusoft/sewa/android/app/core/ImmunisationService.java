package com.argusoft.sewa.android.app.core;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public interface ImmunisationService {
    Set<String> getDueImmunisationsForChild(Date date, String str, Date date2, Map<String, Date> map);

    List<String> getMissedImmunisationListFromDueList(List<String> list, Date date, Date date2, Map<String, Date> map, boolean z);

    boolean isImmunisationMissed(Date date, String str, Map<String, Date> map);

    Map<Boolean, String> isImmunisationMissedOrNotValid(Date date, String str, Date date2, Map<String, Date> map, boolean z);

    String vaccinationValidationForChild(Date date, Date date2, String str, Map<String, Date> map);
}
