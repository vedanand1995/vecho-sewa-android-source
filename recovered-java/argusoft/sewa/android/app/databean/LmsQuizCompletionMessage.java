package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LmsQuizCompletionMessage {
    private String mediaExtension;
    private Long mediaId;
    private String mediaName;
    private String message;

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public Long getMediaId() {
        return this.mediaId;
    }

    public void setMediaId(Long l) {
        this.mediaId = l;
    }

    public String getMediaExtension() {
        return this.mediaExtension;
    }

    public void setMediaExtension(String str) {
        this.mediaExtension = str;
    }

    public String getMediaName() {
        return this.mediaName;
    }

    public void setMediaName(String str) {
        this.mediaName = str;
    }
}
