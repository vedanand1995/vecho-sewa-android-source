package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class RbskDefectDetailDto {
    private Integer defectId;
    private Integer memberId;
    private byte[] photoData;

    public Integer getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Integer num) {
        this.memberId = num;
    }

    public Integer getDefectId() {
        return this.defectId;
    }

    public void setDefectId(Integer num) {
        this.defectId = num;
    }

    public byte[] getPhotoData() {
        return this.photoData;
    }

    public void setPhotoData(byte[] bArr) {
        this.photoData = bArr;
    }
}
