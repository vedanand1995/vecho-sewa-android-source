package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.util.MyComparatorUtil;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class LmsTopicDataBean {
    private Integer courseId;
    private List<LmsQuestionSetDataBean> questionSet;
    private String topicDescription;
    private Integer topicId;
    private List<LmsLessonDataBean> topicMedias;
    private String topicName;
    private String topicOrder;
    private String topicState;

    public Integer getTopicId() {
        return this.topicId;
    }

    public void setTopicId(Integer num) {
        this.topicId = num;
    }

    public String getTopicName() {
        return this.topicName;
    }

    public void setTopicName(String str) {
        this.topicName = str;
    }

    public String getTopicDescription() {
        return this.topicDescription;
    }

    public void setTopicDescription(String str) {
        this.topicDescription = str;
    }

    public String getTopicOrder() {
        return this.topicOrder;
    }

    public void setTopicOrder(String str) {
        this.topicOrder = str;
    }

    public String getTopicState() {
        return this.topicState;
    }

    public void setTopicState(String str) {
        this.topicState = str;
    }

    public Integer getCourseId() {
        return this.courseId;
    }

    public void setCourseId(Integer num) {
        this.courseId = num;
    }

    public List<LmsLessonDataBean> getTopicMedias() {
        Collections.sort(this.topicMedias, MyComparatorUtil.LMS_TOPIC_MEDIA_ORDER_COMPARATOR);
        return this.topicMedias;
    }

    public void setTopicMedias(List<LmsLessonDataBean> list) {
        this.topicMedias = list;
    }

    public List<LmsQuestionSetDataBean> getQuestionSet() {
        return this.questionSet;
    }

    public void setQuestionSet(List<LmsQuestionSetDataBean> list) {
        this.questionSet = list;
    }

    public String toString() {
        return "LmsTopicDataBean{topicId=" + this.topicId + ", topicName='" + this.topicName + "', topicDescription='" + this.topicDescription + "', topicOrder='" + this.topicOrder + "', topicState='" + this.topicState + "', courseId=" + this.courseId + '}';
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof LmsTopicDataBean)) {
            return this.topicId.equals(((LmsTopicDataBean) obj).topicId);
        }
        return false;
    }

    public int hashCode() {
        return super.hashCode();
    }
}
