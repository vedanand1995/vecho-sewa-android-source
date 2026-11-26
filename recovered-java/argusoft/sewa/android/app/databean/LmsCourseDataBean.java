package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.LmsCourseBean;
import com.argusoft.sewa.android.app.util.MyComparatorUtil;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LmsCourseDataBean {
    private Integer completionStatus;
    private String courseDescription;
    private Integer courseId;
    private LmsCourseImageDataBean courseImage;
    private String courseName;
    private String courseState;
    private String courseType;
    private Boolean isAllowedToSkipLessons;
    private Boolean isArchived;
    private Boolean isMediaDownloaded;
    List<LmsExpandableListDataBean> listDataBeans;
    private List<LmsQuestionSetDataBean> questionSet;
    private Map<Integer, LmsQuizConfigDataBean> testConfigJson;
    private List<LmsTopicDataBean> topics;

    public LmsCourseDataBean() {
    }

    public LmsCourseDataBean(LmsCourseBean lmsCourseBean) {
        this.courseId = lmsCourseBean.getCourseId();
        this.courseName = lmsCourseBean.getCourseName();
        this.courseDescription = lmsCourseBean.getCourseDescription();
        this.courseState = lmsCourseBean.getCourseState();
        this.courseType = lmsCourseBean.getCourseType();
        this.isAllowedToSkipLessons = lmsCourseBean.getAllowedToSkipLessons();
        if (lmsCourseBean.getArchived() != null) {
            this.isArchived = lmsCourseBean.getArchived();
        }
        if (lmsCourseBean.getMediaDownloaded() != null) {
            this.isMediaDownloaded = lmsCourseBean.getMediaDownloaded();
        }
        if (lmsCourseBean.getTopics() != null && !lmsCourseBean.getTopics().isEmpty()) {
            List<LmsTopicDataBean> list = (List) new Gson().fromJson(lmsCourseBean.getTopics(), new TypeToken<List<LmsTopicDataBean>>() { // from class: com.argusoft.sewa.android.app.databean.LmsCourseDataBean.1
            }.getType());
            this.topics = list;
            Collections.sort(list, MyComparatorUtil.LMS_TOPIC_ORDER_COMPARATOR);
        }
        if (lmsCourseBean.getQuestionSet() != null && !lmsCourseBean.getQuestionSet().isEmpty()) {
            this.questionSet = (List) new Gson().fromJson(lmsCourseBean.getQuestionSet(), new TypeToken<List<LmsQuestionSetDataBean>>() { // from class: com.argusoft.sewa.android.app.databean.LmsCourseDataBean.2
            }.getType());
        }
        if (lmsCourseBean.getTestConfigJson() != null && !lmsCourseBean.getTestConfigJson().isEmpty()) {
            this.testConfigJson = (Map) new Gson().fromJson(lmsCourseBean.getTestConfigJson(), new TypeToken<Map<Integer, LmsQuizConfigDataBean>>() { // from class: com.argusoft.sewa.android.app.databean.LmsCourseDataBean.3
            }.getType());
        }
        if (lmsCourseBean.getCourseImage() != null) {
            this.courseImage = (LmsCourseImageDataBean) new Gson().fromJson(lmsCourseBean.getCourseImage(), LmsCourseImageDataBean.class);
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

    public Map<Integer, LmsQuizConfigDataBean> getTestConfigJson() {
        return this.testConfigJson;
    }

    public void setTestConfigJson(Map<Integer, LmsQuizConfigDataBean> map) {
        this.testConfigJson = map;
    }

    public LmsCourseImageDataBean getCourseImage() {
        return this.courseImage;
    }

    public void setCourseImage(LmsCourseImageDataBean lmsCourseImageDataBean) {
        this.courseImage = lmsCourseImageDataBean;
    }

    public Integer getCompletionStatus() {
        return this.completionStatus;
    }

    public void setCompletionStatus(Integer num) {
        this.completionStatus = num;
    }

    public Boolean getAllowedToSkipLessons() {
        return this.isAllowedToSkipLessons;
    }

    public void setAllowedToSkipLessons(Boolean bool) {
        this.isAllowedToSkipLessons = bool;
    }

    public List<LmsExpandableListDataBean> getListDataBeans() {
        return this.listDataBeans;
    }

    public void setListDataBeans(List<LmsExpandableListDataBean> list) {
        this.listDataBeans = list;
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
