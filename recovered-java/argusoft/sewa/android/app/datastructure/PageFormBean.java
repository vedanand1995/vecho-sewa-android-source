package com.argusoft.sewa.android.app.datastructure;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import com.argusoft.sewa.android.app.component.ImmunisationSelectionComponent;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.MyVaccination;
import com.argusoft.sewa.android.app.databean.OptionTagBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class PageFormBean implements Cloneable {
    public static Context context;
    private int firstQuestionId;
    private int lastQuestionId;
    private int pageNo;
    private int loopCounter = SharedStructureData.loopBakCounter;
    private List<Integer> listOfQuestion = null;
    private List<Integer> listOfShowQuestion = null;
    private List<Integer> listOfNext = null;
    private LinearLayout pageLayout = null;
    private PageFormBean nextPage = null;
    private PageFormBean prePage = null;
    private String validationMessage = null;
    private boolean isFirst = true;
    private String event = null;
    private MyVaccination myVaccination = null;
    private ImmunisationSelectionComponent immunisationSelectionComponent = null;
    private boolean isVaccinations = false;

    public PageFormBean(int i) {
        this.pageNo = i;
    }

    public MyVaccination getMyVaccination() {
        return this.myVaccination;
    }

    public void setMyVaccination(MyVaccination myVaccination) {
        this.myVaccination = myVaccination;
    }

    public boolean isIsVaccinations() {
        return this.isVaccinations;
    }

    public void setIsVaccinations(boolean z) {
        this.isVaccinations = z;
    }

    public ImmunisationSelectionComponent getImmunisationSelectionComponent() {
        return this.immunisationSelectionComponent;
    }

    public void setImmunisationSelectionComponent(ImmunisationSelectionComponent immunisationSelectionComponent) {
        this.immunisationSelectionComponent = immunisationSelectionComponent;
    }

    public String getValidationMessage() {
        return this.validationMessage;
    }

    public void setValidationMessage(String str) {
        this.validationMessage = str;
    }

    public int getFirstQuestionId() {
        return this.firstQuestionId;
    }

    public void setFirstQuestionId(int i) {
        this.firstQuestionId = i;
    }

    public boolean addQuestion(QueFormBean queFormBean) {
        if (queFormBean.getEvent() != null) {
            if (queFormBean.getEvent().trim().equalsIgnoreCase("Okay")) {
                this.event = "Okay";
            } else if (queFormBean.getEvent().trim().equalsIgnoreCase(GlobalTypes.EVENT_SUBMIT)) {
                this.event = GlobalTypes.EVENT_SUBMIT;
            } else if (queFormBean.getEvent().trim().equalsIgnoreCase("Cancel")) {
                this.event = "Cancel";
            } else if (queFormBean.getEvent().trim().equalsIgnoreCase(GlobalTypes.EVENT_SAVE_FORM)) {
                this.event = GlobalTypes.EVENT_SAVE_FORM;
            } else {
                this.event = "Next";
            }
        }
        List<Integer> nextQuestionIdList = DynamicUtils.getNextQuestionIdList(queFormBean);
        if (!nextQuestionIdList.isEmpty()) {
            if (this.listOfNext == null) {
                this.listOfNext = new ArrayList();
            }
            this.listOfNext.addAll(nextQuestionIdList);
        }
        int loopId = DynamicUtils.getLoopId(queFormBean.getId(), queFormBean.getLoopCounter());
        if (this.listOfQuestion == null) {
            this.listOfQuestion = new ArrayList();
        }
        return this.listOfQuestion.add(Integer.valueOf(loopId));
    }

    public int getPageNo() {
        return DynamicUtils.getLoopId(this.pageNo, this.loopCounter);
    }

    public void setPageNo(int i) {
        this.pageNo = i;
    }

    public int getLoopCounter() {
        return this.loopCounter;
    }

    public void setLoopCounter(int i) {
        this.loopCounter = i;
    }

    public int getLastQuestionId() {
        return this.lastQuestionId;
    }

    public void setLastQuestionId(int i) {
        this.lastQuestionId = i;
    }

    public boolean isIsFirst() {
        return this.isFirst;
    }

    public void setIsFirst(boolean z) {
        this.isFirst = z;
    }

    public String getEvent() {
        return this.event;
    }

    public void setEvent(String str) {
        this.event = str;
    }

    public List<Integer> getListOfQuestion() {
        return this.listOfQuestion;
    }

    public void setListOfQuestion(List<Integer> list) {
        this.listOfQuestion = list;
    }

    public List<Integer> getListOfShowQuestion() {
        return this.listOfShowQuestion;
    }

    public void setListOfShowQuestion(List<Integer> list) {
        this.listOfShowQuestion = list;
    }

    public void setPageLayout(LinearLayout linearLayout) {
        this.pageLayout = linearLayout;
    }

    public LinearLayout getPageLayout(boolean z, int i) {
        int loopId;
        List<Integer> list;
        if (this.pageLayout == null || (list = this.listOfShowQuestion) == null || list.isEmpty()) {
            Log.i("PageFormBean", "first question is : " + this.firstQuestionId);
            if (z || context == null) {
                return null;
            }
            this.pageLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -1));
            List<Integer> list2 = this.listOfQuestion;
            if (list2 != null && list2.size() > 1) {
                int iIntValue = this.firstQuestionId;
                if (iIntValue <= 0) {
                    Iterator<Integer> it = this.listOfQuestion.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            iIntValue = 0;
                            break;
                        }
                        Integer next = it.next();
                        List<Integer> list3 = this.listOfNext;
                        if (list3 != null && !list3.contains(next)) {
                            iIntValue = next.intValue();
                            this.firstQuestionId = iIntValue;
                            break;
                        }
                    }
                }
                Log.i("PageFormBean", "first question is : " + this.firstQuestionId);
                LinearLayout linearLayout = null;
                boolean z2 = false;
                int i2 = 0;
                loopId = 0;
                while (true) {
                    QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(iIntValue));
                    if (queFormBean == null) {
                        break;
                    }
                    if (queFormBean.getIshidden().equalsIgnoreCase("F")) {
                        if (this.listOfShowQuestion == null) {
                            this.listOfShowQuestion = new ArrayList();
                        }
                        if (z2) {
                            View view = (View) queFormBean.getQuestionUIFrame();
                            view.setVisibility(8);
                            linearLayout.addView(view);
                            if (i2 == 1) {
                                i2++;
                                linearLayout.setVisibility(8);
                                this.pageLayout.addView(linearLayout);
                            }
                        } else {
                            if (queFormBean.getQuestionUIFrame() != null) {
                                this.pageLayout.addView((View) queFormBean.getQuestionUIFrame());
                            }
                            if (queFormBean.getType().equals(GlobalTypes.MEMBER_DETAILS_COMPONENT)) {
                                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                                i *= -1;
                                layoutParams.setMargins(i, i, i, 0);
                                this.pageLayout.setLayoutParams(layoutParams);
                            }
                        }
                        this.listOfShowQuestion.add(Integer.valueOf(iIntValue));
                    } else {
                        DynamicUtils.applyFormulaForHiddenQuestion(queFormBean, false);
                    }
                    loopId = DynamicUtils.getNext(queFormBean);
                    if (loopId == -1) {
                        List<Integer> nextQuestionIdList = DynamicUtils.getNextQuestionIdList(queFormBean);
                        if (i2 == 0) {
                            i2++;
                            linearLayout = MyStaticComponents.getLinearLayout(context, DynamicUtils.HIDDEN_LAYOUT_ID, 1, new LinearLayout.LayoutParams(-1, -2));
                        }
                        loopId = hideQuestions(nextQuestionIdList, linearLayout);
                        z2 = true;
                    }
                    if (loopId == iIntValue || !this.listOfQuestion.contains(Integer.valueOf(loopId))) {
                        break;
                    }
                    iIntValue = loopId;
                }
                if (i2 == 1) {
                    linearLayout.setVisibility(8);
                    this.pageLayout.addView(linearLayout);
                }
            } else {
                List<Integer> list4 = this.listOfQuestion;
                if (list4 == null || list4.size() != 1) {
                    loopId = 0;
                } else {
                    Integer num = this.listOfQuestion.get(0);
                    this.firstQuestionId = num.intValue();
                    QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(num);
                    if (queFormBean2 != null && queFormBean2.getIshidden().equalsIgnoreCase("F")) {
                        if (queFormBean2.getType().equals(GlobalTypes.MEMBER_DETAILS_COMPONENT)) {
                            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
                            int i3 = i * (-1);
                            layoutParams2.setMargins(i3, i3, i3, 0);
                            this.pageLayout.setLayoutParams(layoutParams2);
                        }
                        this.pageLayout.addView((View) queFormBean2.getQuestionUIFrame());
                        ArrayList arrayList = new ArrayList();
                        this.listOfShowQuestion = arrayList;
                        arrayList.add(num);
                    } else if (queFormBean2 != null && queFormBean2.getNext() != null && queFormBean2.getNext().trim().length() > 0) {
                        DynamicUtils.applyFormulaForHiddenQuestion(queFormBean2, false);
                        loopId = DynamicUtils.getLoopId(Integer.parseInt(queFormBean2.getNext()), queFormBean2.getLoopCounter());
                    }
                    loopId = 0;
                }
            }
            this.isFirst = false;
            if (this.listOfShowQuestion == null) {
                FormEngine.setNext(loopId);
                return null;
            }
        }
        return this.pageLayout;
    }

    public int getNextPageId() {
        QueFormBean queFormBean;
        List<Integer> list = this.listOfShowQuestion;
        if (list == null || list.isEmpty() || (queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(this.lastQuestionId))) == null || queFormBean.getNext() == null) {
            return -1;
        }
        return getNextLoopPageId(queFormBean);
    }

    public PageFormBean getNextPage() {
        return this.nextPage;
    }

    public void setNextPage(PageFormBean pageFormBean) {
        this.nextPage = pageFormBean;
        pageFormBean.setPrePage(this);
    }

    public PageFormBean getPrePage() {
        return this.prePage;
    }

    public void setPrePage(PageFormBean pageFormBean) {
        this.prePage = pageFormBean;
    }

    public String toString() {
        return "PageFormBean{pageNo=" + this.pageNo + ", loopCounter=" + this.loopCounter + ", listOfQuestion=" + this.listOfQuestion + "\nlistOfShowQuestion=" + this.listOfShowQuestion + "\nlistOfNext=" + this.listOfNext + "}\n";
    }

    private int getNextLoopPageId(QueFormBean queFormBean) throws NumberFormatException {
        if (queFormBean.getEvent() != null && queFormBean.getEvent().trim().equalsIgnoreCase(GlobalTypes.EVENT_LOOP)) {
            List<OptionTagBean> options = queFormBean.getOptions();
            if (queFormBean.getAnswer() != null && options != null && !options.isEmpty()) {
                if (queFormBean.getAnswer().toString().equalsIgnoreCase(options.get(0).getKey())) {
                    int loopId = DynamicUtils.getLoopId(Integer.parseInt(queFormBean.getNext().trim()), queFormBean.getLoopCounter() + 1);
                    QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId));
                    if (queFormBean2 == null) {
                        SharedStructureData.loopBakCounter = queFormBean.getLoopCounter() + 1;
                        QueFormBean nextVisibleQues = getNextVisibleQues(loopId, queFormBean.getLoopCounter() + 1, true, queFormBean.isIgnoreLoop(), queFormBean.isIgnoreNextQueLoop());
                        if (nextVisibleQues == null || nextVisibleQues.getPage() == null) {
                            return -1;
                        }
                        DynamicUtils.setFirstQuestion(nextVisibleQues);
                        return DynamicUtils.getLoopId(Integer.parseInt(nextVisibleQues.getPage().trim()), nextVisibleQues.getLoopCounter());
                    }
                    if (queFormBean2.getPage() == null) {
                        return -1;
                    }
                    DynamicUtils.setFirstQuestion(queFormBean2);
                    return DynamicUtils.getLoopId(Integer.parseInt(queFormBean2.getPage().trim()), queFormBean2.getLoopCounter());
                }
                SharedStructureData.loopBakCounter = queFormBean.getLoopCounter();
                QueFormBean nextVisibleQues2 = getNextVisibleQues(Integer.parseInt(queFormBean.getNext().trim()), 0, false, queFormBean.isIgnoreLoop(), queFormBean.isIgnoreNextQueLoop());
                if (nextVisibleQues2 != null && nextVisibleQues2.getPage() != null) {
                    DynamicUtils.setFirstQuestion(nextVisibleQues2);
                    return Integer.parseInt(nextVisibleQues2.getPage().trim());
                }
            }
            return -1;
        }
        int loopCounter = queFormBean.getLoopCounter();
        int loopId2 = DynamicUtils.getLoopId(Integer.parseInt(queFormBean.getNext()), loopCounter);
        QueFormBean nextVisibleQues3 = getNextVisibleQues(loopId2, loopCounter, false, queFormBean.isIgnoreLoop(), queFormBean.isIgnoreNextQueLoop());
        if (nextVisibleQues3 == null || nextVisibleQues3.getPage() == null) {
            return loopId2 == 0 ? 0 : -1;
        }
        DynamicUtils.setFirstQuestion(nextVisibleQues3);
        return DynamicUtils.getLoopId(Integer.parseInt(nextVisibleQues3.getPage()), nextVisibleQues3.getLoopCounter());
    }

    private void clonePageById(int i, boolean z, boolean z2) {
        Log.i("PageFormBean", "Cloning start of Page id : " + i);
        PageFormBean pageFormBean = SharedStructureData.mapIndexPage.get(Integer.valueOf(i));
        if (pageFormBean != null) {
            List<Integer> listOfQuestion = pageFormBean.getListOfQuestion();
            PageFormBean pageFormBean2 = new PageFormBean(i);
            SharedStructureData.mapIndexPage.put(Integer.valueOf(pageFormBean2.getPageNo()), pageFormBean2);
            Iterator<Integer> it = listOfQuestion.iterator();
            while (it.hasNext()) {
                QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(it.next());
                if (queFormBean != null) {
                    pageFormBean2.addQuestion(queFormBean.clone(z, z2, context));
                }
            }
            Log.i("PageFormBean", "Cloning stop of Page id : " + i + " with  new id : " + pageFormBean2.getPageNo());
            pageFormBean2.getPageNo();
        }
    }

    private QueFormBean getNextVisibleQues(int i, int i2, boolean z, boolean z2, boolean z3) throws NumberFormatException {
        int originalId;
        QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i));
        if (queFormBean != null) {
            if (!queFormBean.getIshidden().equalsIgnoreCase("T")) {
                if (!z) {
                    return queFormBean;
                }
                int i3 = Integer.parseInt(queFormBean.getPage());
                SharedStructureData.loopBakCounter = i2;
                clonePageById(i3, z2, z3);
                return SharedStructureData.mapIndexQuestion.get(Integer.valueOf(DynamicUtils.getLoopId(queFormBean.getId(), i2)));
            }
            Log.i("PageFormBean", i + " question is found and it is hidden :");
            if (z) {
                SharedStructureData.loopBakCounter = i2;
                QueFormBean queFormBeanClone = queFormBean.clone(z2, z3, context);
                PageFormBean pageFormBean = SharedStructureData.mapIndexPage.get(Integer.valueOf(Integer.parseInt(queFormBeanClone.getPage())));
                if (pageFormBean != null) {
                    pageFormBean.addQuestion(queFormBeanClone);
                }
                if (queFormBeanClone.getNext() != null && queFormBeanClone.getNext().trim().length() > 0) {
                    int loopId = DynamicUtils.getLoopId(Integer.parseInt(queFormBeanClone.getNext()), i2);
                    if (queFormBeanClone.getEvent() != null && queFormBeanClone.getEvent().trim().equalsIgnoreCase(GlobalTypes.EVENT_DEFAULT_LOOP)) {
                        Log.i("PageFormBean", loopId + "=Event is default loop..............");
                        if (queFormBeanClone.getAnswer() != null && queFormBeanClone.getAnswer().toString().trim().toUpperCase().matches("[TY]")) {
                            int i4 = i2 + 1;
                            int loopId2 = DynamicUtils.getLoopId(Integer.parseInt(queFormBeanClone.getNext()), i4);
                            return getNextVisibleQues(loopId2, i4, SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId2)) == null, queFormBeanClone.isIgnoreNextQueLoop(), queFormBeanClone.isIgnoreLoop());
                        }
                        return getNextVisibleQues(Integer.parseInt(queFormBeanClone.getNext()), 0, false, false, false);
                    }
                    return getNextVisibleQues(loopId, i2, true, queFormBeanClone.isIgnoreNextQueLoop(), queFormBeanClone.isIgnoreNextQueLoop());
                }
                Log.i("PageFormBean", i + "= is Not found for hidden question : " + queFormBeanClone.getId());
            } else {
                DynamicUtils.applyFormulaForHiddenQuestion(queFormBean, false);
                if (queFormBean.getNext() != null && queFormBean.getNext().trim().length() > 0) {
                    int loopId3 = DynamicUtils.getLoopId(Integer.parseInt(queFormBean.getNext()), i2);
                    if (queFormBean.getEvent() != null && queFormBean.getEvent().trim().equalsIgnoreCase(GlobalTypes.EVENT_DEFAULT_LOOP)) {
                        Log.i("PageFormBean", loopId3 + "=Event is default loop..............");
                        if (queFormBean.getAnswer() != null && queFormBean.getAnswer().toString().trim().toUpperCase().matches("[TY]")) {
                            int i5 = i2 + 1;
                            int loopId4 = DynamicUtils.getLoopId(Integer.parseInt(queFormBean.getNext()), i5);
                            return getNextVisibleQues(loopId4, i5, SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId4)) == null, queFormBean.isIgnoreNextQueLoop(), queFormBean.isIgnoreLoop());
                        }
                        return getNextVisibleQues(Integer.parseInt(queFormBean.getNext()), 0, false, false, false);
                    }
                    return getNextVisibleQues(loopId3, i2, false, queFormBean.isIgnoreNextQueLoop(), queFormBean.isIgnoreNextQueLoop());
                }
                Log.i("PageFormBean", i + "=Next is Not found for  question : " + queFormBean.getId());
            }
            return null;
        }
        Log.i("PageFormBean", i + "= question is not found");
        if (i <= 0 || (originalId = DynamicUtils.getOriginalId(i, i2)) == i) {
            return null;
        }
        return getNextVisibleQues(originalId, i2, true, z2, z3);
    }

    private int hideQuestions(List<Integer> list, LinearLayout linearLayout) {
        ArrayList arrayList = new ArrayList();
        for (Integer num : list) {
            if (this.listOfQuestion.contains(num)) {
                arrayList.add(num);
            }
        }
        int i = -1;
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(arrayList.get(i2));
                if (queFormBean != null) {
                    String next = queFormBean.getNext();
                    if (next == null) {
                        next = "-1";
                    }
                    int loopId = DynamicUtils.getLoopId(Integer.parseInt(next), queFormBean.getLoopCounter());
                    if (i2 == 0 || i <= 0 || i == ((Integer) arrayList.get(i2)).intValue()) {
                        i = loopId;
                    }
                    if (queFormBean.getIshidden().equalsIgnoreCase("F")) {
                        View view = (View) queFormBean.getQuestionUIFrame();
                        view.setVisibility(8);
                        linearLayout.removeView(view);
                        linearLayout.addView(view);
                        if (this.listOfShowQuestion == null) {
                            this.listOfShowQuestion = new ArrayList();
                        }
                        this.listOfShowQuestion.add((Integer) arrayList.get(i2));
                    }
                }
            }
        }
        return i;
    }
}
