package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class StoreAnswerBean extends BaseEntity {

    @DatabaseField
    private String answer;

    @DatabaseField
    private String answerEntity;

    @DatabaseField
    private String checksum;

    @DatabaseField
    private String custumType;

    @DatabaseField
    private Long dateOfMobile;

    @DatabaseField
    private Long formFilledUpTime;

    @DatabaseField
    private Long locationId;

    @DatabaseField
    private Long memberId;

    @DatabaseField
    private String morbidityAnswer;

    @DatabaseField
    private Long notificationId;

    @DatabaseField
    private String recordUrl;

    @DatabaseField
    private String relatedInstance;

    @DatabaseField
    private String token;

    @DatabaseField
    private Long userId;

    public StoreAnswerBean() {
        this.custumType = "-1";
        this.morbidityAnswer = "-1";
    }

    public StoreAnswerBean(boolean z) {
        this.custumType = "-1";
        this.morbidityAnswer = "-1";
        if (z) {
            this.custumType = null;
            this.morbidityAnswer = null;
        }
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String getRecordUrl() {
        return this.recordUrl;
    }

    public void setRecordUrl(String str) {
        this.recordUrl = str;
    }

    public String getChecksum() {
        return this.checksum;
    }

    public void setChecksum(String str) {
        this.checksum = str;
    }

    public Long getDateOfMobile() {
        return this.dateOfMobile;
    }

    public void setDateOfMobile(Long l) {
        this.dateOfMobile = l;
    }

    public String getAnswerEntity() {
        return this.answerEntity;
    }

    public void setAnswerEntity(String str) {
        this.answerEntity = str;
    }

    public String getCustumType() {
        return this.custumType;
    }

    public void setCustumType(String str) {
        this.custumType = str;
    }

    public String getRelatedInstance() {
        return this.relatedInstance;
    }

    public void setRelatedInstance(String str) {
        this.relatedInstance = str;
    }

    public Long getFormFilledUpTime() {
        return this.formFilledUpTime;
    }

    public void setFormFilledUpTime(Long l) {
        this.formFilledUpTime = l;
    }

    public Long getNotificationId() {
        return this.notificationId;
    }

    public void setNotificationId(Long l) {
        this.notificationId = l;
    }

    public String getMorbidityAnswer() {
        return this.morbidityAnswer;
    }

    public void setMorbidityAnswer(String str) {
        this.morbidityAnswer = str;
    }

    public String getAnswer() {
        return this.answer;
    }

    public void setAnswer(String str) {
        this.answer = str;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
    }

    public Long getUserId() {
        return this.userId;
    }

    public void setUserId(Long l) {
        this.userId = l;
    }

    public Long getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Long l) {
        this.locationId = l;
    }

    public String toString() {
        return "StoreAnswerBean{checksum=" + this.checksum + ", dateOfMobile=" + this.dateOfMobile + ", answerEntity=" + this.answerEntity + ", custumType=" + this.custumType + ", relatedInstance=" + this.relatedInstance + ", formFilledUpTime=" + this.formFilledUpTime + ", notificationId=" + this.notificationId + ", morbidityAnswer=" + this.morbidityAnswer + ", answer=" + this.answer + ", recordUrl=" + this.recordUrl + ", token=" + this.token + '}';
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }

    public String pack() {
        StringBuilder sb = new StringBuilder(this.checksum);
        sb.append(GlobalTypes.BEAN_SEPARATOR);
        sb.append(this.dateOfMobile);
        sb.append(GlobalTypes.BEAN_SEPARATOR);
        sb.append(this.answerEntity);
        sb.append(GlobalTypes.BEAN_SEPARATOR);
        String str = this.custumType;
        if (str != null) {
            sb.append(str);
        } else {
            sb.append("-1");
        }
        sb.append(GlobalTypes.BEAN_SEPARATOR);
        String str2 = this.relatedInstance;
        if (str2 != null) {
            sb.append(str2);
        } else {
            sb.append("-1");
        }
        sb.append(GlobalTypes.BEAN_SEPARATOR);
        sb.append(this.formFilledUpTime);
        sb.append(GlobalTypes.BEAN_SEPARATOR);
        Long l = this.notificationId;
        if (l != null) {
            sb.append(l);
        } else {
            sb.append(Long.valueOf(Long.parseLong("-1")));
        }
        sb.append(GlobalTypes.BEAN_SEPARATOR);
        String str3 = this.morbidityAnswer;
        if (str3 != null) {
            sb.append(str3);
        } else {
            sb.append("-1");
        }
        sb.append(GlobalTypes.BEAN_SEPARATOR);
        sb.append(this.answer);
        return sb.toString();
    }
}
