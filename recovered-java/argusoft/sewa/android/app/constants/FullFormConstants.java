package com.argusoft.sewa.android.app.constants;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class FullFormConstants {
    private static Map<String, String> cbacDetails;
    private static Map<String, String> cbacFamilyDataFullForm;
    private static Map<String, String> familyPlanningFullNames;
    private static Map<String, String> genderFullNames;
    private static Map<String, String> placeFullNames;
    private static Map<String, String> vaccinesFullNameMap;

    private FullFormConstants() {
        throw new IllegalStateException("Utility Class");
    }

    public static String getFullFormOfGender(String str) {
        if (str == null) {
            return null;
        }
        if (genderFullNames == null) {
            HashMap map = new HashMap();
            genderFullNames = map;
            map.put("M", LabelConstants.MALE);
            genderFullNames.put("F", LabelConstants.FEMALE);
            genderFullNames.put("T", LabelConstants.TRANSGENDER);
        }
        return genderFullNames.containsKey(str.trim()) ? genderFullNames.get(str.trim()) : str;
    }

    public static String getFullFormsOfPlace(String str) {
        if (str == null) {
            return null;
        }
        if (placeFullNames == null) {
            HashMap map = new HashMap();
            placeFullNames = map;
            map.put(RchConstants.HOME, "Home");
            placeFullNames.put(RchConstants.HOSP, "Hospital");
            placeFullNames.put(RchConstants.ON_THE_WAY, "On the way");
            placeFullNames.put(RchConstants.AMBULANCE_108, "108 Ambulance");
            placeFullNames.put(RchConstants.OUT_OF_STATE_GOVT, "Out of State - Govt. Hospital");
            placeFullNames.put(RchConstants.OUT_OF_STATE_PVT, "Out of State - Private Hospital");
        }
        return placeFullNames.containsKey(str.trim()) ? placeFullNames.get(str.trim()) : str;
    }

    public static String getFullFormOfFamilyPlanningMethods(String str) {
        if (str == null) {
            return null;
        }
        if (familyPlanningFullNames == null) {
            HashMap map = new HashMap();
            familyPlanningFullNames = map;
            map.put(RchConstants.FEMALE_STERILIZATION, "Female Sterilization");
            familyPlanningFullNames.put(RchConstants.MALE_STERILIZATION, "Male Sterilization");
            familyPlanningFullNames.put(RchConstants.IUCD_5_YEARS, "IUCD - 5 years");
            familyPlanningFullNames.put(RchConstants.IUCD_10_YEARS, "IUCD - 10 years");
            familyPlanningFullNames.put(RchConstants.CONDOM, "Condom");
            familyPlanningFullNames.put(RchConstants.ORAL_PILLS, "Oral Pills");
            familyPlanningFullNames.put(RchConstants.CHHAYA, "Chaya");
            familyPlanningFullNames.put(RchConstants.ANTARA, "Antara");
            familyPlanningFullNames.put(RchConstants.EMERGENCY_CONTRACEPTIVE_PILLS, "Emergency Contraceptive Pills");
            familyPlanningFullNames.put(RchConstants.PPIUCD, "Post Partum IUCD");
            familyPlanningFullNames.put(RchConstants.PAIUCD, "Post Abortion IUCD");
            familyPlanningFullNames.put(RchConstants.LAPAROSCOPIC_TL, "LAPAROSCOPIC TL");
            familyPlanningFullNames.put(RchConstants.ABDOMINAL_TL, "ABDOMINAL TL");
            familyPlanningFullNames.put(RchConstants.VASECTOMY_FOR_HUSBAND, "VASECTOMY (FOR HUSBAND)");
            familyPlanningFullNames.put(RchConstants.PPTL, "POST PARTEM TL");
            familyPlanningFullNames.put(RchConstants.PATL, "POST ABORTION TL");
        }
        return familyPlanningFullNames.containsKey(str.trim()) ? familyPlanningFullNames.get(str.trim()) : str;
    }

    public static String getFullFormOfCBACConstants(String str) {
        if (str == null) {
            return null;
        }
        if (cbacDetails == null) {
            HashMap map = new HashMap();
            cbacDetails = map;
            map.put("KUCCHA", "Kuccha");
            cbacDetails.put("PUCCA_STONE_MORTAS", "Pucca with stone and mortas");
            cbacDetails.put("PUCCA_BRICKS_CONCRETE", "Pucca with bricks and concrete");
            cbacDetails.put("FLUSH_WITH_WATER", "Flush toilet with running watter supply");
            cbacDetails.put("FLUSH_WITHOUT_WATER", "Flush toilet without running water supply");
            cbacDetails.put("PIT_WITH_WATER", "Pit toilet with running water supply");
            cbacDetails.put("PIT_WITHOUT_WATER", "Pit toilet without running water supply");
            cbacDetails.put("ELECTRICITY_SUPPLY", "Electricity supply");
            cbacDetails.put("GENERATOR", "Generator");
            cbacDetails.put("SOLAR_POWER", "Solar power");
            cbacDetails.put("KEROSENE_LAMP", "Kerosene lamp");
            cbacDetails.put("TAP", "Tap water");
            cbacDetails.put("HAND_PUMP_INSIDE", "Hand pump within house");
            cbacDetails.put("HAND_PUMP_OUTSIDE", "Hand pump outside of house");
            cbacDetails.put("WELL", "Well");
            cbacDetails.put("TANK", "Tank");
            cbacDetails.put("RIVER", "River");
            cbacDetails.put("POND", "Pond");
            cbacDetails.put("FIREWOOD", "Firewood");
            cbacDetails.put("CROP_RESIDUE", "Crop Residue");
            cbacDetails.put("COW_DUNG_CAKE", "Cow Dung Cake");
            cbacDetails.put("COAL", "Coal");
            cbacDetails.put("KEROSENE", "Kerosene");
            cbacDetails.put("MOTOR_BIKE", "Motor Bike");
            cbacDetails.put("CAR", "Car");
            cbacDetails.put("TRACTOR", "Tractor");
            cbacDetails.put("RENT", "Rent");
            cbacDetails.put("OWN", "Own");
            cbacDetails.put("0_TO_10K", "0 to 10000");
            cbacDetails.put("10K_TO_20K", "10000 to 20000");
            cbacDetails.put("20K_TO_30K", "20000 to 30000");
            cbacDetails.put("30K_TO_50K", "30000 to 50000");
            cbacDetails.put("50K_TO_100K", "50000 to 100000");
            cbacDetails.put("100K_TO_200K", "100000 to 200000");
            cbacDetails.put("GT_200K", "More than 200000");
            cbacDetails.put("DONT_KNOW", "Don’t know");
            cbacDetails.put("NEVER", "Never");
            cbacDetails.put("IN_PAST", "Used to consume in Past/ Sometimes now");
            cbacDetails.put("DAILY", "Daily");
            cbacDetails.put("LT80", "80 cm or less");
            cbacDetails.put("81TO90", "81-90 cm");
            cbacDetails.put("GT90", "More than 90 cm");
            cbacDetails.put("LT90", "90 cm or less");
            cbacDetails.put("91TO100", "91-100 cm");
            cbacDetails.put("GT100", "More than 100 cm");
            cbacDetails.put("ATLEAST_150", "Atleast 150 minutes in a week");
            cbacDetails.put("LESS_THAN_150", "Less than 150 minutes in a week");
            cbacDetails.put("CROP_BURNING", "Crop residue burning / burning of garbage");
            cbacDetails.put("INDUSTRY_WORK", LabelConstants.WORKING_WITH_INDUSTRIES);
            cbacDetails.put("NONE", LabelConstants.NONE);
            cbacDetails.put(RchConstants.OTHER, "Other");
            cbacDetails.put(RbskConstants.TONE_OF_BODY_DEFECT_NORMAL, "Normal");
            cbacDetails.put("HEAVY", "Heavy");
            cbacDetails.put("CLOTS", "Clots");
            cbacDetails.put("PAIN", "Pain");
        }
        return cbacDetails.containsKey(str.trim()) ? cbacDetails.get(str.trim()) : str;
    }

    public static String getFullFormOfVaccines(String str) {
        if (str == null) {
            return null;
        }
        if (vaccinesFullNameMap == null) {
            HashMap map = new HashMap();
            vaccinesFullNameMap = map;
            map.put(RchConstants.HEPATITIS_B_0, "Hepatitis B 0");
            vaccinesFullNameMap.put("BCG", "BCG");
            vaccinesFullNameMap.put(RchConstants.OPV_0, "OPV 0");
            vaccinesFullNameMap.put(RchConstants.OPV_1, "OPV 1");
            vaccinesFullNameMap.put(RchConstants.OPV_2, "OPV 2");
            vaccinesFullNameMap.put(RchConstants.OPV_3, "OPV 3");
            vaccinesFullNameMap.put(RchConstants.OPV_BOOSTER, "OPV Booster");
            vaccinesFullNameMap.put(RchConstants.PENTA_1, "Penta 1");
            vaccinesFullNameMap.put(RchConstants.PENTA_2, "Penta 2");
            vaccinesFullNameMap.put(RchConstants.PENTA_3, "Penta 3");
            vaccinesFullNameMap.put(RchConstants.DPT_1, "DPT 1");
            vaccinesFullNameMap.put(RchConstants.DPT_2, "DPT 2");
            vaccinesFullNameMap.put(RchConstants.DPT_3, "DPT 3");
            vaccinesFullNameMap.put(RchConstants.DPT_BOOSTER, "DPT Booster");
            vaccinesFullNameMap.put(RchConstants.MEASLES_1, "Measles 1");
            vaccinesFullNameMap.put(RchConstants.MEASLES_2, "Measles 2");
            vaccinesFullNameMap.put(RchConstants.F_IPV_1_01, "F IPV 1 01");
            vaccinesFullNameMap.put(RchConstants.F_IPV_2_01, "F IPV 2 01");
            vaccinesFullNameMap.put(RchConstants.F_IPV_2_05, "F IPV 2 05");
            vaccinesFullNameMap.put(RchConstants.F_IPV_3, "F IPV 3");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_A, "Vitamin A");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_K, "Vitamin K");
            vaccinesFullNameMap.put(RchConstants.ROTA_VIRUS_1, "Rota Virus 1");
            vaccinesFullNameMap.put(RchConstants.ROTA_VIRUS_2, "Rota Virus 2");
            vaccinesFullNameMap.put(RchConstants.ROTA_VIRUS_3, "Rota Virus 3");
            vaccinesFullNameMap.put(RchConstants.MEASLES_RUBELLA_1, "Measles Rubella 1");
            vaccinesFullNameMap.put(RchConstants.MEASLES_RUBELLA_2, "Measles Rubella 2");
            vaccinesFullNameMap.put(RchConstants.TT1, "TD 1");
            vaccinesFullNameMap.put(RchConstants.TT2, "TD 2");
            vaccinesFullNameMap.put(RchConstants.TT_BOOSTER, "TD Booster");
            vaccinesFullNameMap.put("MMR", "MMR");
            vaccinesFullNameMap.put("HIB_1", "HIB 1");
            vaccinesFullNameMap.put("HIB_2", "HIB 2");
            vaccinesFullNameMap.put("HIB_3", "HIB 3");
            vaccinesFullNameMap.put("HEPATITIS_B_1", "Hepatitis B 1");
            vaccinesFullNameMap.put("HEPATITIS_B_2", "Hepatitis B 2");
            vaccinesFullNameMap.put("HEPATITIS_B_3", "Hepatitis B 3");
            vaccinesFullNameMap.put("HEPATITIS_A_1", "Hepatitis A 1");
            vaccinesFullNameMap.put("HEPATITIS_A_2", "Hepatitis A 2");
            vaccinesFullNameMap.put("CHICKEN_POX", "Chicken Pox");
            vaccinesFullNameMap.put(RIInventoryConstants.JE, RIInventoryConstants.JE);
            vaccinesFullNameMap.put(RchConstants.DPT_BOOSTER_2, "DPT Booster 2");
            vaccinesFullNameMap.put("TT_10", "TD 10");
            vaccinesFullNameMap.put("TT_16", "TD 16");
            vaccinesFullNameMap.put("TYPHOID", "Typhoid");
            vaccinesFullNameMap.put(RchConstants.PCV_1, "PCV 1");
            vaccinesFullNameMap.put(RchConstants.PCV_2, "PCV 2");
            vaccinesFullNameMap.put(RchConstants.PCV_BOOSTER, "PCV Booster");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_A_1, "Vitamin A 1");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_A_2, "Vitamin A 2");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_A_3, "Vitamin A 3");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_A_4, "Vitamin A 4");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_A_5, "Vitamin A 5");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_A_6, "Vitamin A 6");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_A_7, "Vitamin A 7");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_A_8, "Vitamin A 8");
            vaccinesFullNameMap.put(RchConstants.VITAMIN_A_9, "Vitamin A 9");
        }
        return vaccinesFullNameMap.containsKey(str.trim()) ? vaccinesFullNameMap.get(str.trim()) : str;
    }

    public static String getFullFormOfCBACFamilyDataConstants(String str) {
        if (str == null) {
            return null;
        }
        if (cbacFamilyDataFullForm == null) {
            HashMap map = new HashMap();
            cbacFamilyDataFullForm = map;
            map.put(RchConstants.OTHER, "Other");
            cbacFamilyDataFullForm.put("KUCCHA", "Kuccha");
            cbacFamilyDataFullForm.put("PUCCA_STONE_MORTAS", "Pucca with stone and mortas");
            cbacFamilyDataFullForm.put("PUCCA_BRICKS_CONCRETE", "Pucca with bricks and concrete");
            cbacFamilyDataFullForm.put("FLUSH_WITH_WATER", "Flush toilet with running water supply");
            cbacFamilyDataFullForm.put("FLUSH_WITHOUT_WATER", "Flush toilet without running water supply");
            cbacFamilyDataFullForm.put("PIT_WITH_WATER", "Pit toilet with running water supply");
            cbacFamilyDataFullForm.put("PIT_WITHOUT_WATER", "Pit toilet without running water supply");
            cbacFamilyDataFullForm.put("ELECTRICITY_SUPPLY", "Electricity supply");
            cbacFamilyDataFullForm.put("GENERATOR", "Generator");
            cbacFamilyDataFullForm.put("SOLAR_POWER", "Solar power");
            cbacFamilyDataFullForm.put("KEROSENE_LAMP", "Kerosene lamp");
            cbacFamilyDataFullForm.put("TAP", "Tap water");
            cbacFamilyDataFullForm.put("HAND_PUMP_INSIDE", "Hand pump within house");
            cbacFamilyDataFullForm.put("HAND_PUMP_OUTSIDE", "Hand pump outside of house");
            cbacFamilyDataFullForm.put("WELL", "Well");
            cbacFamilyDataFullForm.put("TANK", "Tank");
            cbacFamilyDataFullForm.put("RIVER", "River");
            cbacFamilyDataFullForm.put("POND", "Pond");
            cbacFamilyDataFullForm.put("FIREWOOD", "Firewood");
            cbacFamilyDataFullForm.put("CROP_RESIDUE", "Crop Residue");
            cbacFamilyDataFullForm.put("COW_DUNG_CAKE", "Cow Dung Cake");
            cbacFamilyDataFullForm.put("COAL", "Coal");
            cbacFamilyDataFullForm.put("KEROSENE", "Kerosene");
            cbacFamilyDataFullForm.put("LPG", "LPG");
            cbacFamilyDataFullForm.put("MOTOR_BIKE", "Motor Bike");
            cbacFamilyDataFullForm.put("CAR", "Car");
            cbacFamilyDataFullForm.put("TRACTOR", "Tractor");
            cbacFamilyDataFullForm.put("RENT", "Rent");
            cbacFamilyDataFullForm.put("OWN", "Own");
            cbacFamilyDataFullForm.put("0_TO_10K", "0 to 10000");
            cbacFamilyDataFullForm.put("10K_TO_20K", "10000 to 20000");
            cbacFamilyDataFullForm.put("20K_TO_30K", "20000 to 30000");
            cbacFamilyDataFullForm.put("30K_TO_50K", "30000 to 50000");
            cbacFamilyDataFullForm.put("50K_TO_100K", "50000 to 100000");
            cbacFamilyDataFullForm.put("100K_TO_200K", "100000 to 200000");
            cbacFamilyDataFullForm.put("GT_200K", "More than 200000");
            cbacFamilyDataFullForm.put("DONT_KNOW", "Don’t know");
        }
        return cbacFamilyDataFullForm.containsKey(str.trim()) ? cbacFamilyDataFullForm.get(str.trim()) : str;
    }
}
