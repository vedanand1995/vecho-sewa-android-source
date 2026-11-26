package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.argusoft.sewa.android.app.core.impl.LmsDownloadServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionBankDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsSectionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.databean.LmsUserLessonMetaData;
import com.argusoft.sewa.android.app.databean.LmsUserLessonSessionMetaData;
import com.argusoft.sewa.android.app.databean.LmsUserMetaData;
import com.argusoft.sewa.android.app.databean.LmsUserQuizMetaData;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LmsProgressReportActivity extends MenuActivity {
    private static final String COURSE_DETAIL_SCREEN = "COURSE_DETAIL_SCREEN";
    private static final String COURSE_LIST_SCREEN = "COURSE_LIST_SCREEN";
    private LinearLayout bodyLayoutContainer;
    private List<LmsCourseDataBean> courses;
    private Map<Integer, LmsCourseDataBean> coursesMap;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    LmsDownloadServiceImpl lmsDownloadService;
    LmsServiceImpl lmsService;
    private String screen;
    private LmsCourseDataBean selectedCourse;
    private LmsUserMetaData userMetaData;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        getWindow().setSoftInputMode(16);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.LMS_PROGRESS_REPORT_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, null);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.globalPanel.findViewById(DynamicUtils.ID_FOOTER).setVisibility(8);
        setBodyDetail();
    }

    public void setBodyDetail() {
        retrieveCourseList();
    }

    public void retrieveCourseList() {
        this.courses = this.lmsService.retrieveCourses();
        setCourseListScreen();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setCourseListScreen() {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.LmsProgressReportActivity.setCourseListScreen():void");
    }

    public void openCourseDetailScreen() {
        long j;
        LmsLessonDataBean lmsLessonDataBean;
        Iterator<LmsTopicDataBean> it;
        long jLongValue;
        showProcessDialog();
        this.userMetaData = this.lmsService.getLmsUserMetaDataByCourseId(this.selectedCourse.getCourseId());
        this.bodyLayoutContainer.removeAllViews();
        this.screen = COURSE_DETAIL_SCREEN;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.lms_report_course_details, (ViewGroup) null);
        MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.course_title);
        ImageView imageView = (ImageView) linearLayout.findViewById(R.id.course_image);
        materialTextView.setText(UtilBean.getMyLabel(this.selectedCourse.getCourseName()));
        if (this.selectedCourse.getCourseImage() != null) {
            String str = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(this.selectedCourse.getCourseImage().getMediaId(), this.selectedCourse.getCourseImage().getMediaName());
            if (UtilBean.isFileExists(str)) {
                imageView.setImageBitmap(BitmapFactory.decodeFile(str));
            }
        }
        MaterialTextView materialTextView2 = (MaterialTextView) linearLayout.findViewById(R.id.time_spent_label);
        MaterialTextView materialTextView3 = (MaterialTextView) linearLayout.findViewById(R.id.time_spent);
        MaterialTextView materialTextView4 = (MaterialTextView) linearLayout.findViewById(R.id.completion_status_label);
        ProgressBar progressBar = (ProgressBar) linearLayout.findViewById(R.id.progressbar);
        MaterialTextView materialTextView5 = (MaterialTextView) linearLayout.findViewById(R.id.progressbarText);
        MaterialTextView materialTextView6 = (MaterialTextView) linearLayout.findViewById(R.id.most_watched_lesson_label);
        MaterialTextView materialTextView7 = (MaterialTextView) linearLayout.findViewById(R.id.most_watched_lesson);
        HashMap map = new HashMap();
        LmsUserMetaData lmsUserMetaData = this.userMetaData;
        if (lmsUserMetaData == null || lmsUserMetaData.getLessonMetaData() == null) {
            j = 0;
        } else {
            long jLongValue2 = 0;
            for (LmsUserLessonMetaData lmsUserLessonMetaData : this.userMetaData.getLessonMetaData()) {
                if (lmsUserLessonMetaData.getSessions() != null) {
                    jLongValue = 0;
                    for (LmsUserLessonSessionMetaData lmsUserLessonSessionMetaData : lmsUserLessonMetaData.getSessions()) {
                        jLongValue2 += lmsUserLessonSessionMetaData.getEndDate().longValue() - lmsUserLessonSessionMetaData.getStartDate().longValue();
                        jLongValue += lmsUserLessonSessionMetaData.getEndDate().longValue() - lmsUserLessonSessionMetaData.getStartDate().longValue();
                    }
                } else {
                    jLongValue = 0;
                }
                map.put(lmsUserLessonMetaData.getLessonId(), Long.valueOf(jLongValue));
            }
            j = jLongValue2;
        }
        Map.Entry entry = null;
        for (Map.Entry entry2 : map.entrySet()) {
            if (entry == null || ((Long) entry2.getValue()).compareTo((Long) entry.getValue()) > 0) {
                entry = entry2;
            }
        }
        if (entry != null) {
            Iterator<LmsTopicDataBean> it2 = this.selectedCourse.getTopics().iterator();
            LmsLessonDataBean lmsLessonDataBean2 = null;
            while (it2.hasNext()) {
                Iterator<LmsLessonDataBean> it3 = it2.next().getTopicMedias().iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        it = it2;
                        break;
                    }
                    LmsLessonDataBean next = it3.next();
                    it = it2;
                    if (next.getActualId().equals(entry.getKey())) {
                        lmsLessonDataBean2 = next;
                        break;
                    }
                    it2 = it;
                }
                it2 = it;
            }
            lmsLessonDataBean = lmsLessonDataBean2;
        } else {
            lmsLessonDataBean = null;
        }
        materialTextView2.setText(UtilBean.getMyLabel("Total\nTime\nSpent"));
        materialTextView3.setText(UtilBean.getTimeSpentFromMillis(Long.valueOf(j)));
        materialTextView4.setText(UtilBean.getMyLabel("Completion\nStatus"));
        progressBar.setProgress(this.selectedCourse.getCompletionStatus().intValue());
        materialTextView5.setText(this.selectedCourse.getCompletionStatus() + GlobalTypes.BENEFICIARY_SEPARATOR);
        materialTextView6.setText(UtilBean.getMyLabel("Most\nWatched\nLesson"));
        if (lmsLessonDataBean != null) {
            materialTextView7.setText(UtilBean.getMyLabel(lmsLessonDataBean.getTitle()));
            materialTextView7.setAutoSizeTextTypeUniformWithConfiguration(8, 16, 1, 2);
        } else {
            materialTextView7.setText(UtilBean.getMyLabel(LabelConstants.N_A));
        }
        this.bodyLayoutContainer.addView(linearLayout);
        View view = new View(this.context);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 20));
        view.setBackgroundColor(ContextCompat.getColor(this.context, R.color.transparent));
        this.bodyLayoutContainer.addView(view);
        addQuizDetails();
        hideProcessDialog();
    }

    private void addQuizDetails() {
        MaterialTextView materialTextViewGenerateLabelView = MyStaticComponents.generateLabelView(this.context, "Click on a Quiz to view its details");
        this.bodyLayoutContainer.addView(materialTextViewGenerateLabelView);
        int i = 1;
        for (LmsTopicDataBean lmsTopicDataBean : this.selectedCourse.getTopics()) {
            for (LmsLessonDataBean lmsLessonDataBean : lmsTopicDataBean.getTopicMedias()) {
                if (lmsLessonDataBean.getQuestionSet() != null) {
                    Iterator<LmsQuestionSetDataBean> it = lmsLessonDataBean.getQuestionSet().iterator();
                    while (it.hasNext()) {
                        addQuizDetailsForEachQuiz(it.next(), i + ". " + lmsLessonDataBean.getTitle(), lmsLessonDataBean.getActualId(), "LESSON");
                        i++;
                    }
                }
            }
            if (lmsTopicDataBean.getQuestionSet() != null) {
                Iterator<LmsQuestionSetDataBean> it2 = lmsTopicDataBean.getQuestionSet().iterator();
                while (it2.hasNext()) {
                    addQuizDetailsForEachQuiz(it2.next(), i + ". " + lmsTopicDataBean.getTopicName(), lmsTopicDataBean.getTopicId(), "MODULE");
                    i++;
                }
            }
        }
        if (this.selectedCourse.getQuestionSet() != null) {
            Iterator<LmsQuestionSetDataBean> it3 = this.selectedCourse.getQuestionSet().iterator();
            while (it3.hasNext()) {
                addQuizDetailsForEachQuiz(it3.next(), i + ". " + this.selectedCourse.getCourseName(), this.selectedCourse.getCourseId(), "COURSE");
                i++;
            }
        }
        if (i == 1) {
            this.bodyLayoutContainer.removeView(materialTextViewGenerateLabelView);
        }
    }

    private void addQuizDetailsForEachQuiz(LmsQuestionSetDataBean lmsQuestionSetDataBean, String str, Integer num, String str2) {
        LmsUserQuizMetaData next;
        LmsUserMetaData lmsUserMetaData = this.userMetaData;
        if (lmsUserMetaData == null || lmsUserMetaData.getQuizMetaData() == null) {
            next = null;
        } else {
            Iterator<LmsUserQuizMetaData> it = this.userMetaData.getQuizMetaData().iterator();
            while (it.hasNext()) {
                next = it.next();
                if (next.getQuizRefId().equals(num) && next.getQuizRefType().equals(str2)) {
                    break;
                }
            }
            next = null;
        }
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.lms_report_quiz_details, (ViewGroup) null);
        LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(R.id.quiz_title_layout);
        MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.quiz_title);
        final ImageView imageView = (ImageView) linearLayout.findViewById(R.id.quiz_arrow);
        final LinearLayout linearLayout3 = (LinearLayout) linearLayout.findViewById(R.id.quiz_contents);
        materialTextView.setText(UtilBean.getMyLabel(str) + " (" + this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean.getQuestionSetType().toString()) + ")");
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsProgressReportActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (linearLayout3.getVisibility() == 0) {
                    imageView.setImageResource(R.drawable.ic_arrow_down);
                    linearLayout3.setVisibility(8);
                } else {
                    imageView.setImageResource(R.drawable.ic_arrow_up);
                    linearLayout3.setVisibility(0);
                }
            }
        });
        LinearLayout linearLayout4 = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.horizontal_key_value_pair_layout, (ViewGroup) null);
        MaterialTextView materialTextView2 = (MaterialTextView) linearLayout4.findViewById(R.id.keyLabel);
        MaterialTextView materialTextView3 = (MaterialTextView) linearLayout4.findViewById(R.id.valueLabel);
        materialTextView2.setText(UtilBean.getMyLabel("Total attempts"));
        if (next != null && next.getQuizAttempts() != null) {
            materialTextView3.setText(String.valueOf(next.getQuizAttempts()));
        } else {
            materialTextView3.setText("0");
        }
        LinearLayout linearLayout5 = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.horizontal_key_value_pair_layout, (ViewGroup) null);
        MaterialTextView materialTextView4 = (MaterialTextView) linearLayout5.findViewById(R.id.keyLabel);
        MaterialTextView materialTextView5 = (MaterialTextView) linearLayout5.findViewById(R.id.valueLabel);
        materialTextView4.setText(UtilBean.getMyLabel("Attempts to pass the quiz"));
        if (next != null && next.getQuizAttemptsToPass() != null) {
            materialTextView5.setText(String.valueOf(next.getQuizAttemptsToPass()));
        } else {
            materialTextView5.setText(LabelConstants.N_A);
        }
        LinearLayout linearLayout6 = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.horizontal_key_value_pair_layout, (ViewGroup) null);
        MaterialTextView materialTextView6 = (MaterialTextView) linearLayout6.findViewById(R.id.keyLabel);
        MaterialTextView materialTextView7 = (MaterialTextView) linearLayout6.findViewById(R.id.valueLabel);
        materialTextView6.setText(UtilBean.getMyLabel("Score in last attempt"));
        if (next != null && next.getLatestScore() != null) {
            Integer totalMarksInAQuiz = getTotalMarksInAQuiz(lmsQuestionSetDataBean);
            StringBuilder sb = new StringBuilder();
            sb.append(totalMarksInAQuiz.intValue() == 0 ? 0 : (next.getLatestScore().intValue() * 100) / totalMarksInAQuiz.intValue());
            sb.append(GlobalTypes.BENEFICIARY_SEPARATOR);
            materialTextView7.setText(sb.toString());
        } else {
            materialTextView7.setText(LabelConstants.N_A);
        }
        linearLayout3.addView(linearLayout4);
        if (lmsQuestionSetDataBean.getQuestionSetType().intValue() != 2468) {
            linearLayout3.addView(linearLayout5);
            linearLayout3.addView(linearLayout6);
        }
        this.bodyLayoutContainer.addView(linearLayout);
    }

    private Integer getTotalMarksInAQuiz(LmsQuestionSetDataBean lmsQuestionSetDataBean) {
        int size;
        List arrayList = new ArrayList();
        int i = 0;
        if (lmsQuestionSetDataBean.getQuestionBank() != null && !lmsQuestionSetDataBean.getQuestionBank().isEmpty()) {
            LmsQuestionBankDataBean lmsQuestionBankDataBean = lmsQuestionSetDataBean.getQuestionBank().get(0);
            if (lmsQuestionBankDataBean.getConfigJson() != null && !lmsQuestionBankDataBean.getConfigJson().isEmpty()) {
                arrayList = (List) new Gson().fromJson(lmsQuestionBankDataBean.getConfigJson(), new TypeToken<List<LmsSectionConfigDataBean>>() { // from class: com.argusoft.sewa.android.app.activity.LmsProgressReportActivity.4
                }.getType());
            }
        }
        if (lmsQuestionSetDataBean.getQuestionSetType().intValue() != 2468) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                for (LmsQuestionConfigDataBean lmsQuestionConfigDataBean : ((LmsSectionConfigDataBean) it.next()).getQuestions()) {
                    if (LmsConstants.QUESTION_TYPE_FILL_IN_THE_BLANKS.equals(lmsQuestionConfigDataBean.getQuestionType())) {
                        size = lmsQuestionConfigDataBean.getAnswers().size();
                    } else if (LmsConstants.QUESTION_TYPE_MATCH_THE_FOLLOWING.equals(lmsQuestionConfigDataBean.getQuestionType())) {
                        size = lmsQuestionConfigDataBean.getLhs().size();
                    } else {
                        i++;
                    }
                    i += size;
                }
            }
        }
        return Integer.valueOf(i);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        String str2 = this.screen;
        str2.hashCode();
        if (str2.equals(COURSE_LIST_SCREEN)) {
            finish();
        } else if (str2.equals(COURSE_DETAIL_SCREEN)) {
            setCourseListScreen();
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.CLOSE_LMS_PROGRESS_REPORT_ACTIVITY, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsProgressReportActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    LmsProgressReportActivity.this.alertDialog.dismiss();
                    LmsProgressReportActivity.this.finish();
                } else {
                    LmsProgressReportActivity.this.alertDialog.dismiss();
                }
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }
}
