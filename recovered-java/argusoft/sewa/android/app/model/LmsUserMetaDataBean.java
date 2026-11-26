package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.databean.LmsUserMetaData;
import com.google.gson.Gson;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable
/* loaded from: classes.dex */
public class LmsUserMetaDataBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Integer courseId;

    @DatabaseField
    private String lessonMetaData;

    @DatabaseField
    private String quizMetaData;

    public LmsUserMetaDataBean() {
    }

    public LmsUserMetaDataBean(LmsUserMetaData lmsUserMetaData) {
        Gson gson = new Gson();
        this.courseId = lmsUserMetaData.getCourseId();
        this.quizMetaData = gson.toJson(lmsUserMetaData.getQuizMetaData());
        this.lessonMetaData = gson.toJson(lmsUserMetaData.getLessonMetaData());
    }

    public Integer getCourseId() {
        return this.courseId;
    }

    public void setCourseId(Integer num) {
        this.courseId = num;
    }

    public String getQuizMetaData() {
        return this.quizMetaData;
    }

    public void setQuizMetaData(String str) {
        this.quizMetaData = str;
    }

    public String getLessonMetaData() {
        return this.lessonMetaData;
    }

    public void setLessonMetaData(String str) {
        this.lessonMetaData = str;
    }

    public String toString() {
        return "LmsUserMetaDataBean{courseId=" + this.courseId + ", quizMetaData='" + this.quizMetaData + "', lessonMetaData='" + this.lessonMetaData + "'}";
    }
}
