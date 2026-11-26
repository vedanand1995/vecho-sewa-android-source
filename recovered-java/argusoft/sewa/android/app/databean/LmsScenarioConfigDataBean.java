package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class LmsScenarioConfigDataBean {
    LmsSimulationAudioDataBean audio;
    private String mediaExtension;
    private Long mediaId;
    private String mediaName;
    private String mediaType;
    String scenarioDescription;
    List<LmsQuestionConfigDataBean> scenarioQuestions;
    String scenarioTitle;

    public String getScenarioTitle() {
        return this.scenarioTitle;
    }

    public void setScenarioTitle(String str) {
        this.scenarioTitle = str;
    }

    public String getScenarioDescription() {
        return this.scenarioDescription;
    }

    public void setScenarioDescription(String str) {
        this.scenarioDescription = str;
    }

    public List<LmsQuestionConfigDataBean> getScenarioQuestions() {
        return this.scenarioQuestions;
    }

    public void setScenarioQuestions(List<LmsQuestionConfigDataBean> list) {
        this.scenarioQuestions = list;
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

    public String getMediaType() {
        return this.mediaType;
    }

    public void setMediaType(String str) {
        this.mediaType = str;
    }

    public LmsSimulationAudioDataBean getAudio() {
        return this.audio;
    }

    public void setAudio(LmsSimulationAudioDataBean lmsSimulationAudioDataBean) {
        this.audio = lmsSimulationAudioDataBean;
    }
}
