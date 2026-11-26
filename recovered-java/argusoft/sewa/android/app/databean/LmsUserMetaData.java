package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.List;

/* loaded from: classes.dex */
public class LmsUserMetaData {
    Integer courseId;
    List<LmsUserLessonMetaData> lessonMetaData;
    List<LmsUserQuizMetaData> quizMetaData;

    public LmsUserMetaData() {
    }

    public LmsUserMetaData(LmsUserMetaDataBean lmsUserMetaDataBean) {
        if (lmsUserMetaDataBean == null) {
            return;
        }
        this.courseId = lmsUserMetaDataBean.getCourseId();
        Gson gson = new Gson();
        if (lmsUserMetaDataBean.getQuizMetaData() != null) {
            this.quizMetaData = (List) gson.fromJson(lmsUserMetaDataBean.getQuizMetaData(), new TypeToken<List<LmsUserQuizMetaData>>() { // from class: com.argusoft.sewa.android.app.databean.LmsUserMetaData.1
            }.getType());
        }
        if (lmsUserMetaDataBean.getLessonMetaData() != null) {
            this.lessonMetaData = (List) gson.fromJson(lmsUserMetaDataBean.getLessonMetaData(), new TypeToken<List<LmsUserLessonMetaData>>() { // from class: com.argusoft.sewa.android.app.databean.LmsUserMetaData.2
            }.getType());
        }
    }

    public Integer getCourseId() {
        return this.courseId;
    }

    public void setCourseId(Integer num) {
        this.courseId = num;
    }

    public List<LmsUserQuizMetaData> getQuizMetaData() {
        return this.quizMetaData;
    }

    public void setQuizMetaData(List<LmsUserQuizMetaData> list) {
        this.quizMetaData = list;
    }

    public List<LmsUserLessonMetaData> getLessonMetaData() {
        return this.lessonMetaData;
    }

    public void setLessonMetaData(List<LmsUserLessonMetaData> list) {
        this.lessonMetaData = list;
    }

    public String toString() {
        return "LmsUserMetaData{courseId=" + this.courseId + ", quizMetaData=" + this.quizMetaData + ", lessonMetaData=" + this.lessonMetaData + '}';
    }
}
