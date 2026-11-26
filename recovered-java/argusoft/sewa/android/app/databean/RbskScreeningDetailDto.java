package com.argusoft.sewa.android.app.databean;

import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class RbskScreeningDetailDto {
    private String apgar1;
    private String apgar5;
    private String assymetricalTonic;
    private String babyTone;
    private Integer deliveryInfraId;
    private String doneFrom;
    private Integer familyId;
    private String graspReflex;
    private Integer headCircumference;
    private Integer length;
    private Integer locationId;
    private Integer memberId;
    private String moroReflex;
    private String plantarReflex;
    private List<RbskDefectDetailDto> rbskScreeningDefectDto;
    private Boolean referralDone;
    private Integer referralPlace;
    private String rootReflex;
    private Date screeningDate;
    private String stepReflex;
    private String suckingReflex;
    private String token;
    private Boolean visibleDefects;

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public Integer getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Integer num) {
        this.memberId = num;
    }

    public Integer getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(Integer num) {
        this.familyId = num;
    }

    public Integer getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Integer num) {
        this.locationId = num;
    }

    public Date getScreeningDate() {
        return this.screeningDate;
    }

    public void setScreeningDate(Date date) {
        this.screeningDate = date;
    }

    public String getDoneFrom() {
        return this.doneFrom;
    }

    public void setDoneFrom(String str) {
        this.doneFrom = str;
    }

    public List<RbskDefectDetailDto> getRbskScreeningDefectDto() {
        return this.rbskScreeningDefectDto;
    }

    public void setRbskScreeningDefectDto(List<RbskDefectDetailDto> list) {
        this.rbskScreeningDefectDto = list;
    }

    public String getApgar1() {
        return this.apgar1;
    }

    public void setApgar1(String str) {
        this.apgar1 = str;
    }

    public String getApgar5() {
        return this.apgar5;
    }

    public void setApgar5(String str) {
        this.apgar5 = str;
    }

    public Integer getLength() {
        return this.length;
    }

    public void setLength(Integer num) {
        this.length = num;
    }

    public Integer getHeadCircumference() {
        return this.headCircumference;
    }

    public void setHeadCircumference(Integer num) {
        this.headCircumference = num;
    }

    public String getBabyTone() {
        return this.babyTone;
    }

    public void setBabyTone(String str) {
        this.babyTone = str;
    }

    public String getMoroReflex() {
        return this.moroReflex;
    }

    public void setMoroReflex(String str) {
        this.moroReflex = str;
    }

    public String getStepReflex() {
        return this.stepReflex;
    }

    public void setStepReflex(String str) {
        this.stepReflex = str;
    }

    public String getPlantarReflex() {
        return this.plantarReflex;
    }

    public void setPlantarReflex(String str) {
        this.plantarReflex = str;
    }

    public String getRootReflex() {
        return this.rootReflex;
    }

    public void setRootReflex(String str) {
        this.rootReflex = str;
    }

    public String getAssymetricalTonic() {
        return this.assymetricalTonic;
    }

    public void setAssymetricalTonic(String str) {
        this.assymetricalTonic = str;
    }

    public String getSuckingReflex() {
        return this.suckingReflex;
    }

    public void setSuckingReflex(String str) {
        this.suckingReflex = str;
    }

    public String getGraspReflex() {
        return this.graspReflex;
    }

    public void setGraspReflex(String str) {
        this.graspReflex = str;
    }

    public Boolean getVisibleDefects() {
        return this.visibleDefects;
    }

    public void setVisibleDefects(Boolean bool) {
        this.visibleDefects = bool;
    }

    public Boolean getReferralDone() {
        return this.referralDone;
    }

    public void setReferralDone(Boolean bool) {
        this.referralDone = bool;
    }

    public Integer getReferralPlace() {
        return this.referralPlace;
    }

    public void setReferralPlace(Integer num) {
        this.referralPlace = num;
    }

    public Integer getDeliveryInfraId() {
        return this.deliveryInfraId;
    }

    public void setDeliveryInfraId(Integer num) {
        this.deliveryInfraId = num;
    }

    public String toString() {
        return "RbskScreeningDetailDto{token='" + this.token + "', memberId=" + this.memberId + ", familyId=" + this.familyId + ", locationId=" + this.locationId + ", screeningDate=" + this.screeningDate + ", doneFrom='" + this.doneFrom + "', rbskScreeningDefectDto=" + this.rbskScreeningDefectDto + ", apgar1='" + this.apgar1 + "', apgar5='" + this.apgar5 + "', length=" + this.length + ", headCircumference=" + this.headCircumference + ", babyTone='" + this.babyTone + "', moroReflex='" + this.moroReflex + "', stepReflex='" + this.stepReflex + "', plantarReflex='" + this.plantarReflex + "', rootReflex='" + this.rootReflex + "', assymetricalTonic='" + this.assymetricalTonic + "', suckingReflex='" + this.suckingReflex + "', graspReflex='" + this.graspReflex + "', visibleDefects=" + this.visibleDefects + ", referralDone=" + this.referralDone + ", referralPlace=" + this.referralPlace + ", deliveryInfraId=" + this.deliveryInfraId + '}';
    }
}
