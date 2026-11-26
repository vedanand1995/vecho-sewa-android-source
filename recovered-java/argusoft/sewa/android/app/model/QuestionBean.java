package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class QuestionBean extends BaseEntity {

    @DatabaseField
    private String binding;

    @DatabaseField
    private String datamap;

    @DatabaseField
    private String entity;

    @DatabaseField
    private String event;

    @DatabaseField
    private String formulass;

    @DatabaseField
    private String helpvideofield;

    @DatabaseField
    private String hint;

    @DatabaseField
    private String instruction;

    @DatabaseField
    private Boolean ishidden;

    @DatabaseField
    private Boolean ismandatory;

    @DatabaseField
    private int length;

    @DatabaseField
    private String mandatorymessage;

    @DatabaseField
    private int next;

    @DatabaseField
    private int page;

    @DatabaseField
    private int queId;

    @DatabaseField
    private String question;

    @DatabaseField
    private String relatedpropertyname;

    @DatabaseField
    private String subform;

    @DatabaseField
    private String subtitle;

    @DatabaseField
    private String title;

    @DatabaseField
    private String type;

    @DatabaseField
    private String validationmessage;

    @DatabaseField
    private String validationmethod;

    public int getQueId() {
        return this.queId;
    }

    public void setQueId(int i) {
        this.queId = i;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public void setSubtitle(String str) {
        this.subtitle = str;
    }

    public String getInstruction() {
        return this.instruction;
    }

    public void setInstruction(String str) {
        this.instruction = str;
    }

    public String getQuestion() {
        return this.question;
    }

    public void setQuestion(String str) {
        this.question = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public Boolean getIsmandatory() {
        return this.ismandatory;
    }

    public void setIsmandatory(Boolean bool) {
        this.ismandatory = bool;
    }

    public String getMandatorymessage() {
        return this.mandatorymessage;
    }

    public void setMandatorymessage(String str) {
        this.mandatorymessage = str;
    }

    public int getLength() {
        return this.length;
    }

    public void setLength(int i) {
        this.length = i;
    }

    public String getDatamap() {
        return this.datamap;
    }

    public void setDatamap(String str) {
        this.datamap = str;
    }

    public int getNext() {
        return this.next;
    }

    public void setNext(int i) {
        this.next = i;
    }

    public String getEvent() {
        return this.event;
    }

    public void setEvent(String str) {
        this.event = str;
    }

    public int getPage() {
        return this.page;
    }

    public void setPage(int i) {
        this.page = i;
    }

    public String getSubform() {
        return this.subform;
    }

    public void setSubform(String str) {
        this.subform = str;
    }

    public String getBinding() {
        return this.binding;
    }

    public void setBinding(String str) {
        this.binding = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public Boolean getIshidden() {
        return this.ishidden;
    }

    public void setIshidden(Boolean bool) {
        this.ishidden = bool;
    }

    public String getRelatedpropertyname() {
        return this.relatedpropertyname;
    }

    public void setRelatedpropertyname(String str) {
        this.relatedpropertyname = str;
    }

    public String getValidationmethod() {
        return this.validationmethod;
    }

    public void setValidationmethod(String str) {
        this.validationmethod = str;
    }

    public String getValidationmessage() {
        return this.validationmessage;
    }

    public void setValidationmessage(String str) {
        this.validationmessage = str;
    }

    public String getFormulass() {
        return this.formulass;
    }

    public void setFormulass(String str) {
        this.formulass = str;
    }

    public String getEntity() {
        return this.entity;
    }

    public void setEntity(String str) {
        this.entity = str;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public String getHint() {
        return this.hint;
    }

    public void setHint(String str) {
        this.hint = str;
    }

    public String getHelpvideofield() {
        return this.helpvideofield;
    }

    public void setHelpvideofield(String str) {
        this.helpvideofield = str;
    }

    public String toString() {
        return "QuestionBean{queId=" + this.queId + ", subtitle=" + this.subtitle + ", instruction=" + this.instruction + ", question=" + this.question + ", type=" + this.type + ", ismandatory=" + this.ismandatory + ", mandatorymessage=" + this.mandatorymessage + ", length=" + this.length + ", datamap=" + this.datamap + ", next=" + this.next + ", event=" + this.event + ", page=" + this.page + ", subform=" + this.subform + ", binding=" + this.binding + ", title=" + this.title + ", ishidden=" + this.ishidden + ", relatedpropertyname=" + this.relatedpropertyname + ", validationmethod=" + this.validationmethod + ", validationmessage=" + this.validationmessage + ", formulass=" + this.formulass + ", entity=" + this.entity + '}';
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }
}
