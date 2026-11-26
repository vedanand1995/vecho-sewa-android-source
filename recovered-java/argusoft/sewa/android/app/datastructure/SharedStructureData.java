package com.argusoft.sewa.android.app.datastructure;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.telephony.TelephonyManager;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.core.DailyNutritionLogService;
import com.argusoft.sewa.android.app.core.HealthInfraTypeLocationService;
import com.argusoft.sewa.android.app.core.HealthInfrastructureService;
import com.argusoft.sewa.android.app.core.ImmunisationService;
import com.argusoft.sewa.android.app.core.LocationMasterService;
import com.argusoft.sewa.android.app.core.NPCBService;
import com.argusoft.sewa.android.app.core.NcdScoreService;
import com.argusoft.sewa.android.app.core.NcdService;
import com.argusoft.sewa.android.app.core.RchHighRiskService;
import com.argusoft.sewa.android.app.core.RoutineImmunisationService;
import com.argusoft.sewa.android.app.core.SchoolService;
import com.argusoft.sewa.android.app.core.SewaFhsService;
import com.argusoft.sewa.android.app.core.SewaService;
import com.argusoft.sewa.android.app.core.SewaServiceRestClient;
import com.argusoft.sewa.android.app.core.TechoAshaService;
import com.argusoft.sewa.android.app.core.TechoService;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.SchoolBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.service.GPSTracker;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class SharedStructureData {
    public static Timer choAttendanceTimer;
    public static Context context;
    public static FamilyDataBean currentFamilyDataBean;
    public static MemberDataBean currentMemberDataBean;
    public static String currentMemberUHId;
    public static String currentNotificationOtherDetails;
    public static int currentQuestion;
    public static FamilyDataBean currentRchFamilyDataBean;
    public static MemberBean currentRchMemberBean;
    public static DailyNutritionLogService dailyNutritionLogService;
    public static long formFillUpTime;
    public static GPSTracker gps;
    public static HealthInfraTypeLocationService healthInfraTypeLocationService;
    public static HealthInfrastructureService healthInfrastructureService;
    public static ImmunisationService immunisationService;
    public static Map<String, LabelBean> listLabelBeans;
    public static LocationMasterService locationMasterService;
    public static int loopBakCounter;
    private static Map<String, String> mapAllMobidites;
    public static Map<String, List<FieldValueMobDataBean>> mapDataMapLabelBean;
    public static Map<Integer, PageFormBean> mapIndexPage;
    public static Map<Integer, QueFormBean> mapIndexQuestion;
    private static Map<String, List<String>> mapOfListOfQuestionLIC;
    public static NcdScoreService ncdScoreService;
    public static NcdService ncdService;
    public static int newBindingForMorbidity;
    public static NotificationMobDataBean notificationMobDataBean;
    public static NPCBService npcbService;
    public static Intent ordtIntent;
    public static Timer ordtTimer;
    public static Timer rbskAttendanceTimer;
    public static RchHighRiskService rchHighRiskService;
    public static RoutineImmunisationService routineImmunisationService;
    public static SchoolService schoolService;
    public static HealthInfrastructureBean selectedHealthInfra;
    public static SchoolBean selectedSchool;
    public static SchoolBean selectedSchoolForIFA;
    public static SewaFhsService sewaFhsService;
    public static SewaService sewaService;
    public static SewaServiceRestClient sewaServiceRestClient;
    public static TechoAshaService techoAshaService;
    public static TechoService techoService;
    public static TelephonyManager telephonyManager;
    public static Context welcomeContext;
    public static MyAlertDialog workLogAlert;
    public static final Map<String, String> relatedPropertyHashTable = new HashMap();
    public static final List<String> ashaSheets = new ArrayList();
    public static final List<String> awwSheets = new ArrayList();
    public static final List<String> fhwSheets = new ArrayList();
    public static final List<String> gpsEnabledForms = new ArrayList();
    public static Map<String, Map<String, List<Double>>> mapOfLatLongWithLGDCode = new HashMap();
    public static Map<String, Date> vaccineGivenDateMap = new HashMap();
    public static Set<String> highRiskConditions = new LinkedHashSet();
    public static Set<String> addedHighRisksForDangerousSigns = new LinkedHashSet();
    public static Set<String> highRiskConditionsChild = new LinkedHashSet();
    public static boolean ismapUpdate = false;
    public static boolean isLogin = false;
    public static Integer numberOfTimesLoggedIn = 0;
    public static Map<Integer, Boolean> videoShownMap = new HashMap();
    public static List<OptionDataBean> middleNameList = new ArrayList();
    public static List<OptionDataBean> nonHofMemberNameList = new ArrayList();
    public static List<OptionDataBean> membersUnderTwenty = new ArrayList();
    public static List<OptionDataBean> givenVaccinesToChild = new ArrayList();
    public static List<OptionDataBean> childrenFrom3To6Years = new ArrayList();
    public static Integer totalFamilyMembersCount = 0;
    public static Integer totalVerifiedFamilyMembersCount = 0;
    public static FamilyDataBean familyDataBeanToBeMerged = null;
    public static String NETWORK_MESSAGE = SewaConstants.NETWORK_AVAILABLE;
    public static HashMap<String, String> MORBIDITY_CODE_MAP = new HashMap<>();
    public static Typeface typeface = Typeface.DEFAULT;
    public static Map<String, String> audioFilesToUpload = new HashMap();
    public static Map<String, String> imageFilesToUpload = new HashMap();
    public static List<QueFormBean> finalFilesToUpload = new ArrayList();
    public static Boolean isAadharNumberScanned = Boolean.FALSE;
    public static Boolean isDobScannedFromAadhar = Boolean.FALSE;
    public static String formType = null;
    public static Boolean currentlyDownloadingFamilyData = false;
    public static Boolean isMobileVerificationBlocked = false;
    public static Boolean isAnyMemberMobileVerificationDone = false;
    public static boolean CHO_ATTENDANCE_IS_MARKED_PRESENCE = false;
    public static boolean RBSK_ATTENDANCE_IS_MARKED_PRESENCE = false;
    public static boolean isOnlineSearch = false;
    public static FamilyDataBean onLineSelectedFamilyDataBean = null;
    public static MemberBean onLineSelectedMemberBean = null;
    public static Boolean isFromLmp = false;
    public static String currentGravida = null;
    public static Map<Integer, Map<String, Date>> vaccineGivenDateMapList = new HashMap();
    public static List<MemberDataBean> membersOfFamily = new ArrayList();
    public static boolean isVeryHighRisk = false;
    public static List<OptionDataBean> riMotherList = new ArrayList();
    public static Map<Integer, String> riMotherMap = new HashMap();
    public static List<OptionDataBean> dueImmunisations = new ArrayList();
    public static Map<MemberDataBean, Integer> filariaAnswerMapWithMemberAsKey = new HashMap();
    public static Integer ACTIVE_CTBA_QUESTION_ID = null;
    public static Set<MemberDataBean> lcdcSuspectedDataBeans = new HashSet();

    private SharedStructureData() {
        throw new IllegalStateException("Utility Class");
    }

    static {
        groupAshaSheets();
        groupAwwSheets();
        groupFHWSheets();
        gpsFeatureEnabledForms();
        includeMorbidityCodeNNamesMap();
    }

    public static boolean isEmptyMapAllMorbidities(String str, String str2) {
        Map<String, String> map = mapAllMobidites;
        if (map == null || map.isEmpty() || mapAllMorbiditiesOnlyRelatedToMother(str, str2)) {
            return true;
        }
        if (mapAllMobidites.keySet().size() == 1) {
            if (mapAllMobidites.containsKey(str + GlobalTypes.KEY_VALUE_SEPARATOR + str2)) {
                return true;
            }
            if (mapAllMobidites.containsKey("Delivery-" + str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean mapAllMorbiditiesOnlyRelatedToMother(String str, String str2) {
        Iterator<Map.Entry<String, String>> it = mapAllMobidites.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            String[] strArrSplit = it.next().getKey().split(GlobalTypes.KEY_VALUE_SEPARATOR);
            if (strArrSplit.length > 1 && MorbiditiesConstant.getOnlyMotherRelatedPNCMorbidities().contains(strArrSplit[0])) {
                i++;
            }
        }
        if (mapAllMobidites.containsKey(str + GlobalTypes.KEY_VALUE_SEPARATOR + str2)) {
            i++;
        }
        if (mapAllMobidites.containsKey("Delivery-" + str2)) {
            i++;
        }
        return i == mapAllMobidites.keySet().size();
    }

    public static void addItemInLICList(String str, String str2, String str3) {
        if (mapAllMobidites == null) {
            mapAllMobidites = new HashMap();
            mapOfListOfQuestionLIC = new HashMap();
        }
        List<String> arrayList = mapOfListOfQuestionLIC.get(str3);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            mapOfListOfQuestionLIC.put(str3, arrayList);
        }
        if (!arrayList.contains(str)) {
            arrayList.add(str);
        }
        mapAllMobidites.put(str + GlobalTypes.KEY_VALUE_SEPARATOR + str3, str2);
        ismapUpdate = true;
    }

    public static Map<String, Date> getVaccineGivenDateMap(Integer num) {
        if (!vaccineGivenDateMapList.containsKey(num)) {
            vaccineGivenDateMapList.put(num, new HashMap());
        }
        return vaccineGivenDateMapList.get(num);
    }

    public static void removeItemFromLICList(String str, String str2) {
        Map<String, String> map = mapAllMobidites;
        if (map != null) {
            map.remove(str + GlobalTypes.KEY_VALUE_SEPARATOR + str2);
        }
        ismapUpdate = true;
    }

    public static Map<String, List<String>> getListOfLIC() {
        if (mapAllMobidites == null || mapOfListOfQuestionLIC == null) {
            return null;
        }
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, List<String>> entry : mapOfListOfQuestionLIC.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            ArrayList arrayList = new ArrayList();
            for (String str : value) {
                String str2 = mapAllMobidites.get(str + GlobalTypes.KEY_VALUE_SEPARATOR + key);
                if (str2 != null) {
                    arrayList.add(UtilBean.getMyLabel(str) + SimpleComparison.EQUAL_TO_OPERATION + UtilBean.getMyLabel(str2));
                }
            }
            treeMap.put(key, arrayList);
        }
        return treeMap;
    }

    public static void initIndexQuestionMap(Context context2, SewaService sewaService2, SewaFhsService sewaFhsService2, TechoAshaService techoAshaService2, RchHighRiskService rchHighRiskService2, ImmunisationService immunisationService2, NcdService ncdService2, NcdScoreService ncdScoreService2, HealthInfrastructureService healthInfrastructureService2, LocationMasterService locationMasterService2, SchoolService schoolService2, SewaServiceRestClient sewaServiceRestClient2, DailyNutritionLogService dailyNutritionLogService2, NPCBService nPCBService, HealthInfraTypeLocationService healthInfraTypeLocationService2, RoutineImmunisationService routineImmunisationService2) {
        context = context2;
        sewaService = sewaService2;
        sewaFhsService = sewaFhsService2;
        rchHighRiskService = rchHighRiskService2;
        immunisationService = immunisationService2;
        techoAshaService = techoAshaService2;
        ncdService = ncdService2;
        ncdScoreService = ncdScoreService2;
        healthInfrastructureService = healthInfrastructureService2;
        locationMasterService = locationMasterService2;
        npcbService = nPCBService;
        schoolService = schoolService2;
        sewaServiceRestClient = sewaServiceRestClient2;
        dailyNutritionLogService = dailyNutritionLogService2;
        loopBakCounter = 0;
        newBindingForMorbidity = 0;
        healthInfraTypeLocationService = healthInfraTypeLocationService2;
        routineImmunisationService = routineImmunisationService2;
    }

    public static void resetSharedStructureData() {
        currentQuestion = -1;
        loopBakCounter = 0;
        newBindingForMorbidity = 0;
        mapIndexQuestion = null;
        mapIndexPage = null;
        mapDataMapLabelBean = null;
        mapAllMobidites = null;
        mapOfListOfQuestionLIC = null;
        ismapUpdate = false;
        imageFilesToUpload.clear();
    }

    private static void groupFHWSheets() {
        List<String> list = fhwSheets;
        list.clear();
        list.add("FHS");
        list.add("CFHC");
        list.add(FormConstants.FHS_MEMBER_UPDATE);
        list.add("LMPFU");
        list.add("FHW_ANC");
        list.add("FHW_PNC");
        list.add("FHW_WPD");
        list.add(FormConstants.TECHO_FHW_CI);
        list.add("FHW_CS");
        list.add("AMRUTPAN");
        list.add("DPT_BOOSTER_2_ALERT");
        list.add(FormConstants.TECHO_FHW_VAE);
        list.add(FormConstants.TECHO_FHW_RIM);
        list.add("DISCHARGE");
        list.add("APPETITE");
        list.add(FormConstants.NCD_FHW_HYPERTENSION);
        list.add(FormConstants.NCD_FHW_DIABETES);
        list.add(FormConstants.NCD_FHW_ORAL);
        list.add(FormConstants.NCD_FHW_BREAST);
        list.add(FormConstants.NCD_FHW_CERVICAL);
        list.add("TT2_ALERT");
        list.add("IRON_SUCROSE_ALERT");
        list.add("FHW_PREG_CONF");
        list.add("FHW_DEATH_CONF");
        list.add(FormConstants.FHW_SAM_SCREENING_REF);
        list.add(FormConstants.CMAM_FOLLOWUP);
        list.add("GMA");
        list.add(FormConstants.IDSP_MEMBER);
        list.add(FormConstants.IDSP_MEMBER_2);
        list.add(FormConstants.IDSP_NEW_FAMILY);
        list.add("TRAVELLERS_SCREENING");
        list.add("ADOLESCENT_HEALTH_SCREENING");
        list.add("NWC");
        list.add("FHW_NS");
        list.add(FormConstants.TECHO_GAURAVI_DIWAS);
        list.add(FormConstants.MENTAL_ILLNESS);
        list.add(FormConstants.AMRUTPAN_SUPERVISION);
        list.add(FormConstants.ELDERLY_CARE);
        list.add(FormConstants.LAB_TEST_MALARIA);
        list.add(FormConstants.FILARIA_CAMPAIGN);
        list.add("MR_VACCINATION");
        list.add(FormConstants.LCDC_CAMPAIGN);
        list.add(FormConstants.VBDS_WATER_QUALITY_MONITORING);
        list.add(FormConstants.VBDS_ANTILARVAL_ACTIVITIES);
        list.add(FormConstants.VBDS_ANTI_VECTOR_INTERVENTIONS);
        list.add(FormConstants.VBDS_MALARIA_TESTING);
        list.add(FormConstants.VBDS_TPT_EVALUATION);
        list.add(FormConstants.VBDS_CHLORINATION_STATUS);
        list.add(FormConstants.NPCB_SPECTS_APPROVAL);
    }

    private static void groupAshaSheets() {
        List<String> list = ashaSheets;
        list.clear();
        list.add("FHS");
        list.add(FormConstants.ASHA_LMPFU);
        list.add(FormConstants.ASHA_PNC);
        list.add(FormConstants.ASHA_ANC);
        list.add(FormConstants.ASHA_WPD);
        list.add(FormConstants.ASHA_CS);
        list.add(FormConstants.NCD_ASHA_CBAC);
        list.add("ASHA_NPCB");
        list.add(FormConstants.NPCB_SPECTS_APPROVAL);
        list.add("OA_NPCB");
        list.add(FormConstants.OA_NPCB_FU);
        list.add("CHO_NPCB");
        list.add(FormConstants.CHO_NPCB_FU);
        list.add(FormConstants.ANC_MORBIDITY);
        list.add(FormConstants.PNC_MORBIDITY);
        list.add(FormConstants.CHILD_CARE_MORBIDITY);
        list.add(FormConstants.ASHA_SAM_SCREENING);
        list.add(FormConstants.CMAM_FOLLOWUP);
        list.add(FormConstants.IDSP_MEMBER);
        list.add(FormConstants.IDSP_MEMBER_2);
        list.add(FormConstants.ANC_REFERRAL_VISIT);
        list.add(FormConstants.LCDC_CAMPAIGN);
        list.add(FormConstants.FILARIA_CAMPAIGN);
        list.add(FormConstants.LCDC_CAMPAIGN_02);
        list.add(FormConstants.ILA_BASELINE);
    }

    private static void groupAwwSheets() {
        List<String> list = awwSheets;
        list.clear();
        list.add(FormConstants.TECHO_AWW_CS);
        list.add(FormConstants.TECHO_AWW_THR);
    }

    private static void gpsFeatureEnabledForms() {
        List<String> list = gpsEnabledForms;
        list.clear();
        list.addAll(ashaSheets);
        list.addAll(fhwSheets);
        list.addAll(awwSheets);
    }

    private static void includeMorbidityCodeNNamesMap() {
        MORBIDITY_CODE_MAP.clear();
        MORBIDITY_CODE_MAP.put("APH", "APH");
        MORBIDITY_CODE_MAP.put("SAP", "Severe abdominal pain");
        MORBIDITY_CODE_MAP.put("HEP", "Hepatitis");
        MORBIDITY_CODE_MAP.put("SCC", "Sickle cell crisis");
        MORBIDITY_CODE_MAP.put("PRM", "Premature rupture of membrane");
        MORBIDITY_CODE_MAP.put("SEAM", "Severe anemia");
        MORBIDITY_CODE_MAP.put("MAL", "Malpresentation");
        MORBIDITY_CODE_MAP.put("DFM", "Decreased foetal movement");
        MORBIDITY_CODE_MAP.put("SPSBI", "Severe pneumonia or serious bacterial infection");
        MORBIDITY_CODE_MAP.put("CCC", "Chronic cough or cold");
        MORBIDITY_CODE_MAP.put("DWSD", "Diarrhoea with severe dehydration");
        MORBIDITY_CODE_MAP.put("SPD", "Severe persistent diarrhoea");
        MORBIDITY_CODE_MAP.put("VSFI", "Very severe febrile illness");
        MORBIDITY_CODE_MAP.put("SMAL", "Severe malnutrition");
        MORBIDITY_CODE_MAP.put("SAFC", "Severe anemia for child");
        MORBIDITY_CODE_MAP.put("SEP", "Sepsis");
        MORBIDITY_CODE_MAP.put("LBWSH", "Very low birth weight");
        MORBIDITY_CODE_MAP.put("DIAH", "Diarrhoea");
        MORBIDITY_CODE_MAP.put("JAUND", MorbiditiesConstant.MorbiditySymptoms.JAUNDICE);
        MORBIDITY_CODE_MAP.put("BFAP", "Bleeding from any part of the body(nose, mouth, anus, umbilicus)");
        MORBIDITY_CODE_MAP.put("PPH", "PPH");
        MORBIDITY_CODE_MAP.put("PPI", "Post partum infection");
        MORBIDITY_CODE_MAP.put("MASTI", "Mastitis");
        MORBIDITY_CODE_MAP.put("PPMD", "Post partum mood disorder");
        MORBIDITY_CODE_MAP.put("PIHH", "PIH");
        MORBIDITY_CODE_MAP.put("BOH", "Bad obstetric history");
        MORBIDITY_CODE_MAP.put("UP", "Unintented pregnancy");
        MORBIDITY_CODE_MAP.put("MPIH", "Mild pregnancy induced hypertension");
        MORBIDITY_CODE_MAP.put("MIP", "Malaria in pregnancy");
        MORBIDITY_CODE_MAP.put("FEVER", MorbiditiesConstant.MorbiditySymptoms.FEVER);
        MORBIDITY_CODE_MAP.put("PT", "Possible TB");
        MORBIDITY_CODE_MAP.put("UTI", "Urinary tract infection");
        MORBIDITY_CODE_MAP.put("VAGIN", "Vaginitis");
        MORBIDITY_CODE_MAP.put("NB", "Night blindness");
        MORBIDITY_CODE_MAP.put("PSA", "Probable severe anemia");
        MORBIDITY_CODE_MAP.put("SPIH", "Severe Pregnancy induced hypertension");
        MORBIDITY_CODE_MAP.put("FVRIP", MorbiditiesConstant.MorbiditySymptoms.FEVER);
        MORBIDITY_CODE_MAP.put("BWLPC", "Low Birth Weight");
        MORBIDITY_CODE_MAP.put("CONJUC", "Conjunctivitis");
        MORBIDITY_CODE_MAP.put("PNEUFC", "Pneumonia");
        MORBIDITY_CODE_MAP.put("DSD", "Diarrhoea with some dehydration");
        MORBIDITY_CODE_MAP.put("DYSEN", "Dysentry");
        MORBIDITY_CODE_MAP.put("MALAR", RchConstants.HIGH_RISK_MALARIA);
        MORBIDITY_CODE_MAP.put("VLW", "Very low weight");
        MORBIDITY_CODE_MAP.put("ANEMA", "Anemia");
        MORBIDITY_CODE_MAP.put("HYTH", "Hypothermia");
        MORBIDITY_CODE_MAP.put("PNEUM", "Pneumonia");
        MORBIDITY_CODE_MAP.put("LI", "Local infection");
        MORBIDITY_CODE_MAP.put("HRLB", "High risk Low Birth Weight or Pre-term");
        MORBIDITY_CODE_MAP.put("BASP", "Birth asphyxia");
        MORBIDITY_CODE_MAP.put("EOP", "Emesis of pregnancy");
        MORBIDITY_CODE_MAP.put("URTI", "Upper respiratory tract infection");
        MORBIDITY_CODE_MAP.put("MDAN", "Moderate anemia");
        MORBIDITY_CODE_MAP.put("BP", "Breast problems");
        MORBIDITY_CODE_MAP.put("COCOU", "Cold or Cough");
        MORBIDITY_CODE_MAP.put("DWND", "Diarrhoea with no dehydration");
        MORBIDITY_CODE_MAP.put("NVW", "Not very low weight");
        MORBIDITY_CODE_MAP.put("NANEM", "No anemia");
        MORBIDITY_CODE_MAP.put("FPRO", "Feeding problem");
    }

    public static class MorbidityCode {
        public static final String ANEMIA = "ANEMA";
        public static final String APH = "APH";
        public static final String BAD_OBSTETRIC_HISTORY = "BOH";
        public static final String BIRTH_ASPHYXIA = "BASP";
        public static final String BLEEDING_FROM_ANY_PART_OF_THE_BODY = "BFAP";
        public static final String BREAST_PROBLEMS = "BP";
        public static final String CHRONIC_COUGH_OR_COLD = "CCC";
        public static final String COLD_COUGH = "COCOU";
        public static final String CONJUNCTIVITIS = "CONJUC";
        public static final String DECREASED_FOETAL_MOVEMENT = "DFM";
        public static final String DIARRHOEA = "DIAH";
        public static final String DIARRHOEA_WITH_NO_DEHYDRATION = "DWND";
        public static final String DIARRHOEA_WITH_SEVERE_DEHYDRATION = "DWSD";
        public static final String DIARRHOEA_WITH_SOME_DEHYDRATION = "DSD";
        public static final String DYSENTERY = "DYSEN";
        public static final String EMESIS_OF_PREGNANCY = "EOP";
        public static final String FEEDING_PROBLEMS = "FPRO";
        public static final String FEVER = "FEVER";
        public static final String FEVER_PNC = "FVRIP";
        public static final String HEPATITIS = "HEP";
        public static final String HIGH_RISK_LOW_BIRTH_WEIGHT_PRE_TERM = "HRLB";
        public static final String HYPOTHERMIA = "HYTH";
        public static final String JAUNDICE = "JAUND";
        public static final String LOCAL_INFECTION = "LI";
        public static final String LOW_BIRTH_WEIGHT = "BWLPC";
        public static final String MALARIA = "MALAR";
        public static final String MALARIA_IN_PREGNANCY = "MIP";
        public static final String MALPRESENTATION = "MAL";
        public static final String MASTITIS = "MASTI";
        public static final String MILD_PREGNANCY_INDUCED_HYPERTENSION = "MPIH";
        public static final String MODERATE_ANEMIA = "MDAN";
        public static final String NIGHT_BLINDNESS = "NB";
        public static final String NOT_VERY_LOW_WEIGHT = "NVW";
        public static final String NO_ANEMIA = "NANEM";
        public static final String PIH = "PIHH";
        public static final String PNEUMONIA = "PNEUM";
        public static final String PNEUMONIA_CHILD_CARE = "PNEUFC";
        public static final String POSSIBLE_TB = "PT";
        public static final String POST_PARTUM_INFECTION = "PPI";
        public static final String POST_PARTUM_MOOD_DISORDER = "PPMD";
        public static final String PPH = "PPH";
        public static final String PREMATURE_RUPTURE_OF_MEMBRANE = "PRM";
        public static final String PROBABLE_SEVERE_ANEMIA = "PSA";
        public static final String SEPSIS = "SEP";
        public static final String SEVERE_ABDOMINAL_PAIN = "SAP";
        public static final String SEVERE_ANEMIA = "SEAM";
        public static final String SEVERE_ANEMIA_FOR_CHILD = "SAFC";
        public static final String SEVERE_MALNUTRITION = "SMAL";
        public static final String SEVERE_PERSISTENT_DIARRHOEA = "SPD";
        public static final String SEVERE_PNEUMONIA_OR_SERIOUS_BACTERIAL_INFECTION = "SPSBI";
        public static final String SEVERE_PREGNANCY_INDUCED_HYPERTENSION = "SPIH";
        public static final String SICKLE_CELL_CRISIS = "SCC";
        public static final String UNINTENTED_PREGNANCY = "UP";
        public static final String UPPER_RESPIRATORY_TRACT_INFACTION = "URTI";
        public static final String URINARY_TRACT_INFECTION = "UTI";
        public static final String VAGINITIS = "VAGIN";
        public static final String VERY_LOW_BIRTH_WEIGHT = "LBWSH";
        public static final String VERY_LOW_WEIGHT = "VLW";
        public static final String VERY_SEVERE_FEBRILE_ILLNESS = "VSFI";

        private MorbidityCode() {
            throw new IllegalStateException("Utility class");
        }
    }
}
