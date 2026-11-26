package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LmsQuestionBankDataBean {
    private Integer actualId;
    private String configJson;
    private Integer questionSetId;

    public Integer getActualId() {
        return this.actualId;
    }

    public void setActualId(Integer num) {
        this.actualId = num;
    }

    public Integer getQuestionSetId() {
        return this.questionSetId;
    }

    public void setQuestionSetId(Integer num) {
        this.questionSetId = num;
    }

    public String getConfigJson() {
        return this.configJson;
    }

    public void setConfigJson(String str) {
        this.configJson = str;
    }

    public String toString() {
        return "LmsQuestionBankDataBean{actualId=" + this.actualId + ", questionSetId=" + this.questionSetId + ", configJson='" + this.configJson + "'}";
    }
}
