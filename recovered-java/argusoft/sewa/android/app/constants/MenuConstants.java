package com.argusoft.sewa.android.app.constants;

import com.argusoft.sewa.android.app.R;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class MenuConstants {
    public static final String ABHA_NUMBER = "ABHA_NUMBER";
    public static final String ADOLESCENT_HEALTH_SCREENING = "ADOLESCENT_HEALTH_SCREENING";
    public static final String ANNOUNCEMENTS = "ANNOUNCEMENTS";
    public static final String ASHA_CBAC_ENTRY = "ASHA_CBAC_ENTRY";
    public static final String ASHA_CHO_INCENTIVE = "ASHA_CHO_INCENTIVE";
    public static final String ASHA_FHS = "ASHA_FHS";
    public static final String ASHA_HIGH_RISK_BENEFICIARIES = "ASHA_HIGH_RISK_BENEFICIARIES";
    public static final String ASHA_MY_PEOPLE = "ASHA_MY_PEOPLE";
    public static final String ASHA_NCD_REGISTER = "ASHA_NCD_REGISTER";
    public static final String ASHA_NOTIFICATION = "ASHA_NOTIFICATION";
    public static final String ASHA_NPCB_SCREENING = "ASHA_NPCB_SCREENING";
    public static final String ASHA_WORK_REGISTER = "ASHA_WORK_REGISTER";
    public static final String AWW_FHS = "AWW_FHS";
    public static final String AWW_MY_PEOPLE = "AWW_MY_PEOPLE";
    public static final String AWW_NOTIFICATION = "AWW_NOTIFICATION";
    public static final String DAILY_NUTRITION = "DAILY_NUTRITION";
    public static final String FHSR_PHONE_NUMBER_VERIFICATION = "FHSR_PHONE_NUMBER_VERIFICATION";
    public static final String FHW_ASSIGN_FAMILY = "FHW_ASSIGN_FAMILY";
    public static final String FHW_CFHC = "FHW_CFHC";
    public static final String FHW_DATA_QUALITY = "FHW_DATA_QUALITY";
    public static final String FHW_HIGH_RISK_WOMEN_AND_CHILD = "FHW_HIGH_RISK_WOMEN_AND_CHILD";
    public static final String FHW_MOBILE_VERIFICATION = "FHW_MOBILE_VERIFICATION";
    public static final String FHW_MY_PEOPLE = "FHW_MY_PEOPLE";
    public static final String FHW_NCD_REGISTER = "FHW_NCD_REGISTER";
    public static final String FHW_NCD_SCREENING = "FHW_NCD_SCREENING";
    public static final String FHW_NOTIFICATION = "FHW_NOTIFICATION";
    public static final String FHW_VERY_HIGH_RISK_WOMEN = "FHW_VERY_HIGH_RISK_WOMEN";
    public static final String FHW_WORK_REGISTER = "FHW_WORK_REGISTER";
    public static final String FHW_WORK_STATUS = "FHW_WORK_STATUS";
    public static final String HEAD_TO_TOE_SCREENING = "HEAD_TO_TOE_SCREENING";
    public static final String INCENTIVE = "INCENTIVE";
    public static final String LEARNING_MANAGEMENT_SYSTEM = "LEARNING_MANAGEMENT_SYSTEM";
    public static final String LIBRARY = "LIBRARY";
    public static final String LMS_PROGRESS_REPORT = "LMS_PROGRESS_REPORT";
    public static final String MARK_PRESENCE_AT_HWC = "MARK_PRESENCE_AT_HWC";
    public static final String NPCB_SCREENING_TITLE = "NPCB_SCREENING_TITLE";
    public static final String OPD_FACILITY = "OPD_FACILITY";
    public static final String TAKE_HOME_RATION = "TAKE_HOME_RATION";
    public static final String WORK_LOG = "WORK_LOG";
    private static Map<String, Integer> menuIcons;

    private MenuConstants() {
        throw new IllegalStateException("Utility Class");
    }

    public static Integer getMenuIcons(String str) {
        if (str == null) {
            return null;
        }
        if (menuIcons == null) {
            HashMap map = new HashMap();
            menuIcons = map;
            map.put(FHW_CFHC, Integer.valueOf(R.drawable.menu_fhs));
            menuIcons.put(FHW_DATA_QUALITY, Integer.valueOf(R.drawable.menu_reverification));
            menuIcons.put(FHW_ASSIGN_FAMILY, Integer.valueOf(R.drawable.menu_assign_family));
            menuIcons.put(FHW_MY_PEOPLE, Integer.valueOf(R.drawable.menu_my_people));
            menuIcons.put(FHW_MOBILE_VERIFICATION, Integer.valueOf(R.drawable.menu_aadhar));
            menuIcons.put(FHW_NOTIFICATION, Integer.valueOf(R.drawable.menu_schedule));
            menuIcons.put(FHW_HIGH_RISK_WOMEN_AND_CHILD, Integer.valueOf(R.drawable.menu_high_risk_mother_child));
            menuIcons.put(FHW_VERY_HIGH_RISK_WOMEN, Integer.valueOf(R.drawable.menu_preg_woman));
            menuIcons.put(FHW_NCD_SCREENING, Integer.valueOf(R.drawable.menu_ncd_screening));
            menuIcons.put(FHW_NCD_REGISTER, Integer.valueOf(R.drawable.menu_ncd_reg));
            menuIcons.put(NPCB_SCREENING_TITLE, Integer.valueOf(R.drawable.menu_npcb));
            menuIcons.put(FHW_WORK_REGISTER, Integer.valueOf(R.drawable.menu_work_report));
            menuIcons.put(FHW_WORK_STATUS, Integer.valueOf(R.drawable.menu_work_status));
            menuIcons.put("ADOLESCENT_HEALTH_SCREENING", Integer.valueOf(R.drawable.ic_adolescent));
            menuIcons.put("ASHA_FHS", Integer.valueOf(R.drawable.menu_fhs));
            menuIcons.put(ASHA_MY_PEOPLE, Integer.valueOf(R.drawable.menu_my_people));
            menuIcons.put(ASHA_NOTIFICATION, Integer.valueOf(R.drawable.menu_schedule));
            menuIcons.put(ASHA_HIGH_RISK_BENEFICIARIES, Integer.valueOf(R.drawable.menu_high_risk_mother_child));
            menuIcons.put(ASHA_CBAC_ENTRY, Integer.valueOf(R.drawable.menu_ncd_screening));
            menuIcons.put(ASHA_NCD_REGISTER, Integer.valueOf(R.drawable.menu_ncd_reg));
            menuIcons.put(ASHA_NPCB_SCREENING, Integer.valueOf(R.drawable.menu_npcb));
            menuIcons.put(ASHA_WORK_REGISTER, Integer.valueOf(R.drawable.menu_work_report));
            menuIcons.put(INCENTIVE, Integer.valueOf(R.drawable.incentive));
            menuIcons.put(ASHA_CHO_INCENTIVE, Integer.valueOf(R.drawable.incentive));
            menuIcons.put(AWW_FHS, Integer.valueOf(R.drawable.menu_fhs));
            menuIcons.put(AWW_MY_PEOPLE, Integer.valueOf(R.drawable.menu_my_people));
            menuIcons.put(AWW_NOTIFICATION, Integer.valueOf(R.drawable.menu_schedule));
            menuIcons.put(DAILY_NUTRITION, Integer.valueOf(R.drawable.menu_ncd_reg));
            menuIcons.put(TAKE_HOME_RATION, Integer.valueOf(R.drawable.menu_assign_family));
            menuIcons.put(MARK_PRESENCE_AT_HWC, Integer.valueOf(R.drawable.menu_absent));
            menuIcons.put(FHSR_PHONE_NUMBER_VERIFICATION, Integer.valueOf(R.drawable.menu_reverification));
            menuIcons.put(OPD_FACILITY, Integer.valueOf(R.drawable.menu_lab_test));
            menuIcons.put(HEAD_TO_TOE_SCREENING, Integer.valueOf(R.drawable.menu_head_to_toe_screening));
            menuIcons.put(LEARNING_MANAGEMENT_SYSTEM, Integer.valueOf(R.drawable.menu_lms));
            menuIcons.put(LMS_PROGRESS_REPORT, Integer.valueOf(R.drawable.menu_lms_report));
            menuIcons.put(LIBRARY, Integer.valueOf(R.drawable.menu_library));
            menuIcons.put(ANNOUNCEMENTS, Integer.valueOf(R.drawable.menu_announcement));
            menuIcons.put(WORK_LOG, Integer.valueOf(R.drawable.menu_work_status));
            menuIcons.put("ABHA_NUMBER", Integer.valueOf(R.drawable.ic_medical_card));
            menuIcons.put(ASHA_CHO_INCENTIVE, Integer.valueOf(R.drawable.incentive));
        }
        if (menuIcons.containsKey(str.trim())) {
            return menuIcons.get(str.trim());
        }
        return null;
    }

    public static String getFormCodeFromMenuConstant(String str) {
        if (str == null) {
            return null;
        }
        str.hashCode();
        switch (str) {
        }
        return null;
    }

    public class Action {
        public static final String ACTION_SYNC_COMPLETED = "argusoft.ACTION_SYNC_COMPLETED";

        public Action() {
        }
    }
}
