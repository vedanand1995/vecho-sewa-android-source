package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LmsFIBQuestionAnswersDataBean {
    private Integer blankNumber;
    private String blankValue;

    public Integer getBlankNumber() {
        return this.blankNumber;
    }

    public void setBlankNumber(Integer num) {
        this.blankNumber = num;
    }

    public String getBlankValue() {
        return this.blankValue;
    }

    public void setBlankValue(String str) {
        this.blankValue = str;
    }

    public String toString() {
        return "LmsQuestionAnswersDataBean{blankNumber=" + this.blankNumber + ", blankValue='" + this.blankValue + "'}";
    }
}
