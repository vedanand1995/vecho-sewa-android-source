package com.argusoft.sewa.android.app.component;

import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.argusoft.sewa.android.app.databean.LmsQuestionOptionDataBean;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class MatchTheFollowingComponent extends LinearLayout {
    private final Map<String, String> ansQueMap;
    private final Map<String, View> answerTagViewMap;
    private final Context context;
    private boolean imageAvailable;
    private int lastDragPosition;
    private final List<View> lhs;
    private final List<LmsQuestionOptionDataBean> lhsOptions;
    private LinearLayout mainLayout;
    private final Map<String, String> queAnsMap;
    private final Map<String, View> questionTagViewMap;
    private final List<View> rhs;
    private final List<LmsQuestionOptionDataBean> rhsOptions;
    private final NestedScrollView scrollView;
    private LinearLayout selectionLayout;

    public MatchTheFollowingComponent(Context context, List<LmsQuestionOptionDataBean> list, List<LmsQuestionOptionDataBean> list2, NestedScrollView nestedScrollView) {
        super(context);
        this.lhs = new LinkedList();
        this.rhs = new LinkedList();
        this.questionTagViewMap = new HashMap();
        this.answerTagViewMap = new HashMap();
        this.queAnsMap = new HashMap();
        this.ansQueMap = new HashMap();
        this.lastDragPosition = 0;
        this.context = context;
        this.lhsOptions = list;
        this.rhsOptions = list2;
        this.scrollView = nestedScrollView;
        LinearLayout dragDropView = getDragDropView();
        this.mainLayout = dragDropView;
        addView(dragDropView);
    }

    public boolean isImageAvailable() {
        return this.imageAvailable;
    }

    public List<View> getLhs() {
        return this.lhs;
    }

    public List<View> getRhs() {
        return this.rhs;
    }

    public Map<String, View> getQuestionTagViewMap() {
        return this.questionTagViewMap;
    }

    public Map<String, View> getAnswerTagViewMap() {
        return this.answerTagViewMap;
    }

    public Map<String, String> getQuestionAnswersMap() {
        return this.queAnsMap;
    }

    public LinearLayout getDragDropView() {
        Collections.shuffle(this.rhsOptions);
        this.imageAvailable = LmsConstants.isImageAvailableInMatchTheFollowing(this.lhsOptions, this.rhsOptions);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, layoutParams);
        linearLayout.setBackgroundColor(ContextCompat.getColor(this.context, R.color.lms_answer_layout));
        linearLayout.setPadding(20, 20, 20, 20);
        this.selectionLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, layoutParams);
        Iterator<LmsQuestionOptionDataBean> it = this.rhsOptions.iterator();
        int i = 0;
        LinearLayout linearLayout2 = null;
        int i2 = 0;
        while (it.hasNext()) {
            final View rhsViewForMatchTheFollowing = getRhsViewForMatchTheFollowing(this.context, it.next(), true);
            this.rhs.add(rhsViewForMatchTheFollowing);
            this.answerTagViewMap.put(rhsViewForMatchTheFollowing.getTag().toString(), rhsViewForMatchTheFollowing);
            rhsViewForMatchTheFollowing.setOnTouchListener(new View.OnTouchListener() { // from class: com.argusoft.sewa.android.app.component.MatchTheFollowingComponent.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    MatchTheFollowingComponent.this.lastDragPosition = 0;
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    ClipData clipDataNewPlainText = ClipData.newPlainText("", "");
                    View.DragShadowBuilder dragShadowBuilder = new View.DragShadowBuilder(rhsViewForMatchTheFollowing);
                    View view2 = rhsViewForMatchTheFollowing;
                    view2.startDrag(clipDataNewPlainText, dragShadowBuilder, view2, 0);
                    rhsViewForMatchTheFollowing.setVisibility(4);
                    return true;
                }
            });
            if (this.imageAvailable) {
                int i3 = i2 % 2;
                if (i3 == 0) {
                    linearLayout2 = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.lms_mf_image_answer_selection_layout, (ViewGroup) null);
                    this.selectionLayout.addView(linearLayout2);
                }
                ((LinearLayout) linearLayout2.getChildAt(i3)).addView(rhsViewForMatchTheFollowing);
            } else {
                this.selectionLayout.addView(rhsViewForMatchTheFollowing);
            }
            i2++;
        }
        linearLayout.addView(this.selectionLayout);
        LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(this.context, -1, 1, layoutParams);
        Iterator<LmsQuestionOptionDataBean> it2 = this.lhsOptions.iterator();
        while (it2.hasNext()) {
            i++;
            View lhsViewForMatchTheFollowing = getLhsViewForMatchTheFollowing(this.context, it2.next(), i);
            this.lhs.add(lhsViewForMatchTheFollowing);
            this.questionTagViewMap.put(lhsViewForMatchTheFollowing.getTag().toString(), lhsViewForMatchTheFollowing);
            LinearLayout linearLayout4 = (LinearLayout) lhsViewForMatchTheFollowing.findViewById(R.id.lms_mf_ans_layout);
            linearLayout4.addView(getInstructionText());
            linearLayout4.setOnDragListener(new View.OnDragListener() { // from class: com.argusoft.sewa.android.app.component.MatchTheFollowingComponent.2
                @Override // android.view.View.OnDragListener
                public boolean onDrag(View view, DragEvent dragEvent) {
                    View view2;
                    int action = dragEvent.getAction();
                    if (action == 2) {
                        MatchTheFollowingComponent.this.handleScroll(dragEvent);
                        return true;
                    }
                    if (action != 3) {
                        if (action != 4) {
                            return true;
                        }
                        ((View) dragEvent.getLocalState()).setVisibility(0);
                        return true;
                    }
                    View view3 = (View) dragEvent.getLocalState();
                    LinearLayout linearLayout5 = (LinearLayout) view;
                    ViewGroup viewGroup = (ViewGroup) linearLayout5.getParent();
                    String string = viewGroup.getTag().toString();
                    String string2 = view3.getTag().toString();
                    ((LinearLayout) view3.getParent()).removeView(view3);
                    linearLayout5.removeAllViews();
                    View view4 = null;
                    if (MatchTheFollowingComponent.this.queAnsMap.containsKey(string)) {
                        String str = (String) MatchTheFollowingComponent.this.queAnsMap.get(string);
                        view2 = (View) MatchTheFollowingComponent.this.answerTagViewMap.get(str);
                        MatchTheFollowingComponent.this.ansQueMap.remove(str);
                    } else {
                        view2 = null;
                    }
                    if (MatchTheFollowingComponent.this.ansQueMap.containsKey(string2)) {
                        String str2 = (String) MatchTheFollowingComponent.this.ansQueMap.get(string2);
                        view4 = (View) MatchTheFollowingComponent.this.questionTagViewMap.get(str2);
                        MatchTheFollowingComponent.this.queAnsMap.remove(str2);
                    }
                    MatchTheFollowingComponent.this.queAnsMap.put(string, string2);
                    MatchTheFollowingComponent.this.ansQueMap.put(string2, string);
                    if (view2 != null) {
                        viewGroup.removeView(view2);
                        if (MatchTheFollowingComponent.this.imageAvailable) {
                            MatchTheFollowingComponent.this.addRhsViewInSelectionLayout();
                        } else {
                            MatchTheFollowingComponent.this.selectionLayout.addView(view2);
                        }
                    }
                    if (view4 != null) {
                        LinearLayout linearLayout6 = (LinearLayout) view4.findViewById(R.id.lms_mf_ans_layout);
                        linearLayout6.removeView(view3);
                        linearLayout6.addView(MatchTheFollowingComponent.this.getInstructionText());
                        viewGroup.removeView(view2);
                    }
                    linearLayout5.addView(view3);
                    return true;
                }
            });
            linearLayout3.addView(lhsViewForMatchTheFollowing);
        }
        linearLayout.addView(linearLayout3);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleScroll(DragEvent dragEvent) {
        View childAt = this.mainLayout.getChildAt(r0.getChildCount() - 1);
        View view = (View) dragEvent.getLocalState();
        if (Math.round(dragEvent.getY()) > this.lastDragPosition && Math.round(dragEvent.getY()) + Math.round(view.getY()) < Math.round(childAt.getY())) {
            this.scrollView.smoothScrollBy(0, 30);
        }
        this.lastDragPosition = Math.round(dragEvent.getY());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRhsViewInSelectionLayout() {
        this.selectionLayout.removeAllViews();
        int i = 0;
        LinearLayout linearLayout = null;
        for (View view : this.rhs) {
            if (!this.ansQueMap.containsKey(view.getTag().toString())) {
                LinearLayout linearLayout2 = (LinearLayout) view.getParent();
                if (linearLayout2 != null) {
                    linearLayout2.removeView(view);
                }
                int i2 = i % 2;
                if (i2 == 0) {
                    linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.lms_mf_image_answer_selection_layout, (ViewGroup) null);
                    this.selectionLayout.addView(linearLayout);
                }
                ((LinearLayout) linearLayout.getChildAt(i2)).addView(view);
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TextView getInstructionText() {
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, "Drag answer here");
        materialTextViewGenerateAnswerView.setBackgroundResource(R.drawable.lms_match_text_que_option_background);
        materialTextViewGenerateAnswerView.setTextColor(ContextCompat.getColor(this.context, R.color.lms_instruction_text));
        materialTextViewGenerateAnswerView.setPadding(40, 20, 40, 20);
        materialTextViewGenerateAnswerView.setTypeface(null, 2);
        if (this.imageAvailable) {
            materialTextViewGenerateAnswerView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            materialTextViewGenerateAnswerView.setBackgroundResource(R.drawable.lms_match_que_image_option_background);
        }
        return materialTextViewGenerateAnswerView;
    }

    public static Drawable getImageDrawableForMatch(Context context, Long l, String str) {
        if (l == null) {
            return null;
        }
        String str2 = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(l, str);
        if (!UtilBean.isFileExists(str2)) {
            return null;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return new BitmapDrawable(context.getResources(), Bitmap.createScaledBitmap(BitmapFactory.decodeFile(str2), displayMetrics.widthPixels / 3, displayMetrics.widthPixels / 4, true));
    }

    public View getLhsViewForMatchTheFollowing(Context context, LmsQuestionOptionDataBean lmsQuestionOptionDataBean, int i) {
        LinearLayout linearLayout;
        if (this.imageAvailable) {
            linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.lms_match_the_following_image_layout, (ViewGroup) null);
        } else {
            linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.lms_match_the_following_text_layout, (ViewGroup) null);
        }
        LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(R.id.lms_mf_que_layout);
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, lmsQuestionOptionDataBean.getOptionTitle());
        materialTextViewGenerateAnswerView.setGravity(16);
        materialTextViewGenerateAnswerView.setTypeface(null, 1);
        materialTextViewGenerateAnswerView.setText(i + ". " + lmsQuestionOptionDataBean.getOptionTitle());
        Drawable imageDrawableForMatch = getImageDrawableForMatch(context, lmsQuestionOptionDataBean.getMediaId(), lmsQuestionOptionDataBean.getMediaName());
        if (imageDrawableForMatch != null) {
            materialTextViewGenerateAnswerView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, imageDrawableForMatch, (Drawable) null, (Drawable) null);
            materialTextViewGenerateAnswerView.setCompoundDrawablePadding(10);
        }
        if (this.imageAvailable) {
            materialTextViewGenerateAnswerView.setBackgroundResource(R.drawable.lms_match_image_que_option_background);
            materialTextViewGenerateAnswerView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            materialTextViewGenerateAnswerView.setPadding(40, 30, 40, 30);
        }
        linearLayout2.addView(materialTextViewGenerateAnswerView);
        linearLayout.setTag(lmsQuestionOptionDataBean.getOptionValue());
        return linearLayout;
    }

    public View getRhsViewForMatchTheFollowing(Context context, LmsQuestionOptionDataBean lmsQuestionOptionDataBean, boolean z) {
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, context, lmsQuestionOptionDataBean.getOptionTitle());
        materialTextViewGenerateQuestionView.setGravity(16);
        materialTextViewGenerateQuestionView.setTextColor(ContextCompat.getColor(context, R.color.white));
        materialTextViewGenerateQuestionView.setTag(lmsQuestionOptionDataBean.getOptionValue());
        Drawable imageDrawableForMatch = getImageDrawableForMatch(context, lmsQuestionOptionDataBean.getMediaId(), lmsQuestionOptionDataBean.getMediaName());
        if (z) {
            if (imageDrawableForMatch != null) {
                LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{imageDrawableForMatch, new BitmapDrawable(context.getResources(), Bitmap.createScaledBitmap(((BitmapDrawable) ContextCompat.getDrawable(context, R.drawable.move_icon_circle)).getBitmap(), materialTextViewGenerateQuestionView.getLineHeight() * 2, materialTextViewGenerateQuestionView.getLineHeight() * 2, true))});
                if (Build.VERSION.SDK_INT >= 23) {
                    layerDrawable.setLayerGravity(1, 48);
                    layerDrawable.setLayerInsetTop(1, 10);
                    layerDrawable.setLayerInsetStart(1, 10);
                    layerDrawable.setLayerSize(1, materialTextViewGenerateQuestionView.getLineHeight(), materialTextViewGenerateQuestionView.getLineHeight());
                }
                materialTextViewGenerateQuestionView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, layerDrawable, (Drawable) null, (Drawable) null);
                materialTextViewGenerateQuestionView.setPadding(40, 20, 40, 20);
            } else {
                materialTextViewGenerateQuestionView.setCompoundDrawablesWithIntrinsicBounds(new BitmapDrawable(context.getResources(), Bitmap.createScaledBitmap(((BitmapDrawable) ContextCompat.getDrawable(context, R.drawable.move_icon)).getBitmap(), materialTextViewGenerateQuestionView.getLineHeight(), materialTextViewGenerateQuestionView.getLineHeight(), true)), (Drawable) null, (Drawable) null, (Drawable) null);
                materialTextViewGenerateQuestionView.setPadding(40, 30, 40, 30);
            }
        } else if (imageDrawableForMatch != null) {
            materialTextViewGenerateQuestionView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, imageDrawableForMatch, (Drawable) null, (Drawable) null);
            materialTextViewGenerateQuestionView.setPadding(40, 20, 40, 20);
        } else {
            materialTextViewGenerateQuestionView.setPadding(40, 30, 40, 30);
        }
        if (this.imageAvailable) {
            materialTextViewGenerateQuestionView.setBackgroundResource(R.drawable.lms_match_image_ans_option_background);
            materialTextViewGenerateQuestionView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        } else {
            materialTextViewGenerateQuestionView.setBackgroundResource(R.drawable.lms_match_text_ans_option_background);
        }
        materialTextViewGenerateQuestionView.setCompoundDrawablePadding(10);
        return materialTextViewGenerateQuestionView;
    }

    public LinearLayout getCorrectAnswerLayout(Map<String, String> map) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        HashMap map2 = new HashMap();
        int i = 0;
        for (LmsQuestionOptionDataBean lmsQuestionOptionDataBean : this.lhsOptions) {
            i++;
            map2.put(lmsQuestionOptionDataBean.getOptionValue(), getLhsViewForMatchTheFollowing(this.context, lmsQuestionOptionDataBean, i));
        }
        HashMap map3 = new HashMap();
        for (LmsQuestionOptionDataBean lmsQuestionOptionDataBean2 : this.rhsOptions) {
            map3.put(lmsQuestionOptionDataBean2.getOptionValue(), getRhsViewForMatchTheFollowing(this.context, lmsQuestionOptionDataBean2, false));
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            LinearLayout linearLayout2 = (LinearLayout) map2.get(entry.getKey());
            ((LinearLayout) linearLayout2.findViewById(R.id.lms_mf_ans_layout)).addView((View) map3.get(entry.getValue()));
            linearLayout.addView(linearLayout2);
        }
        return linearLayout;
    }
}
