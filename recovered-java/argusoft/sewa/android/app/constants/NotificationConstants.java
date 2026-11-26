package com.argusoft.sewa.android.app.constants;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class NotificationConstants {
    public static final String ASHA_NOTIFICATION_READ_ONLY = "ASHA_READ_ONLY";
    public static final List<String> ASHA_REPORTED_EVENT_NOTIFICATIONS = Collections.unmodifiableList(getAshaReportedEventNotifications());
    public static final String FHW_ADOLESCENT_HEALTH_SCREENING = "ADOLESCENT_HEALTH_SCREENING";
    public static final String FHW_MEASELS_AND_RUBELLA_DRIVE = "MR_VACCINATION";
    public static final String FHW_NOTIFICATION_AMRUTPAN = "AMRUTPAN";
    public static final String FHW_NOTIFICATION_AMRUTPAN_MISSED = "AMRUTPAN_MISSED";
    public static final String FHW_NOTIFICATION_AMRUTPAN_UNDERWEIGHT_CHILD = "AMRUTPAN_UC";
    public static final String FHW_NOTIFICATION_ANC = "FHW_ANC";
    public static final String FHW_NOTIFICATION_APPETITE = "APPETITE";
    public static final String FHW_NOTIFICATION_CHILD_SERVICES = "FHW_CS";
    public static final String FHW_NOTIFICATION_DISCHARGE = "DISCHARGE";
    public static final String FHW_NOTIFICATION_DPT_BOOSTER_2 = "DPT_BOOSTER_2_ALERT";
    public static final String FHW_NOTIFICATION_FAMILY_MIGRATION_IN = "FMI";
    public static final String FHW_NOTIFICATION_FAMILY_MIGRATION_OUT = "FMO";
    public static final String FHW_NOTIFICATION_GERIATRICS_MEDICATION = "GMA";
    public static final String FHW_NOTIFICATION_IRON_SUCROSE = "IRON_SUCROSE_ALERT";
    public static final String FHW_NOTIFICATION_LMP_FOLLOW_UP = "LMPFU";
    public static final String FHW_NOTIFICATION_MIGRATION_IN = "MI";
    public static final String FHW_NOTIFICATION_MIGRATION_OUT = "MO";
    public static final String FHW_NOTIFICATION_NEWLY_WED_COUPLES = "NEWLY_WED_COUPLES";
    public static final String FHW_NOTIFICATION_NS = "FHW_NS";
    public static final String FHW_NOTIFICATION_PNC = "FHW_PNC";
    public static final String FHW_NOTIFICATION_READ_ONLY = "READ_ONLY";
    public static final String FHW_NOTIFICATION_SAM_SCREENING = "SAM_SCREENING";
    public static final String FHW_NOTIFICATION_TRAVELLERS_SCREENING = "TRAVELLERS_SCREENING";
    public static final String FHW_NOTIFICATION_TT2 = "TT2_ALERT";
    public static final String FHW_NOTIFICATION_WORK_PLAN_FOR_DELIVERY = "FHW_WPD";
    public static final String FHW_WORK_PLAN_ASHA_REPORTED_EVENT = "REPORTED_EVENT_BY_ASHA";
    public static final String FHW_WORK_PLAN_MAMTA_DAY = "MAMTA_DAY";
    public static final String FHW_WORK_PLAN_OTHER_SERVICES = "OTHER_SERVICES";
    public static final String NOTIFICATION_FHW_DEATH_CONF = "FHW_DEATH_CONF";
    public static final String NOTIFICATION_FHW_DELIVERY_CONF = "FHW_DELIVERY_CONF";
    public static final String NOTIFICATION_FHW_FAMILY_MIGRATION = "FHW_FAMILY_MIGRATION";
    public static final String NOTIFICATION_FHW_FAMILY_SPLIT = "FHW_FAMILY_SPLIT";
    public static final String NOTIFICATION_FHW_MEMBER_MIGRATION = "FHW_MEMBER_MIGRATION";
    public static final String NOTIFICATION_FHW_PREGNANCY_CONF = "FHW_PREG_CONF";
    public static final String NOTIFICATION_STATE_PENDING = "PENDING";
    public static final String NOTIFICATION_STATE_RESCHEDULE = "RESCHEDULE";
    public static final String SELF_HELP_GROUP = "SHG";

    private NotificationConstants() {
        throw new IllegalStateException("Utility Class");
    }

    private static List<String> getAshaReportedEventNotifications() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("FHW_PREG_CONF");
        arrayList.add(NOTIFICATION_FHW_DELIVERY_CONF);
        arrayList.add("FHW_DEATH_CONF");
        arrayList.add(NOTIFICATION_FHW_MEMBER_MIGRATION);
        arrayList.add(NOTIFICATION_FHW_FAMILY_MIGRATION);
        arrayList.add(NOTIFICATION_FHW_FAMILY_SPLIT);
        return arrayList;
    }
}
