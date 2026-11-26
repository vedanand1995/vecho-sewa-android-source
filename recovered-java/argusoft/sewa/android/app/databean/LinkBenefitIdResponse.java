package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LinkBenefitIdResponse {
    private String benefitName;
    private String healthId;
    private HealthIdAccountProfileResponse healthIdAccountProfileResponse;
    private HealthIdAccountProfileV3Response healthIdAccountProfileV3Response;
    private String status;

    public String getBenefitName() {
        return this.benefitName;
    }

    public void setBenefitName(String str) {
        this.benefitName = str;
    }

    public String getHealthId() {
        return this.healthId;
    }

    public void setHealthId(String str) {
        this.healthId = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public HealthIdAccountProfileResponse getHealthIdAccountProfileResponse() {
        return this.healthIdAccountProfileResponse;
    }

    public void setHealthIdAccountProfileResponse(HealthIdAccountProfileResponse healthIdAccountProfileResponse) {
        this.healthIdAccountProfileResponse = healthIdAccountProfileResponse;
    }

    public HealthIdAccountProfileV3Response getHealthIdAccountProfileV3Response() {
        return this.healthIdAccountProfileV3Response;
    }

    public void setHealthIdAccountProfileV3Response(HealthIdAccountProfileV3Response healthIdAccountProfileV3Response) {
        this.healthIdAccountProfileV3Response = healthIdAccountProfileV3Response;
    }
}
