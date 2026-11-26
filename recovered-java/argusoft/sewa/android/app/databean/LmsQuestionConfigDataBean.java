package com.argusoft.sewa.android.app.databean;

import com.google.gson.JsonObject;
import java.util.List;

/* loaded from: classes.dex */
public class LmsQuestionConfigDataBean {
    private JsonObject answerPairs;
    private List<LmsFIBQuestionAnswersDataBean> answers;
    private String correctAnswerDescription;
    private Integer id;
    private String incorrectAnswerDescription;
    private String interactiveFeedbackContent;
    private List<LmsQuestionOptionDataBean> lhs;
    private String mediaExtension;
    private Long mediaId;
    private String mediaName;
    private List<LmsQuestionOptionDataBean> options;
    private String questionTitle;
    private String questionType;
    private List<LmsQuestionOptionDataBean> rhs;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public String getQuestionTitle() {
        return this.questionTitle;
    }

    public void setQuestionTitle(String str) {
        this.questionTitle = str;
    }

    public String getQuestionType() {
        return this.questionType;
    }

    public void setQuestionType(String str) {
        this.questionType = str;
    }

    public List<LmsQuestionOptionDataBean> getOptions() {
        return this.options;
    }

    public void setOptions(List<LmsQuestionOptionDataBean> list) {
        this.options = list;
    }

    public List<LmsQuestionOptionDataBean> getLhs() {
        return this.lhs;
    }

    public void setLhs(List<LmsQuestionOptionDataBean> list) {
        this.lhs = list;
    }

    public List<LmsQuestionOptionDataBean> getRhs() {
        return this.rhs;
    }

    public void setRhs(List<LmsQuestionOptionDataBean> list) {
        this.rhs = list;
    }

    public List<LmsFIBQuestionAnswersDataBean> getAnswers() {
        return this.answers;
    }

    public void setAnswers(List<LmsFIBQuestionAnswersDataBean> list) {
        this.answers = list;
    }

    public JsonObject getAnswerPairs() {
        return this.answerPairs;
    }

    public void setAnswerPairs(JsonObject jsonObject) {
        this.answerPairs = jsonObject;
    }

    public Long getMediaId() {
        return this.mediaId;
    }

    public void setMediaId(Long l) {
        this.mediaId = l;
    }

    public String getMediaName() {
        return this.mediaName;
    }

    public void setMediaName(String str) {
        this.mediaName = str;
    }

    public String getMediaExtension() {
        return this.mediaExtension;
    }

    public void setMediaExtension(String str) {
        this.mediaExtension = str;
    }

    public String getCorrectAnswerDescription() {
        return this.correctAnswerDescription;
    }

    public void setCorrectAnswerDescription(String str) {
        this.correctAnswerDescription = str;
    }

    public String getIncorrectAnswerDescription() {
        return this.incorrectAnswerDescription;
    }

    public void setIncorrectAnswerDescription(String str) {
        this.incorrectAnswerDescription = str;
    }

    public String getInteractiveFeedbackContent() {
        return this.interactiveFeedbackContent;
    }

    public void setInteractiveFeedbackContent(String str) {
        this.interactiveFeedbackContent = str;
    }

    public String toString() {
        return "LmsQuestionConfigDataBean{id=" + this.id + ", questionTitle='" + this.questionTitle + "', questionType='" + this.questionType + "', options=" + this.options + ", answers=" + this.answerPairs + ", mediaId=" + this.mediaId + ", mediaName='" + this.mediaName + "', mediaExtension='" + this.mediaExtension + "'}";
    }
}
