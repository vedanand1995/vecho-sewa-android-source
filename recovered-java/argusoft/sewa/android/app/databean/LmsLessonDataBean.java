package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class LmsLessonDataBean {
    private Integer actualId;
    private String description;
    private Boolean isUserFeedbackRequired;
    private String mediaExtension;
    private String mediaFileName;
    private Long mediaId;
    private Integer mediaOrder;
    private String mediaType;
    private List<LmsQuestionSetDataBean> questionSet;
    private Long size;
    private String title;
    private Integer topicId;
    private String transcriptFileExtension;
    private Long transcriptFileId;
    private String transcriptFileName;
    private String url;

    public Integer getActualId() {
        return this.actualId;
    }

    public void setActualId(Integer num) {
        this.actualId = num;
    }

    public Integer getTopicId() {
        return this.topicId;
    }

    public void setTopicId(Integer num) {
        this.topicId = num;
    }

    public Long getMediaId() {
        return this.mediaId;
    }

    public void setMediaId(Long l) {
        this.mediaId = l;
    }

    public String getMediaFileName() {
        return this.mediaFileName;
    }

    public void setMediaFileName(String str) {
        this.mediaFileName = str;
    }

    public String getMediaExtension() {
        return this.mediaExtension;
    }

    public void setMediaExtension(String str) {
        this.mediaExtension = str;
    }

    public String getTranscriptFileExtension() {
        return this.transcriptFileExtension;
    }

    public void setTranscriptFileExtension(String str) {
        this.transcriptFileExtension = str;
    }

    public Integer getMediaOrder() {
        return this.mediaOrder;
    }

    public void setMediaOrder(Integer num) {
        this.mediaOrder = num;
    }

    public String getMediaType() {
        return this.mediaType;
    }

    public void setMediaType(String str) {
        this.mediaType = str;
    }

    public Long getTranscriptFileId() {
        return this.transcriptFileId;
    }

    public void setTranscriptFileId(Long l) {
        this.transcriptFileId = l;
    }

    public String getTranscriptFileName() {
        return this.transcriptFileName;
    }

    public void setTranscriptFileName(String str) {
        this.transcriptFileName = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public Boolean getUserFeedbackRequired() {
        return this.isUserFeedbackRequired;
    }

    public void setUserFeedbackRequired(Boolean bool) {
        this.isUserFeedbackRequired = bool;
    }

    public List<LmsQuestionSetDataBean> getQuestionSet() {
        return this.questionSet;
    }

    public void setQuestionSet(List<LmsQuestionSetDataBean> list) {
        this.questionSet = list;
    }

    public Long getSize() {
        return this.size;
    }

    public void setSize(Long l) {
        this.size = l;
    }

    public String toString() {
        return "LmsLessonDataBean{actualId=" + this.actualId + ", topicId=" + this.topicId + ", mediaId=" + this.mediaId + ", mediaFileName='" + this.mediaFileName + "', mediaExtension='" + this.mediaExtension + "', mediaOrder=" + this.mediaOrder + ", mediaType='" + this.mediaType + "', transcriptFileId=" + this.transcriptFileId + ", transcriptFileName='" + this.transcriptFileName + "', transcriptFileExtension='" + this.transcriptFileExtension + "', url='" + this.url + "', title='" + this.title + "', description='" + this.description + "', isUserFeedbackRequired=" + this.isUserFeedbackRequired + ", questionSet=" + this.questionSet + '}';
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof LmsLessonDataBean)) {
            return this.actualId.equals(((LmsLessonDataBean) obj).actualId);
        }
        return false;
    }

    public int hashCode() {
        return super.hashCode();
    }
}
