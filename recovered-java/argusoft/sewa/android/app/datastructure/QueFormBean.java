package com.argusoft.sewa.android.app.datastructure;

import android.content.Context;
import android.widget.TextView;
import com.argusoft.sewa.android.app.databean.FormulaTagBean;
import com.argusoft.sewa.android.app.databean.OptionTagBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.google.android.material.textview.MaterialTextView;
import java.util.List;

/* loaded from: classes.dex */
public class QueFormBean {
    private Object answer;
    private String binding;
    private String datamap;
    private String event;
    private int extraBinding;
    private List<FormulaTagBean> formulas;
    private boolean hasUnselectedText;
    private String helpvideofield;
    private String hint;
    private int id;
    private boolean ignoreLoop;
    private boolean ignoreNextQueLoop;
    private String instruction;
    private TextView instructionsView;
    private boolean isNextNull;
    private String ishidden;
    private String ismandatory;
    private int length;
    private int loopCounter;
    private String mandatorymessage;
    private String next;
    private List<OptionTagBean> options;
    private String page;
    private String question;
    private Object questionTypeView;
    private Object questionUIFrame;
    private TextView questionView;
    private String relatedpropertyname;
    private TextView subTitleView;
    private String subform;
    private String subtitle;
    private String title;
    private TextView titleView;
    private String type;
    private List<ValidationTagBean> validations;

    public int getExtraBinding() {
        return this.extraBinding;
    }

    public void setExtraBinding(int i) {
        this.extraBinding = i;
    }

    public boolean isIsNextNull() {
        return this.isNextNull;
    }

