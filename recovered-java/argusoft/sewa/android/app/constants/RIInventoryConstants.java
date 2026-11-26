package com.argusoft.sewa.android.app.constants;

import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class RIInventoryConstants {
    public static final String BCG = "BCG";
    public static final String BCG_DILUENT = "BCG_DILUENT";
    public static final String DPT = "DPT";
    public static final String FIPV = "FIPV";
    public static final String HEP_B = "HEP_B";
    public static final String JE = "JE";
    public static final String MR = "MR";
    public static final String MR_DILUENT = "MR_DILUENT";
    public static final String OPV = "OPV";
    public static final String PCV = "PCV";
    public static final String PENTAVALENT = "PENTAVALENT";
    public static final String ROTA_VIRUS = "ROTA_VIRUS";
    public static final String SYRINGE_0_1_ML = "SYRINGE_0_1_ML";
    public static final String SYRINGE_0_5_ML = "SYRINGE_0_5_ML";
    public static final String SYRINGE_5_ML = "SYRINGE_5_ML";
    public static final String TD = "TD";
    public static final List<String> INVENTORY_WITH_OPEN_VIAL_POLICY_NO = Collections.unmodifiableList(getInventoryWithOpenVialPolicyNo());
    public static final List<String> INVENTORY_WITH_10_VIAL = Collections.unmodifiableList(getInventoryWith10Vial());
    private static final Map<String, String> INVENTORY_VACCINE_FULL_FORM = new HashMap();

    private RIInventoryConstants() {
        throw new IllegalStateException("Utility Class");
    }

    private static List<String> getInventoryWithOpenVialPolicyNo() {
        LinkedList linkedList = new LinkedList();
        linkedList.add("BCG");
        linkedList.add("MR");
        return linkedList;
    }

    private static List<String> getInventoryWith10Vial() {
        LinkedList linkedList = new LinkedList();
        linkedList.add(TD);
        linkedList.add(DPT);
        return linkedList;
    }

    public static String getFullFormOfInventoryVaccines(String str) {
        Map<String, String> map = INVENTORY_VACCINE_FULL_FORM;
        if (map.isEmpty()) {
            map.put("BCG", "BCG");
            map.put("MR", "Measles Rubella");
            map.put(DPT, DPT);
            map.put(TD, TD);
            map.put(PENTAVALENT, "Pentavalent");
            map.put(FIPV, FIPV);
            map.put(PCV, PCV);
            map.put(JE, JE);
            map.put(OPV, OPV);
            map.put(ROTA_VIRUS, "Rota Virus");
            map.put(HEP_B, "Hepatitis B");
            map.put(BCG_DILUENT, "BCG Diluent");
            map.put(MR_DILUENT, "MR Diluent");
            map.put(SYRINGE_0_1_ML, "Syringe 0.1 ml");
            map.put(SYRINGE_0_5_ML, "Syringe 0.5 ml");
            map.put(SYRINGE_5_ML, "Syringe 5 ml");
        }
        return map.containsKey(str) ? map.get(str) : str;
    }
}
