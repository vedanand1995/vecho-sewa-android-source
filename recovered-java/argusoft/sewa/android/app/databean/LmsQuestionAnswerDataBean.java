package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LmsQuestionAnswerDataBean {
    private String answer;
    private String correctAnswer;
    private Integer queId;
    private String queTitle;

    public Integer getQueId() {
        return this.queId;
    }

    public void setQueId(Integer num) {
        this.queId = num;
    }

    public String getQueTitle() {
        return this.queTitle;
    }

    public void setQueTitle(String str) {
        this.queTitle = str;
    }

    public String getAnswer() {
        return this.answer;
    }

    public void setAnswer(String str) {
        this.answer = str;
    }

    public String getCorrectAnswer() {
        return this.correctAnswer;
    }

    public void setCorrectAnswer(String str) {
        this.correctAnswer = str;
    }

    public String toString() {
        return "LmsQuestionAnswerDataBean{queId=" + this.queId + ", queTitle='" + this.queTitle + "', answer='" + this.answer + "', correctAnswer='" + this.correctAnswer + "'}";
    }
}
