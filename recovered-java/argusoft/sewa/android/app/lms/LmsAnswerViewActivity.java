package com.argusoft.sewa.android.app.lms;

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
import androidx.core.widget.NestedScrollView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.LoginActivity_;
import com.argusoft.sewa.android.app.activity.MenuActivity;
import com.argusoft.sewa.android.app.component.FillInBlanksComponent;
import com.argusoft.sewa.android.app.component.MatchTheFollowingComponent;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionBankDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuizCompletionMessage;
import com.argusoft.sewa.android.app.databean.LmsQuizConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsSectionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsUserMetaData;
import com.argusoft.sewa.android.app.databean.LmsUserQuizMetaData;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LmsAnswerViewActivity extends MenuActivity implements View.OnClickListener {
    private static final String QUESTIONS_SCREEN = "QUESTIONS_SCREEN";
    private static final String SUBMIT_TEST_SCREEN = "SUBMIT_TEST_SCREEN";
    private LmsUserQuizMetaData attemptMetadata;
    private LinearLayout bodyLayoutContainer;
    private NestedScrollView bodyScroll;
    private LinearLayout footerLayout;
    private LinearLayout globalPanel;
    private LmsQuizConfigDataBean lmsQuizConfigDataBean;
    LmsServiceImpl lmsService;
    private LmsQuestionSetDataBean questionSet;
    private String screen;
    private List<LmsSectionConfigDataBean> sectionConfigs;
    private Integer sectionCount;
    private LmsSectionConfigDataBean selectedSection;
    private String testFor;
    private final Map<Integer, RadioGroup> radioGroupMap = new HashMap();
    private final Map<Integer, LinearLayout> checkBoxGroupMap = new HashMap();
    private final Map<Integer, FillInBlanksComponent> fillInTheBlanksMap = new HashMap();
    private final Map<Integer, QueFormBean> multiSelectQuestionMap = new HashMap();
    private final Map<Integer, MatchTheFollowingComponent> matchTheFollowingMap = new HashMap();
    private final Map<Integer, LinearLayout> questionLayoutMap = new HashMap();
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
        } else {
            this.footerLayout.setVisibility(0);
            setSectionQuestionsScreen();
        }
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
                    this.sectionConfigs = (List) this.gson.fromJson(lmsQuestionBankDataBean.getConfigJson(), new TypeToken<List<LmsSectionConfigDataBean>>() { // from class: com.argusoft.sewa.android.app.lms.LmsAnswerViewActivity.1
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
    private android.widget.LinearLayout getQuestionLayout(com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean r18) {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.lms.LmsAnswerViewActivity.getQuestionLayout(com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean):android.widget.LinearLayout");
    }

    private void setSubmitScreen() {
        String message;
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
        ((ProgressBar) linearLayout.findViewById(R.id.progressbar)).setVisibility(8);
        ((TextView) linearLayout.findViewById(R.id.progressbarText)).setVisibility(8);
        linearLayout.findViewById(R.id.separator2).setVisibility(8);
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
            ((Button) linearLayout.findViewById(R.id.restartButton)).setVisibility(8);
            ((Button) linearLayout.findViewById(R.id.lockQuizButton)).setVisibility(8);
        }
        ((Button) linearLayout.findViewById(R.id.submitButton)).setOnClickListener(this);
        hideProcessDialog();
    }

    private void saveQuizAndFinish() {
        updateLockForThisQuiz();
        SewaUtil.generateToast(this.context, "Quiz Completed");
        finish();
    }

    private void updateLockForThisQuiz() {
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
                    next.setIsLocked(true);
                    z = true;
                    break;
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
            lmsUserQuizMetaData.setIsLocked(true);
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
                saveQuizAndFinish();
            }
        } else if (this.currentSection.equals(this.sectionCount)) {
            setSubmitScreen();
        } else {
            this.currentSection = Integer.valueOf(this.currentSection.intValue() + 1);
            setSectionQuestionsScreen();
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
            } else {
                this.currentSection = Integer.valueOf(this.currentSection.intValue() - 1);
                this.queCount = (this.queCount - this.selectedSection.getQuestions().size()) - this.sectionConfigs.get(this.currentSection.intValue()).getQuestions().size();
                setSectionQuestionsScreen();
            }
        } else if (str2.equals(SUBMIT_TEST_SCREEN)) {
            setSectionQuestionsScreen();
        } else {
            finish();
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        SewaUtil.generateToast(this.context, "Sorry! You can't go back from here.");
    }
}
