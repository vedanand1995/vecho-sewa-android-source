package com.argusoft.sewa.android.app.lms;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity_;
import com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity_;
import com.argusoft.sewa.android.app.activity.LmsSimulationActivity_;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsExpandableListDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class LmsContentFragment extends Fragment {
    private LmsCourseDetailActivity activity;
    private LinearLayout bodyLayoutContainer;
    private LmsExpandableListAdaptor expandableListAdaptor;
    private ExpandableListView expandableListView;
    private LmsCourseDataBean selectedCourse;
    private int lastExpandedGroupPosition = -1;
    private int selectedLessonChildIndex = -1;
    private int selectedLessonGroupIndex = -1;

    public static LmsContentFragment newInstance() {
        return new LmsContentFragment();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_lms_content, viewGroup, false);
        this.bodyLayoutContainer = (LinearLayout) viewInflate.findViewById(R.id.bodyLayoutContainer);
        this.activity = (LmsCourseDetailActivity) getActivity();
        initView();
        return viewInflate;
    }

    public void initView() {
        if (this.selectedCourse == null) {
            this.selectedCourse = this.activity.getSelectedCourse();
        }
        if (this.selectedCourse == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (LmsTopicDataBean lmsTopicDataBean : this.selectedCourse.getTopics()) {
            LmsExpandableListDataBean lmsExpandableListDataBean = new LmsExpandableListDataBean();
            lmsExpandableListDataBean.setGroupType(LmsConstants.LMS_GROUP);
            lmsExpandableListDataBean.setModule(lmsTopicDataBean);
            arrayList.add(lmsExpandableListDataBean);
            if (lmsTopicDataBean.getQuestionSet() != null && !lmsTopicDataBean.getQuestionSet().isEmpty()) {
                LmsExpandableListDataBean lmsExpandableListDataBean2 = new LmsExpandableListDataBean();
                lmsExpandableListDataBean2.setGroupType(LmsConstants.LMS_GROUP_QUIZ);
                lmsExpandableListDataBean2.setModule(lmsTopicDataBean);
                arrayList.add(lmsExpandableListDataBean2);
            }
        }
        if (this.selectedCourse.getQuestionSet() != null) {
            for (LmsQuestionSetDataBean lmsQuestionSetDataBean : this.selectedCourse.getQuestionSet()) {
                LmsExpandableListDataBean lmsExpandableListDataBean3 = new LmsExpandableListDataBean();
                lmsExpandableListDataBean3.setGroupType(LmsConstants.LMS_COURSE);
                lmsExpandableListDataBean3.setQuestionSet(lmsQuestionSetDataBean);
                arrayList.add(lmsExpandableListDataBean3);
            }
        }
        this.selectedCourse.setListDataBeans(arrayList);
        this.expandableListView = (ExpandableListView) this.bodyLayoutContainer.findViewById(R.id.expandable_list_view);
        LmsExpandableListAdaptor lmsExpandableListAdaptor = new LmsExpandableListAdaptor(getContext(), this.selectedCourse, this.activity.lmsService.getViewedLessonList(), this.activity.fhsService, this.activity.lmsService, arrayList);
        this.expandableListAdaptor = lmsExpandableListAdaptor;
        this.expandableListView.setAdapter(lmsExpandableListAdaptor);
        this.expandableListView.setOnChildClickListener(getChildClickListener());
        this.expandableListView.setOnGroupExpandListener(getOnExpandGroupListener());
        this.expandableListView.setOnGroupCollapseListener(getOnCollapseGroupListener());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLmsTestModule(LmsQuestionSetDataBean lmsQuestionSetDataBean, String str) {
        Intent intent;
        Iterator<LmsTopicDataBean> it = this.selectedCourse.getTopics().iterator();
        boolean z = true;
        while (it.hasNext()) {
            Iterator<LmsLessonDataBean> it2 = it.next().getTopicMedias().iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (!this.activity.lmsService.getViewedLessonList().contains(it2.next().getActualId())) {
                        z = false;
                        break;
                    }
                }
            }
        }
        if (z) {
            if (this.selectedCourse.getTestConfigJson() != null && Boolean.TRUE.equals(this.selectedCourse.getTestConfigJson().get(lmsQuestionSetDataBean.getQuestionSetType()).getProvideInteractiveFeedbackAfterEachQuestion())) {
                intent = new Intent(getContext(), (Class<?>) LmsInteractiveQuestionModuleActivity_.class);
            } else {
                LmsCourseDataBean lmsCourseDataBean = this.selectedCourse;
                if (lmsCourseDataBean != null && lmsCourseDataBean.getTestConfigJson() != null && lmsQuestionSetDataBean.getQuestionSetType().intValue() == 2468) {
                    intent = new Intent(getContext(), (Class<?>) LmsSimulationActivity_.class);
                } else {
                    intent = new Intent(getContext(), (Class<?>) LmsQuestionModuleActivity_.class);
                }
            }
            intent.putExtra("questionSet", new Gson().toJson(lmsQuestionSetDataBean));
            intent.putExtra("testFor", str);
            this.activity.startActivityForResult(intent, 1016);
            return;
        }
        SewaUtil.generateToast(getContext(), LabelConstants.COMPLETE_PREVIOUS_LESSONS);
    }

    private ExpandableListView.OnChildClickListener getChildClickListener() {
        return new ExpandableListView.OnChildClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsContentFragment.1
            @Override // android.widget.ExpandableListView.OnChildClickListener
            public boolean onChildClick(ExpandableListView expandableListView, View view, int i, int i2, long j) {
                if (LmsContentFragment.this.selectedCourse.getListDataBeans().get(i).getGroupType().equals(LmsConstants.LMS_COURSE)) {
                    return false;
                }
                LmsTopicDataBean module = LmsContentFragment.this.selectedCourse.getListDataBeans().get(i).getModule();
                LmsLessonDataBean lmsLessonDataBean = LmsContentFragment.this.selectedCourse.getListDataBeans().get(i).getModule().getTopicMedias().get(i2);
                if (LmsContentFragment.this.activity.getSelectedLesson() != null && lmsLessonDataBean.getActualId().equals(LmsContentFragment.this.activity.getSelectedLesson().getActualId())) {
                    return false;
                }
                if (Boolean.TRUE.equals(LmsContentFragment.this.selectedCourse.getAllowedToSkipLessons()) || Boolean.TRUE.equals(LmsContentFragment.this.activity.lmsService.getAllowedMediaMap(LmsContentFragment.this.selectedCourse.getCourseId()).get(lmsLessonDataBean.getActualId()))) {
                    LmsContentFragment.this.expandableListAdaptor.setViewedLesson(LmsContentFragment.this.activity.lmsService.getViewedLessonList());
                    LmsContentFragment.this.activity.setSelectedModule(module);
                    LmsContentFragment.this.activity.setSelectedLesson(lmsLessonDataBean);
                    LmsContentFragment.this.selectedLessonGroupIndex = i;
                    LmsContentFragment.this.selectedLessonChildIndex = i2;
                    expandableListView.setItemChecked(expandableListView.getFlatListPosition(ExpandableListView.getPackedPositionForChild(i, i2)), true);
                    return false;
                }
                SewaUtil.generateToast(LmsContentFragment.this.getContext(), LabelConstants.COMPLETE_PREVIOUS_LESSONS);
                return false;
            }
        };
    }

    private ExpandableListView.OnGroupExpandListener getOnExpandGroupListener() {
        return new ExpandableListView.OnGroupExpandListener() { // from class: com.argusoft.sewa.android.app.lms.LmsContentFragment.2
            @Override // android.widget.ExpandableListView.OnGroupExpandListener
            public void onGroupExpand(int i) {
                if (!LmsContentFragment.this.selectedCourse.getListDataBeans().get(i).getGroupType().equals(LmsConstants.LMS_COURSE)) {
                    if (LmsContentFragment.this.lastExpandedGroupPosition != -1 && i != LmsContentFragment.this.lastExpandedGroupPosition) {
                        LmsContentFragment.this.expandableListView.collapseGroup(LmsContentFragment.this.lastExpandedGroupPosition);
                    }
                    LmsContentFragment.this.lastExpandedGroupPosition = i;
                    if (LmsContentFragment.this.selectedLessonChildIndex == -1 || LmsContentFragment.this.selectedLessonGroupIndex == -1 || i != LmsContentFragment.this.selectedLessonGroupIndex) {
                        return;
                    }
                    LmsContentFragment.this.expandableListView.setItemChecked(LmsContentFragment.this.expandableListView.getFlatListPosition(ExpandableListView.getPackedPositionForChild(i, LmsContentFragment.this.selectedLessonChildIndex)), true);
                    return;
                }
                LmsContentFragment lmsContentFragment = LmsContentFragment.this;
                lmsContentFragment.openLmsTestModule(lmsContentFragment.selectedCourse.getListDataBeans().get(i).getQuestionSet(), LmsContentFragment.this.selectedCourse.getCourseName());
            }
        };
    }

    private ExpandableListView.OnGroupCollapseListener getOnCollapseGroupListener() {
        return new ExpandableListView.OnGroupCollapseListener() { // from class: com.argusoft.sewa.android.app.lms.LmsContentFragment.3
            @Override // android.widget.ExpandableListView.OnGroupCollapseListener
            public void onGroupCollapse(int i) {
                LmsContentFragment.this.expandableListView.clearChoices();
            }
        };
    }
}
