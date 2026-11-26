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
import android.widget.EditText;
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
import com.argusoft.sewa.android.app.databean.LmsFIBQuestionAnswersDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionAnswerDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionBankDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionOptionDataBean;
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
import com.argusoft.sewa.android.app.util.MyComparatorUtil;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LmsInteractiveQuestionModuleActivity extends MenuActivity implements View.OnClickListener {
    private static final String QUESTIONS_SCREEN = "QUESTIONS_SCREEN";
    private static final String QUIZ_START_SCREEN = "QUIZ_START_SCREEN";
    private static final String SUBMIT_TEST_SCREEN = "SUBMIT_TEST_SCREEN";
    private LmsUserQuizMetaData attemptMetadata;
    private LinearLayout bodyLayoutContainer;
    private NestedScrollView bodyScroll;
    private Date endDate;
    private LinearLayout footerLayout;
    private LinearLayout globalPanel;
    Boolean isVerified;
    private LmsQuizConfigDataBean lmsQuizConfigDataBean;
    LmsServiceImpl lmsService;
    private Button nextButton;
    private LmsQuestionSetDataBean questionSet;
    private String screen;
    private List<LmsSectionConfigDataBean> sectionConfigs;
    Integer sectionCount;
    LmsQuestionConfigDataBean selectedQuestion;
    LmsSectionConfigDataBean selectedSection;
    private Date startDate;
    private String testFor;
    private final Map<Integer, RadioGroup> radioGroupMap = new HashMap();
    private final Map<Integer, LinearLayout> checkBoxGroupMap = new HashMap();
    private final Map<Integer, FillInBlanksComponent> fillInTheBlanksMap = new HashMap();
    private final Map<Integer, QueFormBean> multiSelectQuestionMap = new HashMap();
    private final Map<Integer, MatchTheFollowingComponent> matchTheFollowingMap = new HashMap();
    private final Map<Integer, LmsQuestionAnswerDataBean> answerMap = new HashMap();
    private Integer marksScored = 0;
    private final Gson gson = new Gson();
    Integer currentSection = 0;
    Integer currentQuestion = 0;
    private Integer queCount = 0;
    private Integer minHeight = null;

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
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
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
        ((Button) linearLayout.findViewById(R.id.startButton)).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LmsInteractiveQuestionModuleActivity.this.footerLayout.setVisibility(0);
                LmsInteractiveQuestionModuleActivity.this.startDate = new Date();
                LmsInteractiveQuestionModuleActivity.this.setSectionQuestionsScreen();
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
                    this.sectionConfigs = (List) this.gson.fromJson(lmsQuestionBankDataBean.getConfigJson(), new TypeToken<List<LmsSectionConfigDataBean>>() { // from class: com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity.2
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
                        this.attemptMetadata = next;
                        if (Boolean.TRUE.equals(next.getIsLocked())) {
                            hideProcessDialog();
                            SewaUtil.generateToast(this.context, "Sorry. You have already locked this quiz");
                            finish();
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setQuestionView() {
        /*
            Method dump skipped, instructions count: 694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity.setQuestionView():void");
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
        this.selectedQuestion = this.selectedSection.getQuestions().get(this.currentQuestion.intValue());
        setQuestionView();
        this.isVerified = false;
        this.nextButton.setText(UtilBean.getMyLabel("Submit Answer"));
        hideProcessDialog();
    }

    private Integer validateAnswerAndGetResult(String str, String str2) {
        return Integer.valueOf((str == null || !str.equalsIgnoreCase(str2)) ? 0 : 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Boolean testAndSetLmsAnswerDataBean() {
        /*
            Method dump skipped, instructions count: 832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity.testAndSetLmsAnswerDataBean():java.lang.Boolean");
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
                button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        LmsInteractiveQuestionModuleActivity.this.saveQuizAndFinish();
                        Intent intent = new Intent(LmsInteractiveQuestionModuleActivity.this.context, (Class<?>) LmsQuestionModuleActivity_.class);
                        intent.putExtra("questionSet", LmsInteractiveQuestionModuleActivity.this.gson.toJson(LmsInteractiveQuestionModuleActivity.this.questionSet));
                        intent.putExtra("testFor", LmsInteractiveQuestionModuleActivity.this.testFor);
                        LmsInteractiveQuestionModuleActivity.this.startActivityForResult(intent, 1016);
                    }
                });
            } else {
                button.setVisibility(8);
            }
            Button button2 = (Button) linearLayout.findViewById(R.id.lockQuizButton);
            if (Boolean.TRUE.equals(this.lmsQuizConfigDataBean.getProvideOptionToRestartTestFromCompletionScreen())) {
                button2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity.5.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                LmsInteractiveQuestionModuleActivity.this.alertDialog.cancel();
                                if (view2.getId() == -1) {
                                    LmsInteractiveQuestionModuleActivity.this.saveQuizAndFinish();
                                    Intent intent = new Intent(LmsInteractiveQuestionModuleActivity.this.context, (Class<?>) LmsAnswerViewActivity_.class);
                                    intent.putExtra("questionSet", LmsInteractiveQuestionModuleActivity.this.gson.toJson(LmsInteractiveQuestionModuleActivity.this.questionSet));
                                    intent.putExtra("testFor", LmsInteractiveQuestionModuleActivity.this.testFor);
                                    LmsInteractiveQuestionModuleActivity.this.startActivityForResult(intent, 1016);
                                }
                            }
                        };
                        LmsInteractiveQuestionModuleActivity.this.alertDialog = new MyAlertDialog(LmsInteractiveQuestionModuleActivity.this.context, "Are you sure want to lock the quiz and view answers? After this all the attempts for this quiz will be exhausted.", onClickListener, DynamicUtils.BUTTON_YES_NO);
                        LmsInteractiveQuestionModuleActivity.this.alertDialog.show();
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
    public void saveQuizAndFinish() {
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

    private void showVerifiedAnswer() {
        String questionType = this.selectedQuestion.getQuestionType();
        questionType.hashCode();
        switch (questionType) {
            case "MULTI_SELECT":
                QueFormBean queFormBean = this.multiSelectQuestionMap.get(this.selectedQuestion.getId());
                if (queFormBean != null && queFormBean.getAnswer() != null) {
                    List listAsList = Arrays.asList(queFormBean.getAnswer().toString().split(GlobalTypes.COMMA));
                    LinearLayout linearLayout = this.checkBoxGroupMap.get(this.selectedQuestion.getId());
                    if (linearLayout != null) {
                        int i = 0;
                        for (LmsQuestionOptionDataBean lmsQuestionOptionDataBean : this.selectedQuestion.getOptions()) {
                            MaterialCheckBox materialCheckBox = (MaterialCheckBox) linearLayout.findViewById(i);
                            materialCheckBox.setEnabled(false);
                            if (Boolean.TRUE.equals(lmsQuestionOptionDataBean.getCorrect())) {
                                materialCheckBox.setBackground(ContextCompat.getDrawable(this.context, R.drawable.lms_radio_button_background_correct));
                                materialCheckBox.setTextColor(ContextCompat.getColor(this.context, R.color.rb_correct_text));
                                materialCheckBox.setButtonTintList(ContextCompat.getColorStateList(this.context, R.color.cb_tick_correct));
                                materialCheckBox.setPaddingRelative(20, 20, 60, 20);
                            } else if (listAsList.contains(lmsQuestionOptionDataBean.getOptionValue())) {
                                materialCheckBox.setBackground(ContextCompat.getDrawable(this.context, R.drawable.lms_radio_button_background_incorrect));
                                materialCheckBox.setTextColor(ContextCompat.getColor(this.context, R.color.rb_incorrect_text));
                                materialCheckBox.setButtonTintList(ContextCompat.getColorStateList(this.context, R.color.cb_tick_incorrect));
                                materialCheckBox.setPaddingRelative(20, 20, 60, 20);
                            }
                            i++;
                        }
                        setCorrectIncorrectDescriptionForEachQuestion(this.answerMap.get(this.selectedQuestion.getId()));
                        setFeedbackContentForEachQuestion();
                        break;
                    }
                } else {
                    return;
                }
                break;
            case "FILL_IN_THE_BLANKS":
                FillInBlanksComponent fillInBlanksComponent = this.fillInTheBlanksMap.get(this.selectedQuestion.getId());
                if (fillInBlanksComponent != null) {
                    List<LmsFIBQuestionAnswersDataBean> answers = this.selectedQuestion.getAnswers();
                    Collections.sort(answers, MyComparatorUtil.LMS_FIB_BLANKS_ORDER_COMPARATOR);
                    List<EditText> editTextList = fillInBlanksComponent.getEditTextList();
                    StringBuilder sb = new StringBuilder();
                    int i2 = 0;
                    for (LmsFIBQuestionAnswersDataBean lmsFIBQuestionAnswersDataBean : answers) {
                        EditText editText = editTextList.get(i2);
                        editText.setEnabled(false);
                        if (lmsFIBQuestionAnswersDataBean.getBlankValue().equalsIgnoreCase(editText.getText().toString().trim())) {
                            editText.setBackgroundResource(R.drawable.lms_edit_text_background_correct);
                            editText.setTextColor(ContextCompat.getColor(this.context, R.color.rb_correct_text));
                        } else {
                            editText.setBackgroundResource(R.drawable.lms_edit_text_background_incorrect);
                            editText.setTextColor(ContextCompat.getColor(this.context, R.color.rb_incorrect_text));
                        }
                        if (i2 > 0) {
                            sb.append(LabelConstants.NEW_LINE);
                        }
                        sb.append(lmsFIBQuestionAnswersDataBean.getBlankValue());
                        i2++;
                    }
                    setCorrectIncorrectDescriptionForEachQuestion(this.answerMap.get(this.selectedQuestion.getId()));
                    this.bodyLayoutContainer.addView(MyStaticComponents.getSeparator(this.context));
                    MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, "Correct Answer:");
                    materialTextViewGenerateQuestionView.setTextColor(ContextCompat.getColor(this.context, R.color.rb_correct_text));
                    this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateBoldAnswerView(this.context, sb.toString()));
                    setFeedbackContentForEachQuestion();
                    break;
                } else {
                    return;
                }
            case "SINGLE_SELECT":
                RadioGroup radioGroup = this.radioGroupMap.get(this.selectedQuestion.getId());
                if (radioGroup != null) {
                    int i3 = 0;
                    for (LmsQuestionOptionDataBean lmsQuestionOptionDataBean2 : this.selectedQuestion.getOptions()) {
                        MaterialRadioButton materialRadioButton = (MaterialRadioButton) radioGroup.findViewById(i3);
                        materialRadioButton.setEnabled(false);
                        if (Boolean.TRUE.equals(lmsQuestionOptionDataBean2.getCorrect())) {
                            materialRadioButton.setBackground(ContextCompat.getDrawable(this.context, R.drawable.lms_radio_button_background_correct));
                            materialRadioButton.setTextColor(ContextCompat.getColor(this.context, R.color.rb_correct_text));
                            materialRadioButton.setButtonTintList(ContextCompat.getColorStateList(this.context, R.color.cb_tick_correct));
                            materialRadioButton.setPadding(20, 20, 60, 20);
                        } else if (materialRadioButton.getId() == radioGroup.getCheckedRadioButtonId()) {
                            materialRadioButton.setBackground(ContextCompat.getDrawable(this.context, R.drawable.lms_radio_button_background_incorrect));
                            materialRadioButton.setTextColor(ContextCompat.getColor(this.context, R.color.rb_incorrect_text));
                            materialRadioButton.setButtonTintList(ContextCompat.getColorStateList(this.context, R.color.cb_tick_incorrect));
                            materialRadioButton.setPadding(20, 20, 60, 20);
                        }
                        i3++;
                    }
                    setCorrectIncorrectDescriptionForEachQuestion(this.answerMap.get(this.selectedQuestion.getId()));
                    setFeedbackContentForEachQuestion();
                    break;
                }
                break;
            case "MATCH_THE_FOLLOWING":
                MatchTheFollowingComponent matchTheFollowingComponent = this.matchTheFollowingMap.get(this.selectedQuestion.getId());
                if (matchTheFollowingComponent != null) {
                    Map<String, String> map = (Map) this.gson.fromJson(this.selectedQuestion.getAnswerPairs(), new TypeToken<Map<String, String>>() { // from class: com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity.6
                    }.getType());
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        boolean z = validateAnswerAndGetResult(entry.getValue(), matchTheFollowingComponent.getQuestionAnswersMap().get(entry.getKey())).intValue() == 1;
                        View view = matchTheFollowingComponent.getAnswerTagViewMap().get(entry.getValue());
                        if (view != null) {
                            if (matchTheFollowingComponent.isImageAvailable()) {
                                if (z) {
                                    ((TextView) view).setTextColor(ContextCompat.getColor(this.context, R.color.rb_correct_text));
                                    view.setBackgroundResource(R.drawable.lms_match_image_ans_option_background_correct);
                                } else {
                                    ((TextView) view).setTextColor(ContextCompat.getColor(this.context, R.color.rb_incorrect_text));
                                    view.setBackgroundResource(R.drawable.lms_match_image_ans_option_background_incorrect);
                                }
                            } else if (z) {
                                ((TextView) view).setTextColor(ContextCompat.getColor(this.context, R.color.rb_correct_text));
                                view.setBackgroundResource(R.drawable.lms_match_text_ans_option_background_correct);
                            } else {
                                ((TextView) view).setTextColor(ContextCompat.getColor(this.context, R.color.rb_incorrect_text));
                                view.setBackgroundResource(R.drawable.lms_match_text_ans_option_background_incorrect);
                            }
                        }
                        matchTheFollowingComponent.getAnswerTagViewMap().get(entry.getValue()).setEnabled(false);
                    }
                    this.bodyLayoutContainer.addView(MyStaticComponents.getSeparator(this.context));
                    MaterialTextView materialTextViewGenerateQuestionView2 = MyStaticComponents.generateQuestionView(null, null, this.context, "Correct Answer:");
                    materialTextViewGenerateQuestionView2.setTextColor(ContextCompat.getColor(this.context, R.color.rb_correct_text));
                    this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView2);
                    this.bodyLayoutContainer.addView(matchTheFollowingComponent.getCorrectAnswerLayout(map));
                    break;
                } else {
                    return;
                }
        }
        this.isVerified = true;
        this.nextButton.setText("Next");
    }

    private void setCorrectIncorrectDescriptionForEachQuestion(LmsQuestionAnswerDataBean lmsQuestionAnswerDataBean) {
        MaterialTextView materialTextViewGenerateLabelView;
        if (lmsQuestionAnswerDataBean != null) {
            if (validateAnswerAndGetResult(lmsQuestionAnswerDataBean.getCorrectAnswer(), lmsQuestionAnswerDataBean.getAnswer()).intValue() == 1) {
                if (this.selectedQuestion.getCorrectAnswerDescription() != null) {
                    materialTextViewGenerateLabelView = MyStaticComponents.generateLabelView(this.context, this.selectedQuestion.getCorrectAnswerDescription());
                } else {
                    materialTextViewGenerateLabelView = MyStaticComponents.generateLabelView(this.context, "Yay! You have answered it correctly");
                }
                materialTextViewGenerateLabelView.setTextColor(ContextCompat.getColor(this.context, R.color.rb_correct_text));
            } else {
                if (this.selectedQuestion.getIncorrectAnswerDescription() != null) {
                    materialTextViewGenerateLabelView = MyStaticComponents.generateLabelView(this.context, this.selectedQuestion.getIncorrectAnswerDescription());
                } else {
                    materialTextViewGenerateLabelView = MyStaticComponents.generateLabelView(this.context, "Oops! You have answered it incorrectly");
                }
                materialTextViewGenerateLabelView.setTextColor(ContextCompat.getColor(this.context, R.color.rb_incorrect_text));
            }
            this.bodyLayoutContainer.addView(materialTextViewGenerateLabelView);
        }
    }

    private void setFeedbackContentForEachQuestion() {
        if (this.selectedQuestion.getInteractiveFeedbackContent() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.getSeparator(this.context));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateBoldAnswerView(this.context, this.selectedQuestion.getInteractiveFeedbackContent()));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = this.screen;
        str.hashCode();
        if (!str.equals(QUESTIONS_SCREEN)) {
            if (str.equals(SUBMIT_TEST_SCREEN)) {
                saveQuizAndFinish();
                return;
            }
            return;
        }
        if (Boolean.TRUE.equals(this.isVerified)) {
            if (this.currentSection.equals(this.sectionCount) && this.currentQuestion.equals(Integer.valueOf(this.selectedSection.getQuestions().size() - 1))) {
                setSubmitScreen();
                return;
            }
            if (this.currentQuestion.equals(Integer.valueOf(this.selectedSection.getQuestions().size() - 1))) {
                this.currentQuestion = 0;
                this.currentSection = Integer.valueOf(this.currentSection.intValue() + 1);
            } else {
                this.currentQuestion = Integer.valueOf(this.currentQuestion.intValue() + 1);
            }
            setSectionQuestionsScreen();
            return;
        }
        if (Boolean.TRUE.equals(testAndSetLmsAnswerDataBean())) {
            showVerifiedAnswer();
        } else {
            SewaUtil.generateToast(this.context, "Please answer the question");
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
        if (menuItem.getItemId() == 16908332) {
            String str2 = this.screen;
            str2.hashCode();
            if (str2.equals(QUESTIONS_SCREEN)) {
                if (this.currentSection.intValue() == 0 && this.currentQuestion.intValue() == 0) {
                    onBackPressed();
                } else {
                    SewaUtil.generateToast(this.context, "Sorry! You are not allowed to go back in this Quiz.");
                }
            } else if (str2.equals(SUBMIT_TEST_SCREEN)) {
                SewaUtil.generateToast(this.context, "Sorry! You can't go back from here. Please submit the test and proceed further.");
            } else {
                finish();
            }
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        SewaUtil.generateToast(this.context, "Sorry! You are not allowed to cancel this Quiz.");
        this.alertDialog = new MyAlertDialog(this, LabelConstants.CLOSE_QUESTION_MODULE_ACTIVITY, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    LmsInteractiveQuestionModuleActivity.this.alertDialog.dismiss();
                    LmsInteractiveQuestionModuleActivity.this.finish();
                } else {
                    LmsInteractiveQuestionModuleActivity.this.alertDialog.dismiss();
                }
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }
}
