package com.argusoft.sewa.android.app.lms;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public class LmsCourseScreenDataBean {
    private int completionStatus;
    private String courseDesc;
    private Integer courseId;
    private Long courseSize;
    private String courseTitle;
    private Bitmap image;
    private Boolean isMediaDownloaded;
    private int questionSetSize;
    private int topicSize;

    public LmsCourseScreenDataBean(Bitmap bitmap, Integer num, String str, String str2, int i, int i2, int i3, Boolean bool, Long l) {
        this.image = bitmap;
        this.courseId = num;
        this.courseTitle = str;
        this.courseDesc = str2;
        this.completionStatus = i;
        this.questionSetSize = i2;
        this.topicSize = i3;
        this.isMediaDownloaded = bool;
        this.courseSize = l;
    }

    public Bitmap getImage() {
        return this.image;
    }

    public void setImage(Bitmap bitmap) {
        this.image = bitmap;
    }

    public Integer getCourseId() {
        return this.courseId;
    }

    public void setCourseId(Integer num) {
        this.courseId = num;
    }

    public String getCourseTitle() {
        return this.courseTitle;
    }

    public void setCourseTitle(String str) {
        this.courseTitle = str;
    }

    public String getCourseDesc() {
        return this.courseDesc;
    }

    public void setCourseDesc(String str) {
        this.courseDesc = str;
    }

    public int getCompletionStatus() {
        return this.completionStatus;
    }

    public void setCompletionStatus(int i) {
        this.completionStatus = i;
    }

    public int getQuestionSetSize() {
        return this.questionSetSize;
    }

    public void setQuestionSetSize(int i) {
        this.questionSetSize = i;
    }

    public int getTopicSize() {
        return this.topicSize;
    }

    public void setTopicSize(int i) {
        this.topicSize = i;
    }

    public Boolean isMediaDownloaded() {
        return this.isMediaDownloaded;
    }

    public void setMediaDownloaded(Boolean bool) {
        this.isMediaDownloaded = bool;
    }

    public Long getCourseSize() {
        return this.courseSize;
    }

    public void setCourseSize(Long l) {
        this.courseSize = l;
    }
}
