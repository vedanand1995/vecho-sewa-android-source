package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class FhwServiceDetailBean extends BaseEntity {

    @DatabaseField
    private Long familiesArchivedTillNow;

    @DatabaseField
    private Long familiesArchivedTillNowExpectedValue;

    @DatabaseField
    private Long familiesImportedFromEMamta;

    @DatabaseField
    private Long familiesImportedFromEMamtaExpectedValue;

    @DatabaseField
    private Long familiesVerifiedLast3Days;

    @DatabaseField
    private Long familiesVerifiedLast3DaysExpectedValue;

    @DatabaseField
    private Long familiesVerifiedTillNow;

    @DatabaseField
    private Long familiesVerifiedTillNowExpectedValue;

    @DatabaseField
    private Long locationId;

    @DatabaseField
    private Long ncdTotalFemaleMembersScreened;

    @DatabaseField
    private Long ncdTotalFemaleMembersScreenedForBreast;

    @DatabaseField
    private Long ncdTotalFemaleMembersScreenedForCervical;

    @DatabaseField
    private Long ncdTotalMaleMembersScreened;

    @DatabaseField
    private Long ncdTotalMembersScreened;

    @DatabaseField
    private Long ncdTotalMembersScreenedForDiabetes;

    @DatabaseField
    private Long ncdTotalMembersScreenedForHypertension;

    @DatabaseField
    private Long ncdTotalMembersScreenedForOral;

    @DatabaseField
    private Long newFamiliesAddedTillNow;

    @DatabaseField
    private Long newFamiliesAddedTillNowExpectedValue;

    @DatabaseField
    private Long numberOfMembersWithAadharNumberEntered;

    @DatabaseField
    private Long numberOfMembersWithAadharNumberEnteredExpectedValue;

    @DatabaseField
    private Long numberOfMembersWithMobileNumberEntered;

    @DatabaseField
    private Long numberOfMembersWithMobileNumberEnteredExpectedValue;

    @DatabaseField
    private Long numberOfTrueValidationsByGvkEmri;

    @DatabaseField
    private Long numberOfTrueValidationsByGvkEmriExpectedValue;

    @DatabaseField
    private Long totalEligibleCouplesInTeCHO;

    @DatabaseField
    private Long totalEligibleCouplesInTeCHOExpectedValue;

    @DatabaseField
    private Long totalFamiliesInIMTTillNow;

    @DatabaseField
    private Long totalFamiliesInIMTTillNowExpectedValue;

    @DatabaseField
    private Long totalMembersInIMTTillNow;

    @DatabaseField
    private Long totalMembersInIMTTillNowExpectedValue;

    @DatabaseField
    private Long totalNumberOfSeasonalMigrantFamilies;

    @DatabaseField
    private Long totalNumberOfSeasonalMigrantFamiliesExpectedValue;

    @DatabaseField
    private Long totalPregnantWomenInTeCHO;

    @DatabaseField
    private Long totalPregnantWomenInTeCHOExpectedValue;

    @DatabaseField
    private Long under5ChildrenTillNow;

    @DatabaseField
    private Long under5ChildrenTillNowExpectedValue;

    public Long getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Long l) {
        this.locationId = l;
    }

    public Long getFamiliesImportedFromEMamta() {
        return this.familiesImportedFromEMamta;
    }

    public void setFamiliesImportedFromEMamta(Long l) {
        this.familiesImportedFromEMamta = l;
    }

    public Long getFamiliesVerifiedTillNow() {
        return this.familiesVerifiedTillNow;
    }

    public void setFamiliesVerifiedTillNow(Long l) {
        this.familiesVerifiedTillNow = l;
    }

    public Long getFamiliesVerifiedLast3Days() {
        return this.familiesVerifiedLast3Days;
    }

    public void setFamiliesVerifiedLast3Days(Long l) {
        this.familiesVerifiedLast3Days = l;
    }

    public Long getFamiliesArchivedTillNow() {
        return this.familiesArchivedTillNow;
    }

    public void setFamiliesArchivedTillNow(Long l) {
        this.familiesArchivedTillNow = l;
    }

    public Long getNewFamiliesAddedTillNow() {
        return this.newFamiliesAddedTillNow;
    }

    public void setNewFamiliesAddedTillNow(Long l) {
        this.newFamiliesAddedTillNow = l;
    }

    public Long getTotalFamiliesInIMTTillNow() {
        return this.totalFamiliesInIMTTillNow;
    }

    public void setTotalFamiliesInIMTTillNow(Long l) {
        this.totalFamiliesInIMTTillNow = l;
    }

    public Long getTotalNumberOfSeasonalMigrantFamilies() {
        return this.totalNumberOfSeasonalMigrantFamilies;
    }

    public void setTotalNumberOfSeasonalMigrantFamilies(Long l) {
        this.totalNumberOfSeasonalMigrantFamilies = l;
    }

    public Long getTotalMembersInIMTTillNow() {
        return this.totalMembersInIMTTillNow;
    }

    public void setTotalMembersInIMTTillNow(Long l) {
        this.totalMembersInIMTTillNow = l;
    }

    public Long getTotalEligibleCouplesInTeCHO() {
        return this.totalEligibleCouplesInTeCHO;
    }

    public void setTotalEligibleCouplesInTeCHO(Long l) {
        this.totalEligibleCouplesInTeCHO = l;
    }

    public Long getTotalPregnantWomenInTeCHO() {
        return this.totalPregnantWomenInTeCHO;
    }

    public void setTotalPregnantWomenInTeCHO(Long l) {
        this.totalPregnantWomenInTeCHO = l;
    }

    public Long getNumberOfMembersWithAadharNumberEntered() {
        return this.numberOfMembersWithAadharNumberEntered;
    }

    public void setNumberOfMembersWithAadharNumberEntered(Long l) {
        this.numberOfMembersWithAadharNumberEntered = l;
    }

    public Long getNumberOfMembersWithMobileNumberEntered() {
        return this.numberOfMembersWithMobileNumberEntered;
    }

    public void setNumberOfMembersWithMobileNumberEntered(Long l) {
        this.numberOfMembersWithMobileNumberEntered = l;
    }

    public Long getUnder5ChildrenTillNow() {
        return this.under5ChildrenTillNow;
    }

    public void setUnder5ChildrenTillNow(Long l) {
        this.under5ChildrenTillNow = l;
    }

    public Long getFamiliesImportedFromEMamtaExpectedValue() {
        return this.familiesImportedFromEMamtaExpectedValue;
    }

    public void setFamiliesImportedFromEMamtaExpectedValue(Long l) {
        this.familiesImportedFromEMamtaExpectedValue = l;
    }

    public Long getFamiliesVerifiedTillNowExpectedValue() {
        return this.familiesVerifiedTillNowExpectedValue;
    }

    public void setFamiliesVerifiedTillNowExpectedValue(Long l) {
        this.familiesVerifiedTillNowExpectedValue = l;
    }

    public Long getFamiliesVerifiedLast3DaysExpectedValue() {
        return this.familiesVerifiedLast3DaysExpectedValue;
    }

    public void setFamiliesVerifiedLast3DaysExpectedValue(Long l) {
        this.familiesVerifiedLast3DaysExpectedValue = l;
    }

    public Long getFamiliesArchivedTillNowExpectedValue() {
        return this.familiesArchivedTillNowExpectedValue;
    }

    public void setFamiliesArchivedTillNowExpectedValue(Long l) {
        this.familiesArchivedTillNowExpectedValue = l;
    }

    public Long getNewFamiliesAddedTillNowExpectedValue() {
        return this.newFamiliesAddedTillNowExpectedValue;
    }

    public void setNewFamiliesAddedTillNowExpectedValue(Long l) {
        this.newFamiliesAddedTillNowExpectedValue = l;
    }

    public Long getTotalFamiliesInIMTTillNowExpectedValue() {
        return this.totalFamiliesInIMTTillNowExpectedValue;
    }

    public void setTotalFamiliesInIMTTillNowExpectedValue(Long l) {
        this.totalFamiliesInIMTTillNowExpectedValue = l;
    }

    public Long getTotalNumberOfSeasonalMigrantFamiliesExpectedValue() {
        return this.totalNumberOfSeasonalMigrantFamiliesExpectedValue;
    }

    public void setTotalNumberOfSeasonalMigrantFamiliesExpectedValue(Long l) {
        this.totalNumberOfSeasonalMigrantFamiliesExpectedValue = l;
    }

    public Long getTotalMembersInIMTTillNowExpectedValue() {
        return this.totalMembersInIMTTillNowExpectedValue;
    }

    public void setTotalMembersInIMTTillNowExpectedValue(Long l) {
        this.totalMembersInIMTTillNowExpectedValue = l;
    }

    public Long getTotalEligibleCouplesInTeCHOExpectedValue() {
        return this.totalEligibleCouplesInTeCHOExpectedValue;
    }

    public void setTotalEligibleCouplesInTeCHOExpectedValue(Long l) {
        this.totalEligibleCouplesInTeCHOExpectedValue = l;
    }

    public Long getTotalPregnantWomenInTeCHOExpectedValue() {
        return this.totalPregnantWomenInTeCHOExpectedValue;
    }

    public void setTotalPregnantWomenInTeCHOExpectedValue(Long l) {
        this.totalPregnantWomenInTeCHOExpectedValue = l;
    }

    public Long getNumberOfMembersWithAadharNumberEnteredExpectedValue() {
        return this.numberOfMembersWithAadharNumberEnteredExpectedValue;
    }

    public void setNumberOfMembersWithAadharNumberEnteredExpectedValue(Long l) {
        this.numberOfMembersWithAadharNumberEnteredExpectedValue = l;
    }

    public Long getNumberOfMembersWithMobileNumberEnteredExpectedValue() {
        return this.numberOfMembersWithMobileNumberEnteredExpectedValue;
    }

    public void setNumberOfMembersWithMobileNumberEnteredExpectedValue(Long l) {
        this.numberOfMembersWithMobileNumberEnteredExpectedValue = l;
    }

    public Long getUnder5ChildrenTillNowExpectedValue() {
        return this.under5ChildrenTillNowExpectedValue;
    }

    public void setUnder5ChildrenTillNowExpectedValue(Long l) {
        this.under5ChildrenTillNowExpectedValue = l;
    }

    public Long getNumberOfTrueValidationsByGvkEmri() {
        return this.numberOfTrueValidationsByGvkEmri;
    }

    public void setNumberOfTrueValidationsByGvkEmri(Long l) {
        this.numberOfTrueValidationsByGvkEmri = l;
    }

    public Long getNumberOfTrueValidationsByGvkEmriExpectedValue() {
        return this.numberOfTrueValidationsByGvkEmriExpectedValue;
    }

    public void setNumberOfTrueValidationsByGvkEmriExpectedValue(Long l) {
        this.numberOfTrueValidationsByGvkEmriExpectedValue = l;
    }

    public Long getNcdTotalMembersScreened() {
        return this.ncdTotalMembersScreened;
    }

    public void setNcdTotalMembersScreened(Long l) {
        this.ncdTotalMembersScreened = l;
    }

    public Long getNcdTotalMaleMembersScreened() {
        return this.ncdTotalMaleMembersScreened;
    }

    public void setNcdTotalMaleMembersScreened(Long l) {
        this.ncdTotalMaleMembersScreened = l;
    }

    public Long getNcdTotalFemaleMembersScreened() {
        return this.ncdTotalFemaleMembersScreened;
    }

    public void setNcdTotalFemaleMembersScreened(Long l) {
        this.ncdTotalFemaleMembersScreened = l;
    }

    public Long getNcdTotalMembersScreenedForHypertension() {
        return this.ncdTotalMembersScreenedForHypertension;
    }

    public void setNcdTotalMembersScreenedForHypertension(Long l) {
        this.ncdTotalMembersScreenedForHypertension = l;
    }

    public Long getNcdTotalMembersScreenedForDiabetes() {
        return this.ncdTotalMembersScreenedForDiabetes;
    }

    public void setNcdTotalMembersScreenedForDiabetes(Long l) {
        this.ncdTotalMembersScreenedForDiabetes = l;
    }

    public Long getNcdTotalMembersScreenedForOral() {
        return this.ncdTotalMembersScreenedForOral;
    }

    public void setNcdTotalMembersScreenedForOral(Long l) {
        this.ncdTotalMembersScreenedForOral = l;
    }

    public Long getNcdTotalFemaleMembersScreenedForBreast() {
        return this.ncdTotalFemaleMembersScreenedForBreast;
    }

    public void setNcdTotalFemaleMembersScreenedForBreast(Long l) {
        this.ncdTotalFemaleMembersScreenedForBreast = l;
    }

    public Long getNcdTotalFemaleMembersScreenedForCervical() {
        return this.ncdTotalFemaleMembersScreenedForCervical;
    }

    public void setNcdTotalFemaleMembersScreenedForCervical(Long l) {
        this.ncdTotalFemaleMembersScreenedForCervical = l;
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }
}
