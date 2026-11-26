package com.argusoft.sewa.android.app.lms;

import android.content.Context;
import android.content.Intent;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.CustomPDFViewerActivity_;
import com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity_;
import com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity_;
import com.argusoft.sewa.android.app.activity.LmsSimulationActivity_;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.argusoft.sewa.android.app.core.LmsService;
import com.argusoft.sewa.android.app.core.SewaFhsService;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsExpandableListDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LmsExpandableListAdaptor extends BaseExpandableListAdapter {
    private final Context context;
    private final LmsCourseDataBean course;
    private final SewaFhsService fhsService;
    private List<LmsExpandableListDataBean> listDataBeans;
    private final LmsService lmsService;
    private PopupWindow popupWindow;
    private List<Integer> viewedLessons;

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i, int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i) {
        return i;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i, int i2) {
        return true;
    }

    public LmsExpandableListAdaptor(Context context, LmsCourseDataBean lmsCourseDataBean, List<Integer> list, SewaFhsService sewaFhsService, LmsService lmsService, List<LmsExpandableListDataBean> list2) {
        this.context = context;
        this.course = lmsCourseDataBean;
        this.viewedLessons = list;
        this.fhsService = sewaFhsService;
        this.lmsService = lmsService;
        this.listDataBeans = list2;
    }

    public void setViewedLesson(List<Integer> list) {
        this.viewedLessons = list;
    }

    @Override // android.widget.ExpandableListAdapter
    public LmsLessonDataBean getChild(int i, int i2) {
        if (this.listDataBeans.get(i).getModule() != null) {
            return this.listDataBeans.get(i).getModule().getTopicMedias().get(i2);
        }
        return null;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i, int i2, boolean z, final View view, ViewGroup viewGroup) {
        ImageView imageView;
        TextView textView;
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(R.layout.lms_expandable_list_child_view, (ViewGroup) null);
        }
        final LmsLessonDataBean child = getChild(i, i2);
        ((TextView) view.findViewById(R.id.child_text)).setText(child.getTitle());
        imageView = (ImageView) view.findViewById(R.id.lesson_image);
        textView = (TextView) view.findViewById(R.id.lesson_type);
        String mediaType = child.getMediaType();
        mediaType.hashCode();
        switch (mediaType) {
            case "PDF":
                imageView.setImageResource(R.drawable.ic_pdf);
                textView.setText(UtilBean.getMyLabel(LmsConstants.MEDIA_TYPE_PDF));
                break;
            case "AUDIO":
                imageView.setImageResource(R.drawable.ic_audio);
                textView.setText(UtilBean.getMyLabel("Audio"));
                break;
            case "IMAGE":
                imageView.setImageResource(R.drawable.ic_image);
                textView.setText(UtilBean.getMyLabel("Image"));
                break;
            case "VIDEO":
                imageView.setImageResource(R.drawable.ic_video);
                textView.setText(UtilBean.getMyLabel("Video"));
                break;
            default:
                imageView.setImageResource(R.drawable.ic_unsupported_file);
                textView.setText(UtilBean.getMyLabel("Unsupported"));
                break;
        }
        TextView textView2 = (TextView) view.findViewById(R.id.lesson_watched);
        if (this.viewedLessons.contains(child.getActualId())) {
            textView2.setText("(" + UtilBean.getMyLabel("Watched") + ")");
            textView2.setVisibility(0);
        } else {
            textView2.setVisibility(8);
        }
        ImageButton imageButton = (ImageButton) view.findViewById(R.id.transcript_button);
        imageButton.setFocusable(false);
        if (child.getTranscriptFileId() != null) {
            final String str = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(child.getTranscriptFileId(), child.getTranscriptFileName());
            if (UtilBean.isFileExists(str)) {
                imageButton.setVisibility(0);
                imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsExpandableListAdaptor.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) throws IllegalStateException {
                        LmsLessonDataBean selectedLesson = ((LmsCourseDetailActivity) LmsExpandableListAdaptor.this.context).getSelectedLesson();
                        if (selectedLesson == null || !selectedLesson.getActualId().equals(child.getActualId())) {
                            SewaUtil.generateToast(LmsExpandableListAdaptor.this.context, "Please select the lesson first");
                            return;
                        }
                        Intent intent = new Intent(LmsExpandableListAdaptor.this.context, (Class<?>) CustomPDFViewerActivity_.class);
                        intent.putExtra("path", str);
                        intent.putExtra(FieldNameConstants.FILE_NAME, child.getDescription());
                        intent.putExtra("fromLms", true);
                        intent.putExtra(FieldNameConstants.COURSE_ID, LmsExpandableListAdaptor.this.course.getCourseId());
                        intent.putExtra("transcript", true);
                        intent.putExtra("lesson", new Gson().toJson(child));
                        LmsCourseDetailActivity lmsCourseDetailActivity = (LmsCourseDetailActivity) LmsExpandableListAdaptor.this.context;
                        MyVideoView videoView = lmsCourseDetailActivity.getVideoView();
                        if (videoView != null && videoView.isPlaying()) {
                            videoView.pause();
                            lmsCourseDetailActivity.setPositionForTranscript(videoView.getCurrentPosition());
                        }
                        lmsCourseDetailActivity.startActivityForResult(intent, 1018);
                    }
                });
            } else {
                imageButton.setVisibility(8);
            }
        } else {
            imageButton.setVisibility(8);
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.llQuiz);
        ImageButton imageButton2 = (ImageButton) view.findViewById(R.id.test_button);
        imageButton2.setFocusable(false);
        if (child.getQuestionSet() != null && !child.getQuestionSet().isEmpty()) {
            linearLayout.setVisibility(0);
            imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsExpandableListAdaptor.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LmsExpandableListAdaptor lmsExpandableListAdaptor = LmsExpandableListAdaptor.this;
                    View view3 = view;
                    LmsLessonDataBean lmsLessonDataBean = child;
                    lmsExpandableListAdaptor.openLmsTestModulePopup(view3, null, lmsLessonDataBean, lmsLessonDataBean.getQuestionSet(), child.getTitle());
                }
            });
        } else {
            linearLayout.setVisibility(8);
        }
        addQuizListViews(linearLayout, null, child, child.getQuestionSet(), child.getTitle());
        View viewFindViewById = view.findViewById(R.id.group_divider);
        if (getChildrenCount(i) - 1 == i2 && getGroupCount() - 1 != i) {
            viewFindViewById.setVisibility(0);
        } else {
            viewFindViewById.setVisibility(8);
        }
        return view;
    }

    private void addQuizListViews(LinearLayout linearLayout, final LmsTopicDataBean lmsTopicDataBean, final LmsLessonDataBean lmsLessonDataBean, List<LmsQuestionSetDataBean> list, final String str) {
        HashMap map = new HashMap();
        for (LmsQuestionSetDataBean lmsQuestionSetDataBean : list) {
            if (map.containsKey(lmsQuestionSetDataBean.getQuestionSetType())) {
                List arrayList = (List) map.get(lmsQuestionSetDataBean.getQuestionSetType());
                if (arrayList == null || arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                arrayList.add(lmsQuestionSetDataBean);
                map.put(lmsQuestionSetDataBean.getQuestionSetType(), arrayList);
            } else {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(lmsQuestionSetDataBean);
                map.put(lmsQuestionSetDataBean.getQuestionSetType(), arrayList2);
            }
        }
        if (list.size() > 0) {
            ArrayList<LmsQuestionSetDataBean> arrayList3 = new ArrayList();
            for (Map.Entry entry : map.entrySet()) {
                if (Boolean.TRUE.equals(this.course.getTestConfigJson().get(entry.getKey()).getIsCaseStudyQuestionSetType())) {
                    arrayList3.addAll((Collection) entry.getValue());
                } else {
                    List list2 = (List) entry.getValue();
                    Collections.shuffle(list2);
                    arrayList3.add((LmsQuestionSetDataBean) list2.get(0));
                }
            }
            LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2, 17.0f));
            for (final LmsQuestionSetDataBean lmsQuestionSetDataBean2 : arrayList3) {
                View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.lms_expandable_list_child_view, (ViewGroup) null);
                viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                viewInflate.setPadding(0, 0, 0, 0);
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.circle_view);
                imageView.setImageResource(R.drawable.test);
                if (lmsTopicDataBean != null) {
                    if (this.lmsService.isQuizCompleted(this.course.getCourseId(), lmsTopicDataBean.getTopicId(), null, lmsQuestionSetDataBean2.getQuestionSetType())) {
                        imageView.setImageResource(R.drawable.test_completed);
                    } else {
                        imageView.setImageResource(R.drawable.test);
                    }
                } else if (lmsLessonDataBean != null) {
                    if (this.lmsService.isQuizCompleted(this.course.getCourseId(), lmsLessonDataBean.getTopicId(), lmsLessonDataBean.getActualId(), lmsQuestionSetDataBean2.getQuestionSetType())) {
                        imageView.setImageResource(R.drawable.test_completed);
                    } else {
                        imageView.setImageResource(R.drawable.test);
                    }
                }
                imageView.setVisibility(0);
                imageView.setPadding(0, 0, 0, 0);
                imageView.setImageTintList(null);
                ((TextView) viewInflate.findViewById(R.id.child_text)).setText(UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean2.getQuestionSetType().toString())) != null ? lmsQuestionSetDataBean2.getQuestionSetName() + " (" + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean2.getQuestionSetType().toString())) + ")" : lmsQuestionSetDataBean2.getQuestionSetName());
                ((ImageView) viewInflate.findViewById(R.id.lesson_image)).setImageResource(R.drawable.ic_quiz);
                String myLabel = UtilBean.getMyLabel("Quiz");
                if (lmsQuestionSetDataBean2.getQuizAtSecond() != null) {
                    myLabel = myLabel + " (" + lmsQuestionSetDataBean2.getQuizAtSecond() + " seconds)";
                }
                ((TextView) viewInflate.findViewById(R.id.lesson_type)).setText(myLabel);
                ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.test_button);
                imageButton.setFocusable(false);
                imageButton.setVisibility(8);
                viewInflate.findViewById(R.id.group_divider).setVisibility(8);
                viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsExpandableListAdaptor.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        LmsExpandableListAdaptor.this.openLmsTestModule(lmsTopicDataBean, lmsLessonDataBean, lmsQuestionSetDataBean2, str);
                    }
                });
                linearLayout2.addView(viewInflate);
            }
            linearLayout.removeAllViews();
            linearLayout.addView(linearLayout2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLmsTestModulePopup(View view, final LmsTopicDataBean lmsTopicDataBean, final LmsLessonDataBean lmsLessonDataBean, List<LmsQuestionSetDataBean> list, final String str) {
        HashMap map = new HashMap();
        for (LmsQuestionSetDataBean lmsQuestionSetDataBean : list) {
            if (map.containsKey(lmsQuestionSetDataBean.getQuestionSetType())) {
                List arrayList = (List) map.get(lmsQuestionSetDataBean.getQuestionSetType());
                if (arrayList == null || arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                arrayList.add(lmsQuestionSetDataBean);
                map.put(lmsQuestionSetDataBean.getQuestionSetType(), arrayList);
            } else {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(lmsQuestionSetDataBean);
                map.put(lmsQuestionSetDataBean.getQuestionSetType(), arrayList2);
            }
        }
        ArrayList<LmsQuestionSetDataBean> arrayList3 = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            if (Boolean.TRUE.equals(this.course.getTestConfigJson().get(entry.getKey()).getIsCaseStudyQuestionSetType())) {
                arrayList3.addAll((Collection) entry.getValue());
            } else {
                List list2 = (List) entry.getValue();
                Collections.shuffle(list2);
                arrayList3.add((LmsQuestionSetDataBean) list2.get(0));
            }
        }
        if (list.size() > 1) {
            LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2, 17.0f));
            linearLayout.setBackgroundResource(R.drawable.listview_button_selector);
            linearLayout.setPadding(20, 20, 20, 20);
            MaterialTextView materialTextViewGenerateLabelView = MyStaticComponents.generateLabelView(this.context, LabelConstants.PLEASE_SELECT_A_QUIZ);
            materialTextViewGenerateLabelView.setPadding(20, 20, 20, 20);
            linearLayout.addView(materialTextViewGenerateLabelView);
            for (final LmsQuestionSetDataBean lmsQuestionSetDataBean2 : arrayList3) {
                View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.lms_expandable_list_child_view, (ViewGroup) null);
                viewInflate.setBackgroundResource(R.drawable.unselected_listview_button);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.setMargins(15, 15, 15, 15);
                viewInflate.setLayoutParams(layoutParams);
                viewInflate.setPadding(0, 0, 0, 0);
                ((TextView) viewInflate.findViewById(R.id.child_text)).setText(lmsQuestionSetDataBean2.getQuestionSetName() + " (" + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean2.getQuestionSetType().toString())) + ")");
                ((ImageView) viewInflate.findViewById(R.id.lesson_image)).setImageResource(R.drawable.ic_quiz);
                String myLabel = UtilBean.getMyLabel("Quiz");
                if (lmsQuestionSetDataBean2.getQuizAtSecond() != null) {
                    myLabel = myLabel + " (" + lmsQuestionSetDataBean2.getQuizAtSecond() + " seconds)";
                }
                ((TextView) viewInflate.findViewById(R.id.lesson_type)).setText(myLabel);
                ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.test_button);
                imageButton.setFocusable(false);
                imageButton.setVisibility(8);
                viewInflate.findViewById(R.id.group_divider).setVisibility(8);
                viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsExpandableListAdaptor.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        LmsExpandableListAdaptor.this.openLmsTestModule(lmsTopicDataBean, lmsLessonDataBean, lmsQuestionSetDataBean2, str);
                        if (LmsExpandableListAdaptor.this.popupWindow != null) {
                            LmsExpandableListAdaptor.this.popupWindow.dismiss();
                        }
                    }
                });
                linearLayout.addView(viewInflate);
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((LmsCourseDetailActivity) this.context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            PopupWindow popupWindow = new PopupWindow((View) linearLayout, (displayMetrics.widthPixels * 8) / 10, -2, true);
            this.popupWindow = popupWindow;
            popupWindow.showAtLocation(view, 16, 0, 0);
            return;
        }
        openLmsTestModule(lmsTopicDataBean, lmsLessonDataBean, list.get(0), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLmsTestModule(LmsTopicDataBean lmsTopicDataBean, LmsLessonDataBean lmsLessonDataBean, LmsQuestionSetDataBean lmsQuestionSetDataBean, String str) {
        Intent intent;
        boolean zContains = true;
        if (lmsTopicDataBean != null) {
            Iterator<LmsLessonDataBean> it = lmsTopicDataBean.getTopicMedias().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (!this.viewedLessons.contains(it.next().getActualId())) {
                    zContains = false;
                    break;
                }
            }
        } else if (lmsLessonDataBean != null) {
            zContains = this.viewedLessons.contains(lmsLessonDataBean.getActualId());
        }
        if (zContains) {
            LmsCourseDataBean lmsCourseDataBean = this.course;
            if (lmsCourseDataBean != null && lmsCourseDataBean.getTestConfigJson() != null && Boolean.TRUE.equals(this.course.getTestConfigJson().get(lmsQuestionSetDataBean.getQuestionSetType()).getProvideInteractiveFeedbackAfterEachQuestion())) {
                intent = new Intent(this.context, (Class<?>) LmsInteractiveQuestionModuleActivity_.class);
            } else {
                LmsCourseDataBean lmsCourseDataBean2 = this.course;
                if (lmsCourseDataBean2 != null && lmsCourseDataBean2.getTestConfigJson() != null && lmsQuestionSetDataBean.getQuestionSetType().intValue() == 2468) {
                    intent = new Intent(this.context, (Class<?>) LmsSimulationActivity_.class);
                } else {
                    intent = new Intent(this.context, (Class<?>) LmsQuestionModuleActivity_.class);
                }
            }
            intent.putExtra("questionSet", new Gson().toJson(lmsQuestionSetDataBean));
            intent.putExtra("testFor", str);
            ((AppCompatActivity) this.context).startActivityForResult(intent, 1016);
            return;
        }
        SewaUtil.generateToast(this.context, LabelConstants.COMPLETE_PREVIOUS_LESSONS);
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i) {
        if (this.listDataBeans.get(i).getGroupType() == LmsConstants.LMS_COURSE) {
            return 0;
        }
        if (this.listDataBeans.get(i).getGroupType() == LmsConstants.LMS_GROUP_QUIZ) {
            return this.listDataBeans.get(i).getModule().getQuestionSet().size();
        }
        return this.listDataBeans.get(i).getModule().getTopicMedias().size();
    }

    @Override // android.widget.ExpandableListAdapter
    public LmsTopicDataBean getGroup(int i) {
        return this.listDataBeans.get(i).getModule();
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.listDataBeans.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        if (this.listDataBeans.get(i).getGroupType() == LmsConstants.LMS_COURSE) {
            return getGroupViewOfQuiz(this.listDataBeans.get(i).getQuestionSet());
        }
        return getGroupViewOfTopic(this.listDataBeans.get(i).getModule(), i, z);
    }

    private View getGroupViewOfTopic(final LmsTopicDataBean lmsTopicDataBean, int i, boolean z) {
        final View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.lms_expandable_list_group_view, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.group_text)).setText((i + 1) + ". " + UtilBean.getMyLabel(lmsTopicDataBean.getTopicName()));
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.group_image);
        if (z) {
            imageView.setImageResource(R.drawable.ic_arrow_up);
        } else {
            imageView.setImageResource(R.drawable.ic_arrow_down);
        }
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.llData);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.llQuiz);
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.group_test_button);
        imageButton.setFocusable(false);
        if (lmsTopicDataBean.getQuestionSet() != null && !lmsTopicDataBean.getQuestionSet().isEmpty()) {
            linearLayout2.setVisibility(0);
            linearLayout.setVisibility(8);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsExpandableListAdaptor.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LmsExpandableListAdaptor lmsExpandableListAdaptor = LmsExpandableListAdaptor.this;
                    View view2 = viewInflate;
                    LmsTopicDataBean lmsTopicDataBean2 = lmsTopicDataBean;
                    lmsExpandableListAdaptor.openLmsTestModulePopup(view2, lmsTopicDataBean2, null, lmsTopicDataBean2.getQuestionSet(), lmsTopicDataBean.getTopicName());
                }
            });
        } else {
            linearLayout2.setVisibility(8);
            linearLayout.setVisibility(0);
        }
        addQuizListViews(linearLayout2, lmsTopicDataBean, null, lmsTopicDataBean.getQuestionSet(), lmsTopicDataBean.getTopicName());
        return viewInflate;
    }

    private View getGroupViewOfQuiz(LmsQuestionSetDataBean lmsQuestionSetDataBean) {
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.lms_expandable_list_child_view, (ViewGroup) null);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.circle_view);
        if (this.lmsService.isQuizCompleted(this.course.getCourseId(), null, null, lmsQuestionSetDataBean.getQuestionSetType())) {
            imageView.setImageResource(R.drawable.test_completed);
        } else {
            imageView.setImageResource(R.drawable.test);
        }
        imageView.setPadding(0, 0, 0, 0);
        imageView.setImageTintList(null);
        ((TextView) viewInflate.findViewById(R.id.child_text)).setText(lmsQuestionSetDataBean.getQuestionSetName() + " (" + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean.getQuestionSetType().toString())) + ")");
        ((ImageView) viewInflate.findViewById(R.id.lesson_image)).setImageResource(R.drawable.ic_quiz);
        ((TextView) viewInflate.findViewById(R.id.lesson_type)).setText(UtilBean.getMyLabel("Quiz"));
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.test_button);
        imageButton.setFocusable(false);
        imageButton.setVisibility(8);
        return viewInflate;
    }
}
