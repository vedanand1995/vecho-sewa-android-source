package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class LmsViewedMediaBean extends BaseEntity {

    @DatabaseField
    private Integer courseId;

    @DatabaseField
    private Date endDate;

    @DatabaseField
    private Boolean isCompleted;

    @DatabaseField
    private Boolean isViewed;

    @DatabaseField
    private Integer lastPausedOn;

    @DatabaseField
    private Integer lessonId;

    @DatabaseField
    private Integer moduleId;

    @DatabaseField
    private String questionSet;

    @DatabaseField
    private String sessions;

    @DatabaseField
    private Date startDate;

    @DatabaseField
    private String topics;

    @DatabaseField
    private Integer userFeedback;

    public Integer getCourseId() {
        return this.courseId;
    }

    public void setCourseId(Integer num) {
        this.courseId = num;
    }

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

    public String getSessions() {
        return this.sessions;
    }

    public void setSessions(String str) {
        this.sessions = str;
    }

    public Boolean getViewed() {
        return this.isViewed;
    }

    public void setViewed(Boolean bool) {
        this.isViewed = bool;
    }

    public String getTopics() {
        return this.topics;
    }

    public void setTopics(String str) {
        this.topics = str;
    }

    public String getQuestionSet() {
        return this.questionSet;
    }

    public void setQuestionSet(String str) {
        this.questionSet = str;
    }

    public String toString() {
        return "LmsViewedMediaBean{courseId=" + this.courseId + ", moduleId=" + this.moduleId + ", lessonId=" + this.lessonId + ", startDate=" + this.startDate + ", endDate=" + this.endDate + ", isCompleted=" + this.isCompleted + ", isViewed=" + this.isViewed + ", lastPausedOn=" + this.lastPausedOn + ", userFeedback=" + this.userFeedback + ", sessions='" + this.sessions + "'}";
    }
}
