package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LmsExpandableListDataBean {
    private Integer groupIndex;
    private String groupType;
    private LmsTopicDataBean module;
    private LmsQuestionSetDataBean questionSet;

    public Integer getGroupIndex() {
        return this.groupIndex;
    }

    public void setGroupIndex(Integer num) {
        this.groupIndex = num;
    }

    public LmsQuestionSetDataBean getQuestionSet() {
        return this.questionSet;
    }

    public void setQuestionSet(LmsQuestionSetDataBean lmsQuestionSetDataBean) {
        this.questionSet = lmsQuestionSetDataBean;
    }

    public LmsTopicDataBean getModule() {
        return this.module;
    }

    public void setModule(LmsTopicDataBean lmsTopicDataBean) {
        this.module = lmsTopicDataBean;
    }

    public String getGroupType() {
        return this.groupType;
    }

    public void setGroupType(String str) {
        this.groupType = str;
    }
}