    public void setIsNextNull(boolean z) {
        this.isNextNull = z;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public int getLoopCounter() {
        return this.loopCounter;
    }

    public void setLoopCounter(int i) {
        this.loopCounter = i;
    }

    public boolean isIgnoreLoop() {
        return this.ignoreLoop;
    }

    public void setIgnoreLoop(boolean z) {
        this.ignoreLoop = z;
    }

    public boolean isIgnoreNextQueLoop() {
        return this.ignoreNextQueLoop;
    }

    public void setIgnoreNextQueLoop(boolean z) {
        this.ignoreNextQueLoop = z;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public TextView getTitleView() {
        return this.titleView;
    }

    public void setTitleView(MaterialTextView materialTextView) {
        this.titleView = materialTextView;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public void setSubtitle(String str) {
        this.subtitle = str;
    }

    public TextView getSubTitleView() {
        return this.subTitleView;
    }

    public void setSubTitleView(TextView textView) {
        this.subTitleView = textView;
    }

    public String getInstruction() {
        return this.instruction;
    }

    public void setInstruction(String str) {
        this.instruction = str;
    }

    public TextView getInstructionsView() {
        return this.instructionsView;
    }

    public void setInstructionsView(TextView textView) {
        this.instructionsView = textView;
    }

    public String getQuestion() {
        return this.question;
    }

    public void setQuestion(String str) {
        this.question = str;
    }

    public TextView getQuestionView() {
        return this.questionView;
    }

    public void setQuestionView(TextView textView) {
        this.questionView = textView;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public Object getQuestionTypeView() {
        return this.questionTypeView;
    }

    public void setQuestionTypeView(Object obj) {
        this.questionTypeView = obj;
    }

    public String getIsmandatory() {
        return this.ismandatory;
    }

    public void setIsmandatory(String str) {
        this.ismandatory = str;
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

    public List<OptionTagBean> getOptions() {
        return this.options;
    }

    public void setOptions(List<OptionTagBean> list) {
        this.options = list;
    }

    public Object getAnswer() {
        return this.answer;
    }

    public void setAnswer(Object obj) {
        this.answer = obj;
    }

    public List<ValidationTagBean> getValidations() {
        return this.validations;
    }

    public void setValidations(List<ValidationTagBean> list) {
        this.validations = list;
    }

    public List<FormulaTagBean> getFormulas() {
        return this.formulas;
    }

    public void setFormulas(List<FormulaTagBean> list) {
        this.formulas = list;
    }

    public String getNext() {
        return this.next;
    }

    public void setNext(String str) {
        this.next = str;
    }

    public String getEvent() {
        return this.event;
    }

    public void setEvent(String str) {
        this.event = str;
    }

    public String getPage() {
        return this.page;
    }

    public void setPage(String str) {
        this.page = str;
    }

    public String getBinding() {
        return this.binding;
    }

    public void setBinding(String str) {
        this.binding = str;
    }

    public String getSubform() {
        return this.subform;
    }

    public void setSubform(String str) {
        this.subform = str;
    }

    public String getIshidden() {
        return this.ishidden;
    }

    public void setIshidden(String str) {
        this.ishidden = str;
    }

    public String getRelatedpropertyname() {
        return this.relatedpropertyname;
    }

    public void setRelatedpropertyname(String str) {
        this.relatedpropertyname = str;
    }

    public Object getQuestionUIFrame() {
        return this.questionUIFrame;
    }

    public void setQuestionUIFrame(Object obj) {
        this.questionUIFrame = obj;
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

    public boolean hasUnselectedText() {
        return this.hasUnselectedText;
    }

    public void setHasUnselectedText(boolean z) {
        this.hasUnselectedText = z;
    }

    public QueFormBean clone(boolean z, boolean z2, Context context) {
        QueFormBean queFormBean = new QueFormBean();
        queFormBean.setLoopCounter(SharedStructureData.loopBakCounter);
        queFormBean.setAnswer(null);
        queFormBean.setBinding(getBinding());
        queFormBean.setDatamap(getDatamap());
        queFormBean.setEvent(getEvent());
        queFormBean.setFormulas(getFormulas());
        queFormBean.setId(getId());
        queFormBean.setInstruction(getInstruction());
        queFormBean.setInstructionsView(null);
        queFormBean.setIshidden(getIshidden());
        queFormBean.setIsmandatory(getIsmandatory());
        queFormBean.setLength(getLength());
        queFormBean.setMandatorymessage(getMandatorymessage());
        queFormBean.setIsNextNull(this.isNextNull);
        if (isIsNextNull()) {
            queFormBean.setNext(null);
        } else {
            queFormBean.setNext(getNext());
        }
        queFormBean.setOptions(getOptions());
        queFormBean.setPage(getPage());
        queFormBean.setQuestion(getQuestion());
        queFormBean.setQuestionTypeView(null);
        queFormBean.setQuestionUIFrame(null);
        queFormBean.setQuestionView(null);
        queFormBean.setRelatedpropertyname(getRelatedpropertyname());
        queFormBean.setSubTitleView(null);
        queFormBean.setSubform(getSubform());
        queFormBean.setSubtitle(getSubtitle());
        queFormBean.setTitle(getTitle());
        queFormBean.setTitleView(null);
        queFormBean.setType(getType());
        queFormBean.setValidations(getValidations());
        queFormBean.setIgnoreLoop(z);
        queFormBean.setIgnoreNextQueLoop(z2);
        queFormBean.setExtraBinding(SharedStructureData.newBindingForMorbidity);
        queFormBean.setHint(getHint());
        queFormBean.setHelpvideofield(getHelpvideofield());
        SharedStructureData.mapIndexQuestion.put(Integer.valueOf(DynamicUtils.getLoopId(queFormBean.getId(), queFormBean.getLoopCounter())), queFormBean);
        FormGenerator.generateQuestion(queFormBean, context);
        return queFormBean;
    }

    public String toString() {
        return "QueFormBean{loopCounter=" + this.loopCounter + ", id=" + this.id + ", ignoreLoop=" + this.ignoreLoop + ", ignoreNextQueLoop=" + this.ignoreNextQueLoop + ", title='" + this.title + "', titleView=" + this.titleView + ", subtitle='" + this.subtitle + "', subTitleView=" + this.subTitleView + ", instruction='" + this.instruction + "', instructionsView=" + this.instructionsView + ", question='" + this.question + "', questionView=" + this.questionView + ", type='" + this.type + "', questionTypeView=" + this.questionTypeView + ", ismandatory='" + this.ismandatory + "', mandatorymessage='" + this.mandatorymessage + "', length=" + this.length + ", datamap='" + this.datamap + "', options=" + this.options + ", answer=" + this.answer + ", validations=" + this.validations + ", formulas=" + this.formulas + ", next='" + this.next + "', event='" + this.event + "', page='" + this.page + "', binding='" + this.binding + "', subform='" + this.subform + "', ishidden='" + this.ishidden + "', relatedpropertyname='" + this.relatedpropertyname + "', questionUIFrame=" + this.questionUIFrame + ", isNextNull=" + this.isNextNull + ", extraBinding=" + this.extraBinding + ", hint='" + this.hint + "', helpvideofield='" + this.helpvideofield + "'}";
    }
}
