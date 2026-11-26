package com.argusoft.sewa.android.app.databean;

import java.util.Date;

/* loaded from: classes.dex */
public class LmsQuestionSetAnswerDataBean {
    private String answerJson;
    private Date endDate;
    private Boolean isLocked;
    private Boolean isPassed;
    private Integer marksScored;
    private Integer passingMarks;
    private Integer questionSetId;
    private Date startDate;
    private Integer userId;

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer num) {
        this.userId = num;
    }

    public Integer getQuestionSetId() {
        return this.questionSetId;
    }

    public void setQuestionSetId(Integer num) {
        this.questionSetId = num;
    }

    public Integer getMarksScored() {
        return this.marksScored;
    }

    public void setMarksScored(Integer num) {
        this.marksScored = num;
    }

    public Integer getPassingMarks() {
        return this.passingMarks;
    }

    public void setPassingMarks(Integer num) {
        this.passingMarks = num;
    }

    public Boolean getPassed() {
        return this.isPassed;
    }

    public void setPassed(Boolean bool) {
        this.isPassed = bool;
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public void setStartDate(Date date) {
        this.startDate = date;
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public void setEndDate(Date date) {
        this.endDate = date;
    }

    public String getAnswerJson() {
        return this.answerJson;
    }

    public void setAnswerJson(String str) {
        this.answerJson = str;
    }

    public Boolean getIsLocked() {
        return this.isLocked;
    }

    public void setIsLocked(Boolean bool) {
        this.isLocked = bool;
    }
}
