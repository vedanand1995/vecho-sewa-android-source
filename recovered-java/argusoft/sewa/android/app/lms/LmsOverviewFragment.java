package com.argusoft.sewa.android.app.lms;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.util.UtilBean;

/* loaded from: classes.dex */
public class LmsOverviewFragment extends Fragment {
    private LmsCourseDetailActivity activity;
    private LinearLayout bodyLayoutContainer;
    private LmsCourseDataBean selectedCourse;
    private LmsLessonDataBean selectedLesson;
    private LmsTopicDataBean selectedModule;

    public static LmsOverviewFragment newInstance() {
        return new LmsOverviewFragment();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_lms_overview, viewGroup, false);
        this.bodyLayoutContainer = (LinearLayout) viewInflate.findViewById(R.id.bodyLayoutContainer);
        this.activity = (LmsCourseDetailActivity) getActivity();
        initView();
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        initView();
    }

    public void initView() {
        getDataFromActivity();
        setBodyLayout();
    }

    private void getDataFromActivity() {
        LmsCourseDetailActivity lmsCourseDetailActivity = this.activity;
        if (lmsCourseDetailActivity != null) {
            this.selectedCourse = lmsCourseDetailActivity.getSelectedCourse();
            this.selectedModule = this.activity.getSelectedModule();
            this.selectedLesson = this.activity.getSelectedLesson();
        }
    }

    private void setBodyLayout() {
        this.bodyLayoutContainer.removeAllViews();
        LmsCourseDataBean lmsCourseDataBean = this.selectedCourse;
        if (lmsCourseDataBean != null) {
            if (lmsCourseDataBean.getCourseName() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(getContext(), UtilBean.getMyLabel("Course") + " - " + UtilBean.getMyLabel(this.selectedCourse.getCourseName())));
            }
            if (this.selectedCourse.getCourseDescription() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(getContext(), this.selectedCourse.getCourseDescription()));
            }
        }
        LmsTopicDataBean lmsTopicDataBean = this.selectedModule;
        if (lmsTopicDataBean != null) {
            if (lmsTopicDataBean.getTopicName() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(getContext(), UtilBean.getMyLabel("Module") + " - " + UtilBean.getMyLabel(this.selectedModule.getTopicName())));
            }
            if (this.selectedModule.getTopicDescription() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(getContext(), this.selectedModule.getTopicDescription()));
            }
        }
        LmsLessonDataBean lmsLessonDataBean = this.selectedLesson;
        if (lmsLessonDataBean != null) {
            if (lmsLessonDataBean.getTitle() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(getContext(), UtilBean.getMyLabel("Lesson") + " - " + UtilBean.getMyLabel(this.selectedLesson.getTitle())));
            }
            if (this.selectedLesson.getDescription() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(getContext(), this.selectedLesson.getDescription()));
            }
        }
    }
}
