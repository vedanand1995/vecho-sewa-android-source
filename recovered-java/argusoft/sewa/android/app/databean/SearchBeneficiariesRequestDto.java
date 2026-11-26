package com.argusoft.sewa.android.app.databean;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes.dex */
public class SearchBeneficiariesRequestDto {

    @SerializedName("search_by")
    private String searchBy;

    @SerializedName("search_value")
    private String searchValue;

    public SearchBeneficiariesRequestDto(String str, String str2) {
        this.searchBy = str;
        this.searchValue = str2;
    }

    public String getSearchBy() {
        return this.searchBy;
    }

    public String getSearchValue() {
        return this.searchValue;
    }
}
