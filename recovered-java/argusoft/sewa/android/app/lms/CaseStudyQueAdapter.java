package com.argusoft.sewa.android.app.lms;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionOptionDataBean;
import com.google.android.material.textview.MaterialTextView;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class CaseStudyQueAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Activity activity;
    private Context context;
    private IGetCaseStudyInterface iGetCaseStudyInterface;
    private List<LmsQuestionConfigDataBean> questionConfigDataBeansList;
    private final Map<Integer, RadioGroup> radioGroupMap = new HashMap();
    private Integer minHeight = null;

    public CaseStudyQueAdapter(Context context, Activity activity, List<LmsQuestionConfigDataBean> list, IGetCaseStudyInterface iGetCaseStudyInterface) {
        this.context = context;
        this.questionConfigDataBeansList = list;
        this.activity = activity;
        this.iGetCaseStudyInterface = iGetCaseStudyInterface;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.item_case_study, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        int i2 = i + 1;
        viewHolder.questionLabel.setText(String.format(Locale.getDefault(), "Q%d.", Integer.valueOf(i2)));
        viewHolder.queTitle.setText(this.questionConfigDataBeansList.get(i).getQuestionTitle());
        Drawable imageDrawable = MyStaticComponents.getImageDrawable(this.context, this.questionConfigDataBeansList.get(i).getMediaId(), this.questionConfigDataBeansList.get(i).getMediaName());
        if (imageDrawable != null) {
            viewHolder.questionImageView.setVisibility(0);
            viewHolder.questionImageView.setImageDrawable(imageDrawable);
        }
        final RadioGroup radioGroup = this.radioGroupMap.get(this.questionConfigDataBeansList.get(i).getId());
        if (radioGroup == null) {
            radioGroup = new RadioGroup(this.context);
            this.radioGroupMap.put(this.questionConfigDataBeansList.get(i).getId(), radioGroup);
            for (LmsQuestionOptionDataBean lmsQuestionOptionDataBean : this.questionConfigDataBeansList.get(i).getOptions()) {
                RadioButton radioButton = new RadioButton(this.context);
                radioButton.setLayoutParams(new RadioGroup.LayoutParams(-1, -2));
                radioButton.setText(lmsQuestionOptionDataBean.getOptionTitle());
                radioButton.setTextColor(ContextCompat.getColorStateList(this.context, R.color.lms_radio_button_text_selector));
                radioButton.setBackgroundResource(R.drawable.lms_radio_button_selector);
                radioButton.setMinHeight(getMinHeight().intValue());
                radioButton.setPadding(20, 20, 20, 20);
                Drawable imageDrawable2 = MyStaticComponents.getImageDrawable(this.context, lmsQuestionOptionDataBean.getMediaId(), lmsQuestionOptionDataBean.getMediaName());
                if (imageDrawable2 != null) {
                    radioButton.setCompoundDrawablesWithIntrinsicBounds(imageDrawable2, (Drawable) null, (Drawable) null, (Drawable) null);
                    radioButton.setCompoundDrawablePadding(20);
                    radioButton.setGravity(16);
                }
                radioGroup.addView(radioButton);
                radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.lms.CaseStudyQueAdapter$$ExternalSyntheticLambda0
                    @Override // android.widget.RadioGroup.OnCheckedChangeListener
                    public final void onCheckedChanged(RadioGroup radioGroup2, int i3) {
                        this.f$0.m588x9c93f2bb(i, radioGroup, radioGroup2, i3);
                    }
                });
            }
        }
        viewHolder.optionsLayout.addView(radioGroup);
        viewHolder.noOfQue.setText(String.format("%s of %s", Integer.valueOf(i2), Integer.valueOf(this.questionConfigDataBeansList.size())));
    }

    /* renamed from: lambda$onBindViewHolder$0$com-argusoft-sewa-android-app-lms-CaseStudyQueAdapter, reason: not valid java name */
    /* synthetic */ void m588x9c93f2bb(int i, RadioGroup radioGroup, RadioGroup radioGroup2, int i2) {
        this.iGetCaseStudyInterface.getAnswersOfCaseStudy(this.radioGroupMap, Integer.valueOf(i), (RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
    }

    private Integer getMinHeight() {
        if (this.minHeight == null) {
            TypedValue typedValue = new TypedValue();
            this.context.getTheme().resolveAttribute(android.R.attr.listPreferredItemHeight, typedValue, true);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            this.minHeight = Integer.valueOf((int) typedValue.getDimension(displayMetrics));
        }
        return this.minHeight;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.questionConfigDataBeansList.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        MaterialTextView noOfQue;
        LinearLayout optionsLayout;
        MaterialTextView queTitle;
        ImageView questionImageView;
        MaterialTextView questionLabel;

        public ViewHolder(View view) {
            super(view);
            this.queTitle = (MaterialTextView) view.findViewById(R.id.questionTitle);
            this.questionLabel = (MaterialTextView) view.findViewById(R.id.questionLabel);
            this.optionsLayout = (LinearLayout) view.findViewById(R.id.answerLayout);
            this.noOfQue = (MaterialTextView) view.findViewById(R.id.noOfQue);
            this.questionImageView = (ImageView) view.findViewById(R.id.questionImage);
        }
    }
}
