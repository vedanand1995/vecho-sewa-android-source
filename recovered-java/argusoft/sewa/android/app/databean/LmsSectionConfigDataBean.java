package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class LmsSectionConfigDataBean {
    List<LmsQuestionConfigDataBean> questions;
    String sectionDescription;
    String sectionTitle;

    public String getSectionTitle() {
        return this.sectionTitle;
    }

    public void setSectionTitle(String str) {
        this.sectionTitle = str;
    }

    public String getSectionDescription() {
        return this.sectionDescription;
    }

    public void setSectionDescription(String str) {
        this.sectionDescription = str;
    }

    public List<LmsQuestionConfigDataBean> getQuestions() {
        return this.questions;
    }

    public void setQuestions(List<LmsQuestionConfigDataBean> list) {
        this.questions = list;
    }
}
