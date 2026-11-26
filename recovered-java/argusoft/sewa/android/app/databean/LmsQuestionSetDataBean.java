package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class LmsQuestionSetDataBean {
    private Integer actualId;
    private Integer courseId;
    private Integer minimumMarks;
    private List<LmsQuestionBankDataBean> questionBank;
    private String questionSetName;
    private Integer questionSetType;
    private Integer quizAtSecond;
    private Integer refId;
    private String refType;
    private String status;

    public Integer getActualId() {
        return this.actualId;
    }

    public void setActualId(Integer num) {
        this.actualId = num;
    }

    public Integer getRefId() {
        return this.refId;
    }

    public void setRefId(Integer num) {
        this.refId = num;
    }

    public String getRefType() {
        return this.refType;
    }

    public void setRefType(String str) {
        this.refType = str;
    }

    public String getQuestionSetName() {
        return this.questionSetName;
    }

    public void setQuestionSetName(String str) {
        this.questionSetName = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public Integer getMinimumMarks() {
        return this.minimumMarks;
    }

    public void setMinimumMarks(Integer num) {
        this.minimumMarks = num;
    }

    public Integer getCourseId() {
        return this.courseId;
    }

    public void setCourseId(Integer num) {
        this.courseId = num;
    }

    public Integer getQuestionSetType() {
        return this.questionSetType;
    }

    public void setQuestionSetType(Integer num) {
        this.questionSetType = num;
    }

    public Integer getQuizAtSecond() {
        return this.quizAtSecond;
    }

    public void setQuizAtSecond(Integer num) {
        this.quizAtSecond = num;
    }

    public List<LmsQuestionBankDataBean> getQuestionBank() {
        return this.questionBank;
    }

    public void setQuestionBank(List<LmsQuestionBankDataBean> list) {
        this.questionBank = list;
    }

    public String toString() {
        return "LmsQuestionSetDataBean{actualId=" + this.actualId + ", refId=" + this.refId + ", refType='" + this.refType + "', questionSetName='" + this.questionSetName + "', status='" + this.status + "', minimumMarks=" + this.minimumMarks + ", questionBank=" + this.questionBank + '}';
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof LmsQuestionSetDataBean)) {
            return this.actualId.equals(((LmsQuestionSetDataBean) obj).actualId);
        }
        return false;
    }

    public int hashCode() {
        return super.hashCode();
    }
}
