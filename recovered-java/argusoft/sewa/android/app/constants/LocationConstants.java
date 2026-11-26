package com.argusoft.sewa.android.app.constants;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LocationConstants {
    public LocationConstants() {
        throw new IllegalStateException("Utility Class");
    }

    public static class LocationType {
        public static final String ANGANWADI_AREA = "ANG";
        public static final String ANM_AREA = "ANM";
        public static final String AREA = "A";
        public static final String ASHA_AREA = "AA";
        public static final String BLOCK = "CHC";
        public static final String CHC_AREA = "CHCA";
        public static final String CORPORATION = "C";
        public static final String DISTRICT = "D";
        public static final String PHC = "P";
        public static final String STATE = "S";
        public static final String SUBCENTER = "SC";
        public static final String TALUKA = "B";
        public static final String UCHC_AREA = "UCHC";
        public static final String UPHC_AREA = "U";
        public static final String URBAN = "URBAN";
        public static final String URBAN_ASHA_AREA = "UAA";
        public static final String URBAN_LOCAL_BODY = "ULB";
        public static final String VILLAGE = "V";
        public static final String WARD = "WARD";
        public static final String ZONE = "Z";

        private LocationType() {
            throw new IllegalStateException("Utility Class");
        }
    }

    public static List<String> getLocationTypesForBlockLevel() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(LocationType.BLOCK);
        arrayList.add(LocationType.UCHC_AREA);
        arrayList.add("U");
        return arrayList;
    }

    public static List<String> getLocationTypesForVillageLevel() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(LocationType.VILLAGE);
        arrayList.add("ANG");
        arrayList.add("ANM");
        return arrayList;
    }
}
