package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.google.gson.Gson;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable
/* loaded from: classes.dex */
public class LmsCourseBean extends BaseEntity implements Serializable {

    @DatabaseField
    private String courseDescription;

    @DatabaseField
    private Integer courseId;

    @DatabaseField
    private String courseImage;

    @DatabaseField
    private String courseName;

    @DatabaseField
    private String courseState;

    @DatabaseField
    private String courseType;

    @DatabaseField
    private Boolean isAllowedToSkipLessons;

    @DatabaseField
    private Boolean isArchived;

    @DatabaseField
    private Boolean isMediaDownloaded;

    @DatabaseField
    private String questionSet;

    @DatabaseField
    private String testConfigJson;

    @DatabaseField
    private String topics;

    public LmsCourseBean() {
    }

    public LmsCourseBean(LmsCourseDataBean lmsCourseDataBean) {
        this.courseId = lmsCourseDataBean.getCourseId();
        this.courseName = lmsCourseDataBean.getCourseName();
        this.courseDescription = lmsCourseDataBean.getCourseDescription();
        this.courseState = lmsCourseDataBean.getCourseState();
        this.courseType = lmsCourseDataBean.getCourseType();
        this.isAllowedToSkipLessons = lmsCourseDataBean.getAllowedToSkipLessons();
        if (lmsCourseDataBean.getTopics() != null && !lmsCourseDataBean.getTopics().isEmpty()) {
            this.topics = new Gson().toJson(lmsCourseDataBean.getTopics());
        }
        if (lmsCourseDataBean.getQuestionSet() != null && !lmsCourseDataBean.getQuestionSet().isEmpty()) {
            this.questionSet = new Gson().toJson(lmsCourseDataBean.getQuestionSet());
        }
        if (lmsCourseDataBean.getTestConfigJson() != null && !lmsCourseDataBean.getTestConfigJson().isEmpty()) {
            this.testConfigJson = new Gson().toJson(lmsCourseDataBean.getTestConfigJson());
        }
        if (lmsCourseDataBean.getCourseImage() != null) {
            this.courseImage = new Gson().toJson(lmsCourseDataBean.getCourseImage());
        }
        if (lmsCourseDataBean.getArchived() != null) {
            this.isArchived = lmsCourseDataBean.getArchived();
        }
        if (lmsCourseDataBean.getMediaDownloaded() != null) {
            this.isMediaDownloaded = lmsCourseDataBean.getMediaDownloaded();
        }
    }

    public Integer getCourseId() {
        return this.courseId;
    }

    public void setCourseId(Integer num) {
        this.courseId = num;
    }

    public String getCourseName() {
        return this.courseName;
    }

    public void setCourseName(String str) {
        this.courseName = str;
    }

    public String getCourseDescription() {
        return this.courseDescription;
    }

    public void setCourseDescription(String str) {
        this.courseDescription = str;
    }

    public String getCourseState() {
        return this.courseState;
    }

    public void setCourseState(String str) {
        this.courseState = str;
    }

    public String getCourseType() {
        return this.courseType;
    }

    public void setCourseType(String str) {
        this.courseType = str;
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

    public String getTestConfigJson() {
        return this.testConfigJson;
    }

    public void setTestConfigJson(String str) {
        this.testConfigJson = str;
    }

    public String getCourseImage() {
        return this.courseImage;
    }

    public void setCourseImage(String str) {
        this.courseImage = str;
    }

    public Boolean getAllowedToSkipLessons() {
        return this.isAllowedToSkipLessons;
    }

    public void setAllowedToSkipLessons(Boolean bool) {
        this.isAllowedToSkipLessons = bool;
    }

    public Boolean getArchived() {
        return this.isArchived;
    }

    public void setArchived(Boolean bool) {
        this.isArchived = bool;
    }

    public Boolean getMediaDownloaded() {
        return this.isMediaDownloaded;
    }

    public void setMediaDownloaded(Boolean bool) {
        this.isMediaDownloaded = bool;
    }
}
