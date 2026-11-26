package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class LmsUserLessonMetaData {
    private Long endDate;
    private Boolean isCompleted;
    private Integer lastPausedOn;
    private Integer lessonId;
    private Long mediaId;
    private Integer moduleId;
    private List<LmsUserLessonSessionMetaData> sessions;
    private Long startDate;
    private Integer userFeedback;

    public Integer getModuleId() {
        return this.moduleId;
    }

    public void setModuleId(Integer num) {
        this.moduleId = num;
    }

    public Integer getLessonId() {
        return this.lessonId;
    }

    public void setLessonId(Integer num) {
        this.lessonId = num;
    }

    public Long getMediaId() {
        return this.mediaId;
    }

    public void setMediaId(Long l) {
        this.mediaId = l;
    }

    public Long getStartDate() {
        return this.startDate;
    }

    public void setStartDate(Long l) {
        this.startDate = l;
    }

    public Long getEndDate() {
        return this.endDate;
    }

    public void setEndDate(Long l) {
        this.endDate = l;
    }

    public Boolean getCompleted() {
        return this.isCompleted;
    }

    public void setCompleted(Boolean bool) {
        this.isCompleted = bool;
    }

    public Integer getLastPausedOn() {
        return this.lastPausedOn;
    }

    public void setLastPausedOn(Integer num) {
        this.lastPausedOn = num;
    }

    public Integer getUserFeedback() {
        return this.userFeedback;
    }

    public void setUserFeedback(Integer num) {
        this.userFeedback = num;
    }

    public List<LmsUserLessonSessionMetaData> getSessions() {
        return this.sessions;
    }

    public void setSessions(List<LmsUserLessonSessionMetaData> list) {
        this.sessions = list;
    }

    public String toString() {
        return "LmsUserLessonMetaData{moduleId=" + this.moduleId + ", lessonId=" + this.lessonId + ", mediaId=" + this.mediaId + ", startDate=" + this.startDate + ", endDate=" + this.endDate + ", isCompleted=" + this.isCompleted + ", lastPausedOn=" + this.lastPausedOn + ", userFeedback=" + this.userFeedback + ", sessions=" + this.sessions + '}';
    }
}
