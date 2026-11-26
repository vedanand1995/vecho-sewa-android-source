package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LmsSimulationAudioDataBean {
    private Boolean isAudioWithControls;
    private String mediaExtension;
    private Long mediaId;
    private String mediaName;

    public Boolean getAudioWithControls() {
        return this.isAudioWithControls;
    }

    public void setAudioWithControls(Boolean bool) {
        this.isAudioWithControls = bool;
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
}
