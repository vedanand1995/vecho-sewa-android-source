package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import com.argusoft.sewa.android.app.datastructure.PageFormBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.google.android.material.textfield.TextInputEditText;

/* loaded from: classes.dex */
public class TextFocusChangeListener implements View.OnFocusChangeListener {
    private Context context;
    private View hiddenView;
    private boolean isMorbiQuestion;
    private View nextView;
    private QueFormBean queFormBean;

    public TextFocusChangeListener(Context context, QueFormBean queFormBean) {
        this.context = context;
        this.queFormBean = queFormBean;
        if (queFormBean.getSubform() == null || !queFormBean.getSubform().toLowerCase().contains(GlobalTypes.DATA_MAP_MORBIDITY_CONDITION.toLowerCase())) {
            return;
        }
        this.isMorbiQuestion = true;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            return;
        }
        TextInputEditText textInputEditText = (TextInputEditText) view;
        if (textInputEditText.getText() != null) {
            this.queFormBean.setAnswer(textInputEditText.getText().toString());
        }
        DynamicUtils.applyFormula(this.queFormBean, true);
        QueFormBean nextVisibleQuestionInSamePage = DynamicUtils.setNextVisibleQuestionInSamePage(this.queFormBean);
        if (nextVisibleQuestionInSamePage != null) {
            Log.i(getClass().getSimpleName(), "Next Question is :" + nextVisibleQuestionInSamePage.getId());
            View view2 = this.hiddenView;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            View view3 = this.nextView;
            if (view3 != null) {
                view3.setVisibility(8);
            }
            PageFormBean pageFromNext = DynamicUtils.getPageFromNext(DynamicUtils.getLoopId(this.queFormBean.getId(), nextVisibleQuestionInSamePage.getLoopCounter()));
            if (pageFromNext != null) {
                LinearLayout pageLayout = pageFromNext.getPageLayout(true, 0);
                if (pageLayout != null) {
                    this.hiddenView = pageLayout.findViewById(DynamicUtils.HIDDEN_LAYOUT_ID);
                }
                View view4 = this.hiddenView;
                if (view4 != null) {
                    view4.setVisibility(0);
                }
            }
            View view5 = (View) nextVisibleQuestionInSamePage.getQuestionUIFrame();
            this.nextView = view5;
            if (view5 != null) {
                view5.setVisibility(0);
            }
            while (true) {
                nextVisibleQuestionInSamePage = DynamicUtils.setNextVisibleQuestionInSamePage(nextVisibleQuestionInSamePage);
                if (nextVisibleQuestionInSamePage == null) {
                    break;
                }
                View view6 = (View) nextVisibleQuestionInSamePage.getQuestionUIFrame();
                if (view6 != null) {
                    view6.setVisibility(0);
                }
            }
        } else {
            View view7 = this.hiddenView;
            if (view7 != null) {
                view7.setVisibility(8);
            }
            View view8 = this.nextView;
            if (view8 != null) {
                view8.setVisibility(8);
            }
        }
        if (this.isMorbiQuestion) {
            String string = textInputEditText.getText().toString();
            textInputEditText.setTextColor(SewaUtil.getColorForMorbiditySims(DynamicUtils.checkForMorbidity(this.queFormBean.getQuestion(), string, this.queFormBean.getSubform(), this.queFormBean.getLoopCounter() + "", null, null)));
        }
        Log.i(getClass().getSimpleName(), this.queFormBean.getQuestion() + MorbiditiesConstant.EQUALS_SYMBOL + this.queFormBean.getAnswer());
        ((InputMethodManager) this.context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}
