package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.FillInBlanksComponent;
import com.argusoft.sewa.android.app.component.MatchTheFollowingComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionAnswerDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionBankDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetAnswerDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuizCompletionMessage;
import com.argusoft.sewa.android.app.databean.LmsQuizConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsSectionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsUserMetaData;
import com.argusoft.sewa.android.app.databean.LmsUserQuizMetaData;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.lms.LmsAnswerViewActivity_;
import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LmsQuestionModuleActivity extends MenuActivity implements View.OnClickListener {
    private static final String QUESTIONS_SCREEN = "QUESTIONS_SCREEN";
    private static final String QUIZ_START_SCREEN = "QUIZ_START_SCREEN";
    private static final String SUBMIT_TEST_SCREEN = "SUBMIT_TEST_SCREEN";
    private LmsUserQuizMetaData attemptMetadata;
    private LinearLayout bodyLayoutContainer;
    private NestedScrollView bodyScroll;
    private Date endDate;
    private LinearLayout footerLayout;
    private LinearLayout globalPanel;
    private LmsQuizConfigDataBean lmsQuizConfigDataBean;
    LmsServiceImpl lmsService;
    private LmsQuestionSetDataBean questionSet;
    private String screen;
    private List<LmsSectionConfigDataBean> sectionConfigs;
    private Integer sectionCount;
    private LmsSectionConfigDataBean selectedSection;
    private Date startDate;
    private String testFor;
    private final Map<Integer, RadioGroup> radioGroupMap = new HashMap();
    private final Map<Integer, LinearLayout> checkBoxGroupMap = new HashMap();
    private final Map<Integer, FillInBlanksComponent> fillInTheBlanksMap = new HashMap();
    private final Map<Integer, QueFormBean> multiSelectQuestionMap = new HashMap();
    private final Map<Integer, MatchTheFollowingComponent> matchTheFollowingMap = new HashMap();
    private final Map<Integer, LmsQuestionAnswerDataBean> answerMap = new HashMap();
    private final Map<Integer, LinearLayout> questionLayoutMap = new HashMap();
    private Integer marksScored = 0;
    private final Map<Integer, Integer> sectionWiseMarks = new HashMap();
    private final Gson gson = new Gson();
    private Integer currentSection = 0;
    private Integer minHeight = null;
    int queCount = 0;

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
        setTitle(UtilBean.getTitleText(LabelConstants.LMS_QUIZ_TITLE));
        setSubTitle(this.testFor);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.id.menu_refresh).setVisible(false);
        menu.findItem(R.id.menu_about).setVisible(false);
        menu.findItem(R.id.menu_home).setVisible(false);
        return true;
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyScroll = (NestedScrollView) this.globalPanel.findViewById(DynamicUtils.ID_BODY_SCROLL);
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        getQuestionSetFromIntent();
        List<LmsSectionConfigDataBean> list = this.sectionConfigs;
        if (list == null || list.isEmpty()) {
            hideProcessDialog();
            SewaUtil.generateToast(this.context, "Question Section Configurations not found. Please refresh and try again.");
            finish();
            return;
        }
        setQuizStartScreen();
    }

    private void setQuizStartScreen() {
        this.screen = QUIZ_START_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.quiz_start_page, (ViewGroup) null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        int paddingBottom = this.bodyLayoutContainer.getPaddingBottom() * (-1);
        layoutParams.setMargins(paddingBottom, paddingBottom, paddingBottom, paddingBottom);
        linearLayout.setLayoutParams(layoutParams);
        this.bodyLayoutContainer.addView(linearLayout);
        ((TextView) linearLayout.findViewById(R.id.questionCount)).setText(String.format("%s section%s - %s", Integer.valueOf(this.sectionConfigs.size()), this.sectionConfigs.size() == 1 ? "" : "s", getQuestionCountString()));
        ((Button) linearLayout.findViewById(R.id.startButton)).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LmsQuestionModuleActivity.this.footerLayout.setVisibility(0);
                LmsQuestionModuleActivity.this.startDate = new Date();
                LmsQuestionModuleActivity.this.setSectionQuestionsScreen();
            }
        });
        hideProcessDialog();
    }

    private String getQuestionCountString() {
        Iterator<LmsSectionConfigDataBean> it = this.sectionConfigs.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().getQuestions().size();
        }
        return String.format("%s questions", Integer.valueOf(size));
    }

    private void getQuestionSetFromIntent() {
        LmsUserQuizMetaData lmsUserQuizMetaData;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.testFor = extras.getString("testFor");
            String string = extras.getString("questionSet");
            if (string == null) {
                hideProcessDialog();
                SewaUtil.generateToast(this.context, "Question Set not found. Please refresh and try again.");
                finish();
                return;
            }
            LmsQuestionSetDataBean lmsQuestionSetDataBean = (LmsQuestionSetDataBean) this.gson.fromJson(string, LmsQuestionSetDataBean.class);
            this.questionSet = lmsQuestionSetDataBean;
            if (lmsQuestionSetDataBean.getQuestionBank() != null && !this.questionSet.getQuestionBank().isEmpty()) {
                LmsQuestionBankDataBean lmsQuestionBankDataBean = this.questionSet.getQuestionBank().get(0);
                if (lmsQuestionBankDataBean.getConfigJson() != null && !lmsQuestionBankDataBean.getConfigJson().isEmpty()) {
                    this.sectionConfigs = (List) this.gson.fromJson(lmsQuestionBankDataBean.getConfigJson(), new TypeToken<List<LmsSectionConfigDataBean>>() { // from class: com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity.2
                    }.getType());
                    this.sectionCount = Integer.valueOf(r0.size() - 1);
                }
            }
            LmsCourseDataBean lmsCourseDataBeanRetrieveCourseByCourseId = this.lmsService.retrieveCourseByCourseId(this.questionSet.getCourseId());
            if (this.questionSet.getQuestionSetType() != null && lmsCourseDataBeanRetrieveCourseByCourseId != null && lmsCourseDataBeanRetrieveCourseByCourseId.getTestConfigJson() != null && lmsCourseDataBeanRetrieveCourseByCourseId.getTestConfigJson().containsKey(this.questionSet.getQuestionSetType())) {
                this.lmsQuizConfigDataBean = lmsCourseDataBeanRetrieveCourseByCourseId.getTestConfigJson().get(this.questionSet.getQuestionSetType());
            }
            LmsUserMetaData lmsUserMetaDataByCourseId = this.lmsService.getLmsUserMetaDataByCourseId(this.questionSet.getCourseId());
            if (lmsUserMetaDataByCourseId != null && lmsUserMetaDataByCourseId.getQuizMetaData() != null) {
                Iterator<LmsUserQuizMetaData> it = lmsUserMetaDataByCourseId.getQuizMetaData().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    LmsUserQuizMetaData next = it.next();
                    if (next.getQuizRefId().equals(this.questionSet.getRefId()) && next.getQuizRefType().equals(this.questionSet.getRefType()) && next.getQuizTypeId().equals(this.questionSet.getQuestionSetType())) {
                        if (this.lmsQuizConfigDataBean != null && Boolean.TRUE.equals(this.lmsQuizConfigDataBean.getIsCaseStudyQuestionSetType())) {
                            if (next.getQuestionSetId() != null && next.getQuestionSetId().equals(this.questionSet.getActualId())) {
                                this.attemptMetadata = next;
                                if (Boolean.TRUE.equals(next.getIsLocked())) {
                                    hideProcessDialog();
                                    SewaUtil.generateToast(this.context, "Sorry. You have already locked this quiz");
                                    finish();
                                }
                            }
                        } else {
                            this.attemptMetadata = next;
                            if (Boolean.TRUE.equals(next.getIsLocked())) {
                                hideProcessDialog();
                                SewaUtil.generateToast(this.context, "Sorry. You have already locked this quiz");
                                finish();
                            }
                        }
                    }
                }
            }
            LmsQuizConfigDataBean lmsQuizConfigDataBean = this.lmsQuizConfigDataBean;
            if (lmsQuizConfigDataBean == null || lmsQuizConfigDataBean.getNoOfMaximumAttempts() == null || (lmsUserQuizMetaData = this.attemptMetadata) == null || lmsUserQuizMetaData.getQuizAttempts() == null || this.attemptMetadata.getQuizAttempts().intValue() < this.lmsQuizConfigDataBean.getNoOfMaximumAttempts().intValue()) {
                return;
            }
            hideProcessDialog();
            SewaUtil.generateToast(this.context, "Sorry. You have reached maximum number of attempts allowed for this Quiz");
            finish();
        }
    }

    private Integer getMinHeight() {
        if (this.minHeight == null) {
            TypedValue typedValue = new TypedValue();
            getTheme().resolveAttribute(android.R.attr.listPreferredItemHeight, typedValue, true);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            this.minHeight = Integer.valueOf((int) typedValue.getDimension(displayMetrics));
        }
        return this.minHeight;
    }

    public void setSectionQuestionsScreen() {
        showProcessDialog();
        this.screen = QUESTIONS_SCREEN;
        this.bodyScroll.fullScroll(33);
        this.bodyLayoutContainer.removeAllViews();
        LmsSectionConfigDataBean lmsSectionConfigDataBean = this.sectionConfigs.get(this.currentSection.intValue());
        this.selectedSection = lmsSectionConfigDataBean;
        if (lmsSectionConfigDataBean.getQuestions() == null || this.selectedSection.getQuestions().isEmpty()) {
            hideProcessDialog();
            SewaUtil.generateToast(this.context, "Question Configurations not found. Please refresh and try again.");
            finish();
            return;
        }
        if (this.selectedSection.getSectionTitle() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this.context, this.selectedSection.getSectionTitle()));
        }
        if (this.selectedSection.getSectionDescription() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedSection.getSectionDescription()));
        }
        for (LmsQuestionConfigDataBean lmsQuestionConfigDataBean : this.selectedSection.getQuestions()) {
            int i = this.queCount + 1;
            this.queCount = i;
            if (this.questionLayoutMap.get(Integer.valueOf(i)) != null) {
                this.bodyLayoutContainer.addView(this.questionLayoutMap.get(Integer.valueOf(this.queCount)));
            } else {
                LinearLayout questionLayout = getQuestionLayout(lmsQuestionConfigDataBean);
                this.questionLayoutMap.put(Integer.valueOf(this.queCount), questionLayout);
                this.bodyLayoutContainer.addView(questionLayout);
            }
        }
        hideProcessDialog();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.widget.LinearLayout getQuestionLayout(com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean r17) {
        /*
            Method dump skipped, instructions count: 638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity.getQuestionLayout(com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean):android.widget.LinearLayout");
    }

    private Integer validateAnswerAndGetResult(String str, String str2) {
        return Integer.valueOf((str == null || !str.equalsIgnoreCase(str2)) ? 0 : 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Boolean testAndSetLmsAnswerDataBean() {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity.testAndSetLmsAnswerDataBean():java.lang.Boolean");
    }

    private int getTotalMarks() {
        int size;
        Iterator<LmsSectionConfigDataBean> it = this.sectionConfigs.iterator();
        int i = 0;
        while (it.hasNext()) {
            for (LmsQuestionConfigDataBean lmsQuestionConfigDataBean : it.next().getQuestions()) {
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
        return i;
    }

    private void setSubmitScreen() {
        int i;
        String message;
        this.endDate = new Date();
        showProcessDialog();
        this.screen = SUBMIT_TEST_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyScroll.fullScroll(33);
        this.footerLayout.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.quiz_end_page, (ViewGroup) null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        int paddingBottom = this.bodyLayoutContainer.getPaddingBottom() * (-1);
        layoutParams.setMargins(paddingBottom, paddingBottom, paddingBottom, paddingBottom);
        linearLayout.setLayoutParams(layoutParams);
        this.bodyLayoutContainer.addView(linearLayout);
        int totalMarks = getTotalMarks();
        ProgressBar progressBar = (ProgressBar) linearLayout.findViewById(R.id.progressbar);
        progressBar.setMax(totalMarks);
        progressBar.setProgress(this.marksScored.intValue());
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        sb.append(totalMarks == 0 ? 0 : (this.marksScored.intValue() * 100) / totalMarks);
        sb.append(GlobalTypes.BENEFICIARY_SEPARATOR);
        ((TextView) linearLayout.findViewById(R.id.progressbarText)).setText(sb.toString());
        View viewFindViewById = linearLayout.findViewById(R.id.separator1);
        View viewFindViewById2 = linearLayout.findViewById(R.id.separator2);
        LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(R.id.layer1);
        LinearLayout linearLayout3 = (LinearLayout) linearLayout.findViewById(R.id.layer2);
        LmsQuizConfigDataBean lmsQuizConfigDataBean = this.lmsQuizConfigDataBean;
        if (lmsQuizConfigDataBean != null) {
            LmsQuizCompletionMessage quizCompletionMessage = lmsQuizConfigDataBean.getQuizCompletionMessage();
            if (quizCompletionMessage != null) {
                String str = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(quizCompletionMessage.getMediaId(), quizCompletionMessage.getMediaName());
                ImageView imageView = (ImageView) linearLayout.findViewById(R.id.courseImage);
                if (UtilBean.isFileExists(str)) {
                    imageView.setImageBitmap(BitmapFactory.decodeFile(str));
                }
                if (quizCompletionMessage.getMessage() == null) {
                    message = "Well done you've completed the quiz!";
                } else {
                    message = quizCompletionMessage.getMessage();
                }
                ((TextView) linearLayout.findViewById(R.id.message)).setText(UtilBean.getMyLabel(message));
            }
            if (this.lmsQuizConfigDataBean.getNoOfMaximumAttempts() == null || this.lmsQuizConfigDataBean.getNoOfMaximumAttempts().intValue() <= 0) {
                i = 0;
            } else {
                LmsUserQuizMetaData lmsUserQuizMetaData = this.attemptMetadata;
                i = 1;
                setViewForScoreCard("Attempt", String.valueOf((lmsUserQuizMetaData == null || lmsUserQuizMetaData.getQuizAttempts() == null) ? 1 : this.attemptMetadata.getQuizAttempts().intValue() + 1), 1, linearLayout2, linearLayout3);
            }
            if (Boolean.TRUE.equals(this.lmsQuizConfigDataBean.getDoYouWantAQuizToBeMarked()) && this.questionSet.getMinimumMarks() != null) {
                int i3 = i + 1;
                setViewForScoreCard("Passing Marks", String.valueOf(this.questionSet.getMinimumMarks()), i3, linearLayout2, linearLayout3);
                if (Boolean.TRUE.equals(this.lmsQuizConfigDataBean.getShowQuizScoreQuizCompletion())) {
                    i += 2;
                    setViewForScoreCard("Marks Scored", String.format("%s / %s", this.marksScored, Integer.valueOf(totalMarks)), i, linearLayout2, linearLayout3);
                } else {
                    i = i3;
                }
            }
            if (Boolean.TRUE.equals(this.lmsQuizConfigDataBean.getShowTimeTakenToCompleteTheQuiz())) {
                i++;
                setViewForScoreCard("Duration", UtilBean.getTimeSpentFromMillis(Long.valueOf(this.endDate.getTime() - this.startDate.getTime())), i, linearLayout2, linearLayout3);
            }
            i2 = i;
            Button button = (Button) linearLayout.findViewById(R.id.restartButton);
            if (Boolean.TRUE.equals(this.lmsQuizConfigDataBean.getProvideOptionToRestartTestFromCompletionScreen())) {
                button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        LmsQuestionModuleActivity.this.saveQuizAndFinish(false);
                        Intent intent = new Intent(LmsQuestionModuleActivity.this.context, (Class<?>) LmsQuestionModuleActivity_.class);
                        intent.putExtra("questionSet", LmsQuestionModuleActivity.this.gson.toJson(LmsQuestionModuleActivity.this.questionSet));
                        intent.putExtra("testFor", LmsQuestionModuleActivity.this.testFor);
                        LmsQuestionModuleActivity.this.startActivityForResult(intent, 1016);
                    }
                });
            } else {
                button.setVisibility(8);
            }
            Button button2 = (Button) linearLayout.findViewById(R.id.lockQuizButton);
            if (Boolean.TRUE.equals(this.lmsQuizConfigDataBean.getProvideOptionToLockTheQuiz())) {
                button2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity.5.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                LmsQuestionModuleActivity.this.alertDialog.cancel();
                                if (view2.getId() == -1) {
                                    LmsQuestionModuleActivity.this.saveQuizAndFinish(true);
                                    Intent intent = new Intent(LmsQuestionModuleActivity.this.context, (Class<?>) LmsAnswerViewActivity_.class);
                                    intent.putExtra("questionSet", LmsQuestionModuleActivity.this.gson.toJson(LmsQuestionModuleActivity.this.questionSet));
                                    intent.putExtra("testFor", LmsQuestionModuleActivity.this.testFor);
                                    LmsQuestionModuleActivity.this.startActivityForResult(intent, 1016);
                                }
                            }
                        };
                        LmsQuestionModuleActivity.this.alertDialog = new MyAlertDialog(LmsQuestionModuleActivity.this.context, "Are you sure want to lock the quiz and view answers? After this all the attempts for this quiz will be exhausted.", onClickListener, DynamicUtils.BUTTON_YES_NO);
                        LmsQuestionModuleActivity.this.alertDialog.show();
                    }
                });
            } else {
                button2.setVisibility(8);
            }
        }
        if (i2 == 0) {
            viewFindViewById.setVisibility(8);
            viewFindViewById2.setVisibility(8);
        }
        ((Button) linearLayout.findViewById(R.id.submitButton)).setOnClickListener(this);
        hideProcessDialog();
    }

    private void setViewForScoreCard(String str, String str2, int i, LinearLayout linearLayout, LinearLayout linearLayout2) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.setMargins(0, 10, 0, 10);
        layoutParams.weight = 0.5f;
        LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(this.context, -1, 1, layoutParams);
        linearLayout3.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, 0, 0, 5);
        TextView textView = new TextView(this.context);
        textView.setAllCaps(true);
        textView.setTextColor(ContextCompat.getColor(this.context, R.color.white));
        textView.setText(UtilBean.getMyLabel(str));
        textView.setTextSize(15.0f);
        textView.setLayoutParams(layoutParams2);
        linearLayout3.addView(textView);
        TextView textView2 = new TextView(this.context);
        textView2.setTextColor(ContextCompat.getColor(this.context, R.color.white));
        textView2.setTypeface(null, 1);
        textView2.setText(str2);
        textView2.setTextSize(20.0f);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout3.addView(textView2);
        if (i < 3) {
            linearLayout.addView(linearLayout3);
        } else {
            linearLayout2.addView(linearLayout3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveQuizAndFinish(Boolean bool) {
        LmsQuestionSetAnswerDataBean lmsQuestionSetAnswerDataBean = new LmsQuestionSetAnswerDataBean();
        lmsQuestionSetAnswerDataBean.setUserId(Integer.valueOf(SewaTransformer.loginBean.getUserID().intValue()));
        lmsQuestionSetAnswerDataBean.setQuestionSetId(this.questionSet.getActualId());
        lmsQuestionSetAnswerDataBean.setPassingMarks(this.questionSet.getMinimumMarks());
        lmsQuestionSetAnswerDataBean.setMarksScored(this.marksScored);
        if (this.questionSet.getMinimumMarks() != null) {
            Integer num = this.marksScored;
            lmsQuestionSetAnswerDataBean.setPassed(Boolean.valueOf(num != null && num.intValue() >= this.questionSet.getMinimumMarks().intValue()));
        }
        lmsQuestionSetAnswerDataBean.setStartDate(this.startDate);
        lmsQuestionSetAnswerDataBean.setEndDate(this.endDate);
        lmsQuestionSetAnswerDataBean.setAnswerJson(this.gson.toJson(this.answerMap.values()));
        if (Boolean.TRUE.equals(bool)) {
            lmsQuestionSetAnswerDataBean.setIsLocked(true);
        }
        this.lmsService.storeLmsTestResult(lmsQuestionSetAnswerDataBean, this.testFor);
        updateNumberOfAttemptsForThisQuiz();
        SewaUtil.generateToast(this.context, "Quiz Completed");
        finish();
    }

    private void updateNumberOfAttemptsForThisQuiz() {
        List<LmsUserQuizMetaData> arrayList;
        LmsUserMetaData lmsUserMetaDataByCourseId = this.lmsService.getLmsUserMetaDataByCourseId(this.questionSet.getCourseId());
        boolean z = false;
        if (lmsUserMetaDataByCourseId != null && lmsUserMetaDataByCourseId.getQuizMetaData() != null) {
            arrayList = lmsUserMetaDataByCourseId.getQuizMetaData();
            Iterator<LmsUserQuizMetaData> it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                LmsUserQuizMetaData next = it.next();
                if (next.getQuizRefId() != null && next.getQuizRefId().equals(this.questionSet.getRefId()) && next.getQuizRefType() != null && next.getQuizRefType().equals(this.questionSet.getRefType()) && next.getQuizTypeId() != null && next.getQuizTypeId().equals(this.questionSet.getQuestionSetType())) {
                    next.setQuizAttempts(Integer.valueOf(next.getQuizAttempts() != null ? next.getQuizAttempts().intValue() + 1 : 1));
                    z = true;
                }
            }
        } else {
            arrayList = new ArrayList<>();
        }
        if (!z) {
            LmsUserQuizMetaData lmsUserQuizMetaData = new LmsUserQuizMetaData();
            lmsUserQuizMetaData.setQuizAttempts(1);
            lmsUserQuizMetaData.setQuizRefId(this.questionSet.getRefId());
            lmsUserQuizMetaData.setQuizRefType(this.questionSet.getRefType());
            lmsUserQuizMetaData.setQuizTypeId(this.questionSet.getQuestionSetType());
            lmsUserQuizMetaData.setLatestScore(this.marksScored);
            arrayList.add(lmsUserQuizMetaData);
        }
        if (lmsUserMetaDataByCourseId == null) {
            lmsUserMetaDataByCourseId = new LmsUserMetaData();
        }
        lmsUserMetaDataByCourseId.setQuizMetaData(arrayList);
        this.lmsService.createLmsUserMetaDataBean(new LmsUserMetaDataBean(lmsUserMetaDataByCourseId));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = this.screen;
        str.hashCode();
        if (!str.equals(QUESTIONS_SCREEN)) {
            if (str.equals(SUBMIT_TEST_SCREEN)) {
                saveQuizAndFinish(false);
            }
        } else {
            if (Boolean.TRUE.equals(testAndSetLmsAnswerDataBean())) {
                if (this.currentSection.equals(this.sectionCount)) {
                    setSubmitScreen();
                    return;
                } else {
                    this.currentSection = Integer.valueOf(this.currentSection.intValue() + 1);
                    setSectionQuestionsScreen();
                    return;
                }
            }
            SewaUtil.generateToast(this.context, "Please answer all questions");
        }
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
        if (str2.equals(QUESTIONS_SCREEN)) {
            if (this.currentSection.intValue() == 0) {
                onBackPressed();
            } else if (this.lmsQuizConfigDataBean != null && Boolean.TRUE.equals(this.lmsQuizConfigDataBean.getAllowReviewBeforeSubmission())) {
                this.currentSection = Integer.valueOf(this.currentSection.intValue() - 1);
                this.queCount = (this.queCount - this.selectedSection.getQuestions().size()) - this.sectionConfigs.get(this.currentSection.intValue()).getQuestions().size();
                this.marksScored = Integer.valueOf(this.marksScored.intValue() - this.sectionWiseMarks.get(this.currentSection).intValue());
                setSectionQuestionsScreen();
            } else {
                SewaUtil.generateToast(this.context, "Sorry! You are not allowed to go back in this Quiz.");
            }
        } else if (str2.equals(SUBMIT_TEST_SCREEN)) {
            SewaUtil.generateToast(this.context, "Sorry! You can't go back from here. Please submit the test and proceed further.");
        } else {
            finish();
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.CLOSE_QUESTION_MODULE_ACTIVITY, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    LmsQuestionModuleActivity.this.alertDialog.dismiss();
                    LmsQuestionModuleActivity.this.finish();
                } else {
                    LmsQuestionModuleActivity.this.alertDialog.dismiss();
                }
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }
}
