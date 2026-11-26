package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class RchVillageProfileDataBean {
    private String ambulanceNumber;
    private WorkerDetailDataBean anmDetail;
    private List<WorkerDetailDataBean> ashaDetail;
    private LocationDetailDataBean block;
    private LocationDetailDataBean chc;
    private LocationDetailDataBean district;
    private WorkerDetailDataBean fhwDetail;
    private String fruDetail;
    private String helplineNumber;
    private Integer infantChildCount;
    private WorkerDetailDataBean mphwDetail;
    private String nationalCallCentreNumber;
    private String nearbyHospitalDetail;
    private LocationDetailDataBean phc;
    private Integer pregnantWomenCount;
    private LocationDetailDataBean state;
    private LocationDetailDataBean subCentre;
    private Integer totalEligibleCouple;
    private Integer totalPopulation;
    private String transportationNumber;
    private LocationDetailDataBean village;

    public LocationDetailDataBean getState() {
        return this.state;
    }

    public void setState(LocationDetailDataBean locationDetailDataBean) {
        this.state = locationDetailDataBean;
    }

    public LocationDetailDataBean getDistrict() {
        return this.district;
    }

    public void setDistrict(LocationDetailDataBean locationDetailDataBean) {
        this.district = locationDetailDataBean;
    }

    public LocationDetailDataBean getBlock() {
        return this.block;
    }

    public void setBlock(LocationDetailDataBean locationDetailDataBean) {
        this.block = locationDetailDataBean;
    }

    public LocationDetailDataBean getChc() {
        return this.chc;
    }

    public void setChc(LocationDetailDataBean locationDetailDataBean) {
        this.chc = locationDetailDataBean;
    }

    public LocationDetailDataBean getPhc() {
        return this.phc;
    }

    public void setPhc(LocationDetailDataBean locationDetailDataBean) {
        this.phc = locationDetailDataBean;
    }

    public LocationDetailDataBean getSubCentre() {
        return this.subCentre;
    }

    public void setSubCentre(LocationDetailDataBean locationDetailDataBean) {
        this.subCentre = locationDetailDataBean;
    }

    public LocationDetailDataBean getVillage() {
        return this.village;
    }

    public void setVillage(LocationDetailDataBean locationDetailDataBean) {
        this.village = locationDetailDataBean;
    }

    public Integer getTotalPopulation() {
        return this.totalPopulation;
    }

    public void setTotalPopulation(Integer num) {
        this.totalPopulation = num;
    }

    public Integer getTotalEligibleCouple() {
        return this.totalEligibleCouple;
    }

    public void setTotalEligibleCouple(Integer num) {
        this.totalEligibleCouple = num;
    }

    public Integer getPregnantWomenCount() {
        return this.pregnantWomenCount;
    }

    public void setPregnantWomenCount(Integer num) {
        this.pregnantWomenCount = num;
    }

    public Integer getInfantChildCount() {
        return this.infantChildCount;
    }

    public void setInfantChildCount(Integer num) {
        this.infantChildCount = num;
    }

    public List<WorkerDetailDataBean> getAshaDetail() {
        return this.ashaDetail;
    }

    public void setAshaDetail(List<WorkerDetailDataBean> list) {
        this.ashaDetail = list;
    }

    public WorkerDetailDataBean getAnmDetail() {
        return this.anmDetail;
    }

    public void setAnmDetail(WorkerDetailDataBean workerDetailDataBean) {
        this.anmDetail = workerDetailDataBean;
    }

    public WorkerDetailDataBean getFhwDetail() {
        return this.fhwDetail;
    }

    public void setFhwDetail(WorkerDetailDataBean workerDetailDataBean) {
        this.fhwDetail = workerDetailDataBean;
    }

    public WorkerDetailDataBean getMphwDetail() {
        return this.mphwDetail;
    }

    public void setMphwDetail(WorkerDetailDataBean workerDetailDataBean) {
        this.mphwDetail = workerDetailDataBean;
    }

    public String getNearbyHospitalDetail() {
        return this.nearbyHospitalDetail;
    }

    public void setNearbyHospitalDetail(String str) {
        this.nearbyHospitalDetail = str;
    }

    public String getFruDetail() {
        return this.fruDetail;
    }

    public void setFruDetail(String str) {
        this.fruDetail = str;
    }

    public String getAmbulanceNumber() {
        return this.ambulanceNumber;
    }

    public void setAmbulanceNumber(String str) {
        this.ambulanceNumber = str;
    }

    public String getTransportationNumber() {
        return this.transportationNumber;
    }

    public void setTransportationNumber(String str) {
        this.transportationNumber = str;
    }

    public String getNationalCallCentreNumber() {
        return this.nationalCallCentreNumber;
    }

    public void setNationalCallCentreNumber(String str) {
        this.nationalCallCentreNumber = str;
    }

    public String getHelplineNumber() {
        return this.helplineNumber;
    }

    public void setHelplineNumber(String str) {
        this.helplineNumber = str;
    }

    public String toString() {
        return "RchVillageProfileDataBean{, \nstate=" + this.state + ", \ndistrict=" + this.district + ", \nblock=" + this.block + ", \nchc=" + this.chc + ", \nphc=" + this.phc + ", \nsubCentre=" + this.subCentre + ", \nvillage=" + this.village + ", \ntotalPopulation=" + this.totalPopulation + ", \ntotalEligibleCouple=" + this.totalEligibleCouple + ", \npregnantWomenCount=" + this.pregnantWomenCount + ", \ninfantChildCount=" + this.infantChildCount + ", \nashaDetail=" + this.ashaDetail + ", \nanmDetail=" + this.anmDetail + ", \nfhwDetail=" + this.fhwDetail + ", \nmphwDetail=" + this.mphwDetail + ", \nnearbyHospitalDetail='" + this.nearbyHospitalDetail + "', \nfruDetail='" + this.fruDetail + "', \nambulanceNumber='" + this.ambulanceNumber + "', \ntransportationNumber='" + this.transportationNumber + "', \nnationalCallCentreNumber='" + this.nationalCallCentreNumber + "', \nhelplineNumber='" + this.helplineNumber + "'}";
    }
}
