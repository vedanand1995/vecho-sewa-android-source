package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LmsQuestionOptionDataBean {
    private Boolean isCorrect;
    private String mediaExtension;
    private Long mediaId;
    private String mediaName;
    private LmsOptionFeedbackDataBean optionFeedback;
    private String optionTitle;
    private String optionValue;

    public String getOptionTitle() {
        return this.optionTitle;
    }

    public void setOptionTitle(String str) {
        this.optionTitle = str;
    }

    public String getOptionValue() {
        return this.optionValue;
    }

    public void setOptionValue(String str) {
        this.optionValue = str;
    }

    public Boolean getCorrect() {
        return this.isCorrect;
    }

    public void setCorrect(Boolean bool) {
        this.isCorrect = bool;
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

    public LmsOptionFeedbackDataBean getOptionFeedback() {
        return this.optionFeedback;
    }

    public void setOptionFeedback(LmsOptionFeedbackDataBean lmsOptionFeedbackDataBean) {
        this.optionFeedback = lmsOptionFeedbackDataBean;
    }
}
