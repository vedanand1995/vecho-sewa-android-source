package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.util.MyComparatorUtil;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class LmsViewedMediaDataBean {
    private Integer courseId;
    private Date endDate;
    private Boolean isCompleted;
    private Boolean isViewed;
    private Integer lastPausedOn;
    private Integer lessonId;
    private Integer moduleId;
    private List<LmsQuestionSetDataBean> questionSet;
    private String sessions;
    private Date startDate;
    private List<LmsTopicDataBean> topics;
    private Integer userFeedback;

    public LmsViewedMediaDataBean(LmsViewedMediaBean lmsViewedMediaBean) {
        this.courseId = lmsViewedMediaBean.getCourseId();
        this.moduleId = lmsViewedMediaBean.getModuleId();
        this.lessonId = lmsViewedMediaBean.getLessonId();
        this.startDate = lmsViewedMediaBean.getStartDate();
        this.endDate = lmsViewedMediaBean.getEndDate();
        this.isCompleted = lmsViewedMediaBean.getCompleted();
        this.isViewed = lmsViewedMediaBean.getViewed();
        this.lastPausedOn = lmsViewedMediaBean.getLastPausedOn();
        this.userFeedback = lmsViewedMediaBean.getUserFeedback();
        this.sessions = lmsViewedMediaBean.getSessions();
        if (lmsViewedMediaBean.getTopics() != null && !lmsViewedMediaBean.getTopics().isEmpty()) {
            List<LmsTopicDataBean> list = (List) new Gson().fromJson(lmsViewedMediaBean.getTopics(), new TypeToken<List<LmsTopicDataBean>>() { // from class: com.argusoft.sewa.android.app.databean.LmsViewedMediaDataBean.1
            }.getType());
            this.topics = list;
            Collections.sort(list, MyComparatorUtil.LMS_TOPIC_ORDER_COMPARATOR);
        }
        if (lmsViewedMediaBean.getQuestionSet() == null || lmsViewedMediaBean.getQuestionSet().isEmpty()) {
            return;
        }
        this.questionSet = (List) new Gson().fromJson(lmsViewedMediaBean.getQuestionSet(), new TypeToken<List<LmsQuestionSetDataBean>>() { // from class: com.argusoft.sewa.android.app.databean.LmsViewedMediaDataBean.2
        }.getType());
    }

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

    public Boolean getViewed() {
        return this.isViewed;
    }

    public void setViewed(Boolean bool) {
        this.isViewed = bool;
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

    public List<LmsTopicDataBean> getTopics() {
        return this.topics;
    }

    public void setTopics(List<LmsTopicDataBean> list) {
        this.topics = list;
    }

    public List<LmsQuestionSetDataBean> getQuestionSet() {
        return this.questionSet;
    }

    public void setQuestionSet(List<LmsQuestionSetDataBean> list) {
        this.questionSet = list;
    }
}
