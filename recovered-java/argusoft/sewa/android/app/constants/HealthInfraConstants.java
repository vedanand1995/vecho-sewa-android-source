package com.argusoft.sewa.android.app.constants;

import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class HealthInfraConstants {
    public static final String BLOCK_PHC = "Block PHC";
    public static final List<String> INFRA_TYPES_FOR_RI = getInfraTypesForRi();
    public static final String INFRA_TYPE_COMMUNITY_HEALTH_CENTER = "Community Health Center";
    public static final String INFRA_TYPE_DISTRICT_HOSPITAL = "District Hospital";
    public static final String INFRA_TYPE_MEDICAL_COLLEGE_HOSPITAL = "Medical College Hospital";
    public static final String INFRA_TYPE_PRIMARY_HEALTH_CENTRE = "Primary Health Centre";
    public static final String URBAN_CHC = "Urban CHC";
    public static final String URBAN_PHC = "Urban PHC";

    public HealthInfraConstants() {
        throw new IllegalStateException("Utility Class");
    }

    private static List<String> getInfraTypesForRi() {
        LinkedList linkedList = new LinkedList();
        linkedList.add(INFRA_TYPE_DISTRICT_HOSPITAL);
        linkedList.add(INFRA_TYPE_COMMUNITY_HEALTH_CENTER);
        linkedList.add(INFRA_TYPE_PRIMARY_HEALTH_CENTRE);
        linkedList.add(INFRA_TYPE_MEDICAL_COLLEGE_HOSPITAL);
        linkedList.add(URBAN_PHC);
        linkedList.add(URBAN_CHC);
        linkedList.add(BLOCK_PHC);
        return linkedList;
    }
}
