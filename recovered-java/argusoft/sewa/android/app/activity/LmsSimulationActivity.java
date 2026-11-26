package com.argusoft.sewa.android.app.activity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.FileProvider;
import androidx.viewpager2.widget.ViewPager2;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyAudioComponent;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsOptionFeedbackDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionAnswerDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionBankDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionOptionDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetAnswerDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsScenarioConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsUserMetaData;
import com.argusoft.sewa.android.app.databean.LmsUserQuizMetaData;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.lms.CaseStudyQueAdapter;
import com.argusoft.sewa.android.app.lms.IGetCaseStudyInterface;
import com.argusoft.sewa.android.app.lms.MyVideoMediaController;
import com.argusoft.sewa.android.app.lms.MyVideoView;
import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.tabs.TabLayout;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LmsSimulationActivity extends MenuActivity implements IGetCaseStudyInterface {
    private static final String TAG = "LmsSimulationActivity";
    private AlertDialog alertDialog;
    private MediaPlayer audioMediaPlayer;
    private AppCompatTextView caseDescription;
    private ImageView caseImage;
    private AppCompatTextView caseTitle;
    private Date endDate;
    private FrameLayout flAudioView;
    private FrameLayout flVideoView;
    private LinearLayout footerLayout;
    private Boolean isCorrectOptionSelected;
    LmsServiceImpl lmsService;
    private MyAlertDialog myAlertDialog;
    private MyAudioComponent myAudioComponent;
    MyVideoView myVideoView;
    private MaterialButton nextButton;
    private String optionCorrectFeedback;
    private LmsOptionFeedbackDataBean optionCorrectFeedbackBean;
    private String optionInCorrectFeedback;
    private LmsOptionFeedbackDataBean optionInCorrectFeedbackBean;
    private Integer quePosition;
    private LmsQuestionSetDataBean questionSet;
    private LmsScenarioConfigDataBean sectionData;
    private List<LmsScenarioConfigDataBean> sectionDataBeans;
    private RadioButton selectedRadioButtonFromAdapter;
    private Date startDate;
    private String testFor;
    private ViewPager2 viewPager;
    private boolean isFullScreen = false;
    private boolean isMediaVideo = false;
    private final Gson gson = new Gson();
    List<LmsQuestionConfigDataBean> lmsQuestionConfigDataBeanList = new ArrayList();
    private final Map<Integer, LmsQuestionAnswerDataBean> answerMap = new HashMap();
    private Map<Integer, RadioGroup> radioGroupMapFromAdapter = new HashMap();

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        setContentView(R.layout.activity_lms_case_study_quiz);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (SharedStructureData.isLogin) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
        intent.setFlags(335544320);
        startActivity(intent);
        finish();
    }

    private void initView() {
        setSupportActionBar((Toolbar) findViewById(R.id.include));
        getQuestionSetFromIntent();
        List<LmsScenarioConfigDataBean> list = this.sectionDataBeans;
        if (list == null || list.isEmpty()) {
            hideProcessDialog();
            SewaUtil.generateToast(this.context, "Question Section Configurations not found. Please refresh and try again.");
            finish();
            return;
        }
        setCaseStudyScreen();
    }

    private void getQuestionSetFromIntent() {
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
            if (lmsQuestionSetDataBean.getQuestionBank() == null || this.questionSet.getQuestionBank().isEmpty()) {
                return;
            }
            LmsQuestionBankDataBean lmsQuestionBankDataBean = this.questionSet.getQuestionBank().get(0);
            if (lmsQuestionBankDataBean.getConfigJson() == null || lmsQuestionBankDataBean.getConfigJson().isEmpty()) {
                return;
            }
            this.sectionDataBeans = (List) this.gson.fromJson(lmsQuestionBankDataBean.getConfigJson(), new TypeToken<List<LmsScenarioConfigDataBean>>() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity.1
            }.getType());
        }
    }

    public void setCaseStudyScreen() {
        setTitle(UtilBean.getTitleText(LabelConstants.CASE_STUDY_TITLE));
        this.caseTitle = (AppCompatTextView) findViewById(R.id.caseTitle);
        this.caseDescription = (AppCompatTextView) findViewById(R.id.caseDescription);
        this.viewPager = (ViewPager2) findViewById(R.id.questions_view_pager);
        this.nextButton = (MaterialButton) findViewById(R.id.nextButton);
        this.caseImage = (ImageView) findViewById(R.id.caseImage);
        this.flVideoView = (FrameLayout) findViewById(R.id.flVideoView);
        this.flAudioView = (FrameLayout) findViewById(R.id.flAudioView);
        this.footerLayout = (LinearLayout) findViewById(R.id.footerLayout);
        TabLayout tabLayout = (TabLayout) findViewById(R.id.tabLayout);
        tabLayout.setInlineLabel(true);
        tabLayout.setTabMode(1);
        tabLayout.addTab(tabLayout.newTab().setText("Description"));
        tabLayout.addTab(tabLayout.newTab().setText("Media"));
        this.startDate = new Date();
        LmsScenarioConfigDataBean lmsScenarioConfigDataBean = this.sectionDataBeans.get(0);
        this.sectionData = lmsScenarioConfigDataBean;
        if (lmsScenarioConfigDataBean.getScenarioQuestions() == null || this.sectionData.getScenarioQuestions().isEmpty()) {
            hideProcessDialog();
            SewaUtil.generateToast(this.context, "Question Configurations not found. Please refresh and try again.");
            finish();
            return;
        }
        if (this.sectionData.getScenarioTitle() != null) {
            this.caseTitle.setText(this.sectionData.getScenarioTitle());
        }
        if (this.sectionData.getScenarioDescription() != null) {
            this.caseDescription.setText(this.sectionData.getScenarioDescription());
        }
        String str = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(this.sectionData.getMediaId(), this.sectionData.getMediaName());
        String mediaType = this.sectionData.getMediaType();
        mediaType.hashCode();
        if (mediaType.equals(LmsConstants.MEDIA_TYPE_IMAGE)) {
            addImageForScenario(str);
        } else if (mediaType.equals(LmsConstants.MEDIA_TYPE_VIDEO)) {
            addVideoLesson(str);
        }
        if (this.sectionData.getAudio().getMediaId() != null && this.sectionData.getAudio().getMediaName() != null) {
            String str2 = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(this.sectionData.getAudio().getMediaId(), this.sectionData.getAudio().getMediaName());
            if (this.sectionData.getAudio().getAudioWithControls().booleanValue()) {
                addAudioLessonWithControls(str2);
            } else {
                addAudioLessonWithoutControls(str2);
            }
        }
        setupViewPager(this.viewPager);
        tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity.2
            @Override // com.google.android.material.tabs.TabLayout.OnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.OnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.OnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                if (tab.getPosition() == 0) {
                    LmsSimulationActivity.this.caseDescription.setVisibility(0);
                    LmsSimulationActivity.this.caseImage.setVisibility(8);
                    LmsSimulationActivity.this.flVideoView.setVisibility(8);
                } else if (tab.getPosition() == 1) {
                    LmsSimulationActivity.this.caseDescription.setVisibility(8);
                    if (LmsSimulationActivity.this.isMediaVideo) {
                        LmsSimulationActivity.this.flVideoView.setVisibility(0);
                    } else {
                        LmsSimulationActivity.this.caseImage.setVisibility(0);
                    }
                }
            }
        });
        hideProcessDialog();
    }

    private void addVideoLesson(final String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.isMediaVideo = true;
        File file = new File(str);
        if (file.exists()) {
            if (!UtilBean.videoFileIsCorrupted(this, str)) {
                SewaUtil.generateToast(this, UtilBean.getMyLabel("Some error occurred. Please refresh and try again."));
                UtilBean.deleteFile(str);
                return;
            }
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this).inflate(R.layout.lms_universal_video_view, (ViewGroup) null);
            Uri uriForFile = FileProvider.getUriForFile(this, getApplicationContext().getPackageName() + ".provider", file);
            this.myVideoView = (MyVideoView) frameLayout.findViewById(R.id.videoView);
            MyVideoMediaController myVideoMediaController = (MyVideoMediaController) frameLayout.findViewById(R.id.media_controller);
            this.myVideoView.setMediaController(myVideoMediaController);
            this.flVideoView.addView(frameLayout);
            this.myVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity$$ExternalSyntheticLambda0
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    return this.f$0.m254xd2dbbcb6(str, mediaPlayer, i, i2);
                }
            });
            setVideoCallback(this.myVideoView);
            myVideoMediaController.setTitle(this.sectionData.getScenarioTitle());
            this.myVideoView.setVideoURI(uriForFile);
            this.myVideoView.seekTo(0);
            this.myVideoView.start();
            return;
        }
        SewaUtil.generateToast(this, UtilBean.getMyLabel("File not found. Please refresh and try again."));
    }

    /* renamed from: lambda$addVideoLesson$0$com-argusoft-sewa-android-app-activity-LmsSimulationActivity, reason: not valid java name */
    /* synthetic */ boolean m254xd2dbbcb6(String str, MediaPlayer mediaPlayer, int i, int i2) {
        SewaUtil.generateToast(this, UtilBean.getMyLabel("Some error occurred. Please refresh and try again."));
        UtilBean.deleteFile(str);
        return false;
    }

    private void setVideoCallback(MyVideoView myVideoView) {
        myVideoView.setVideoViewCallback(new MyVideoView.VideoViewCallback() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity.3
            ActionBar actionBar;
            final int cachedHeight;

            {
                this.cachedHeight = LmsSimulationActivity.this.flVideoView.getLayoutParams().height;
            }

            @Override // com.argusoft.sewa.android.app.lms.MyVideoView.VideoViewCallback
            public void onScaleChange(boolean z) {
                LmsSimulationActivity.this.isFullScreen = z;
                if (z) {
                    ViewGroup.LayoutParams layoutParams = LmsSimulationActivity.this.flVideoView.getLayoutParams();
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                    LmsSimulationActivity.this.flVideoView.setLayoutParams(layoutParams);
                    LmsSimulationActivity.this.viewPager.setVisibility(8);
                    LmsSimulationActivity.this.caseTitle.setVisibility(8);
                    LmsSimulationActivity.this.caseDescription.setVisibility(8);
                    LmsSimulationActivity.this.footerLayout.setVisibility(8);
                    ActionBar supportActionBar = ((LmsSimulationActivity) LmsSimulationActivity.this.context).getSupportActionBar();
                    this.actionBar = supportActionBar;
                    if (supportActionBar != null) {
                        supportActionBar.hide();
                        return;
                    }
                    return;
                }
                ViewGroup.LayoutParams layoutParams2 = LmsSimulationActivity.this.flVideoView.getLayoutParams();
                layoutParams2.width = -1;
                layoutParams2.height = this.cachedHeight;
                LmsSimulationActivity.this.flVideoView.setLayoutParams(layoutParams2);
                LmsSimulationActivity.this.viewPager.setVisibility(0);
                LmsSimulationActivity.this.caseTitle.setVisibility(0);
                LmsSimulationActivity.this.caseDescription.setVisibility(0);
                LmsSimulationActivity.this.footerLayout.setVisibility(0);
                ActionBar supportActionBar2 = ((LmsSimulationActivity) LmsSimulationActivity.this.context).getSupportActionBar();
                this.actionBar = supportActionBar2;
                if (supportActionBar2 != null) {
                    supportActionBar2.show();
                }
            }

            @Override // com.argusoft.sewa.android.app.lms.MyVideoView.VideoViewCallback
            public void onPause(MediaPlayer mediaPlayer) {
                Log.d(LmsSimulationActivity.TAG, "onPause MyVideoView callback");
            }

            @Override // com.argusoft.sewa.android.app.lms.MyVideoView.VideoViewCallback
            public void onStart(MediaPlayer mediaPlayer) {
                Log.d(LmsSimulationActivity.TAG, "onStart MyVideoView callback");
            }

            @Override // com.argusoft.sewa.android.app.lms.MyVideoView.VideoViewCallback
            public void onBufferingStart(MediaPlayer mediaPlayer) {
                Log.d(LmsSimulationActivity.TAG, "onBufferingStart MyVideoView callback");
            }

            @Override // com.argusoft.sewa.android.app.lms.MyVideoView.VideoViewCallback
            public void onBufferingEnd(MediaPlayer mediaPlayer) {
                Log.d(LmsSimulationActivity.TAG, "onBufferingEnd MyVideoView callback");
            }
        });
    }

    private void addAudioLessonWithControls(String str) throws IllegalStateException {
        File file = new File(str);
        if (file.exists()) {
            if (this.myAudioComponent == null) {
                this.audioMediaPlayer = MediaPlayer.create(this, FileProvider.getUriForFile(this, getApplicationContext().getPackageName() + ".provider", file));
                this.myAudioComponent = new MyAudioComponent(this, this.sectionData.getScenarioTitle(), this.audioMediaPlayer);
            }
            this.myAudioComponent.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            this.flAudioView.addView(this.myAudioComponent);
            this.flAudioView.setVisibility(0);
            this.myAudioComponent.play();
            return;
        }
        SewaUtil.generateToast(this, UtilBean.getMyLabel("File not found. Please refresh and try again."));
    }

    private void addAudioLessonWithoutControls(String str) {
        if (new File(str).exists()) {
            this.flAudioView.addView(MyDynamicComponents.getAudioPlayerForSimulations(this.context, -1, str));
            this.flAudioView.setVisibility(0);
        } else {
            SewaUtil.generateToast(this, UtilBean.getMyLabel("File not found. Please refresh and try again."));
        }
    }

    private void addImageForScenario(final String str) {
        this.isMediaVideo = false;
        Drawable imageDrawable = MyStaticComponents.getImageDrawable(this.context, this.sectionData.getMediaId(), this.sectionData.getMediaName());
        if (imageDrawable != null) {
            this.caseImage.setImageDrawable(imageDrawable);
            this.caseImage.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m253xe8c78d22(str, view);
                }
            });
        }
    }

    /* renamed from: lambda$addImageForScenario$1$com-argusoft-sewa-android-app-activity-LmsSimulationActivity, reason: not valid java name */
    /* synthetic */ void m253xe8c78d22(String str, View view) {
        Intent intent = new Intent(this.context, (Class<?>) CustomImageViewerActivity_.class);
        intent.putExtra("path", str);
        startActivityForResult(intent, 1016);
    }

    private void setupViewPager(final ViewPager2 viewPager2) {
        viewPager2.setUserInputEnabled(false);
        this.lmsQuestionConfigDataBeanList = this.sectionData.getScenarioQuestions();
        viewPager2.setAdapter(new CaseStudyQueAdapter(this, this, this.lmsQuestionConfigDataBeanList, this));
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).create();
        final View viewInflate = LayoutInflater.from(this).inflate(R.layout.custom_option_alert_box, (ViewGroup) null);
        alertDialogCreate.setView(viewInflate);
        alertDialogCreate.setCancelable(true);
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m258xe68968a1(viewPager2, viewInflate, alertDialogCreate, view);
            }
        });
    }

    /* renamed from: lambda$setupViewPager$6$com-argusoft-sewa-android-app-activity-LmsSimulationActivity, reason: not valid java name */
    /* synthetic */ void m258xe68968a1(final ViewPager2 viewPager2, View view, final AlertDialog alertDialog, View view2) {
        Drawable imageDrawable;
        Drawable imageDrawable2;
        Drawable imageDrawable3;
        Drawable imageDrawable4;
        if (this.selectedRadioButtonFromAdapter != null) {
            if (viewPager2.getCurrentItem() != this.lmsQuestionConfigDataBeanList.size() - 1) {
                for (LmsQuestionOptionDataBean lmsQuestionOptionDataBean : this.lmsQuestionConfigDataBeanList.get(this.quePosition.intValue()).getOptions()) {
                    if (lmsQuestionOptionDataBean.getCorrect().booleanValue() && (lmsQuestionOptionDataBean.getOptionTitle().equals(this.selectedRadioButtonFromAdapter.getText().toString()) || UtilBean.getMyLabel(lmsQuestionOptionDataBean.getOptionTitle()).equals(this.selectedRadioButtonFromAdapter.getText().toString()))) {
                        this.isCorrectOptionSelected = true;
                        this.optionCorrectFeedback = lmsQuestionOptionDataBean.getOptionFeedback().getFeedbackValue();
                        this.optionCorrectFeedbackBean = lmsQuestionOptionDataBean.getOptionFeedback();
                    } else if (!lmsQuestionOptionDataBean.getCorrect().booleanValue() && (lmsQuestionOptionDataBean.getOptionTitle().equals(this.selectedRadioButtonFromAdapter.getText().toString()) || UtilBean.getMyLabel(lmsQuestionOptionDataBean.getOptionTitle()).equals(this.selectedRadioButtonFromAdapter.getText().toString()))) {
                        this.isCorrectOptionSelected = false;
                        this.optionInCorrectFeedback = lmsQuestionOptionDataBean.getOptionFeedback().getFeedbackValue();
                        this.optionInCorrectFeedbackBean = lmsQuestionOptionDataBean.getOptionFeedback();
                    }
                }
                if (this.isCorrectOptionSelected.booleanValue()) {
                    ((AppCompatTextView) view.findViewById(R.id.tvOptionTitle)).setText(Html.fromHtml("<font color='#03C988'><b>Great! Your answer is correct</b></font>"));
                    ((AppCompatTextView) view.findViewById(R.id.tvOptionFeedback)).setText(this.optionCorrectFeedback);
                    ((MaterialButton) view.findViewById(R.id.buttonAlert)).setText(getResources().getString(R.string.ok));
                    if (this.optionCorrectFeedbackBean != null && (imageDrawable4 = MyStaticComponents.getImageDrawable(this.context, this.optionCorrectFeedbackBean.getMediaId(), this.optionCorrectFeedbackBean.getMediaName())) != null) {
                        ((AppCompatImageView) view.findViewById(R.id.ivOptionImage)).setVisibility(0);
                        ((AppCompatImageView) view.findViewById(R.id.ivOptionImage)).setImageDrawable(imageDrawable4);
                    }
                    view.findViewById(R.id.buttonAlert).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            this.f$0.m256x958faa25(viewPager2, alertDialog, view3);
                        }
                    });
                } else {
                    ((AppCompatTextView) view.findViewById(R.id.tvOptionTitle)).setText(Html.fromHtml("<font color='#F94A29'><b>Oops! Your answer is incorrect</b></font>"));
                    ((AppCompatTextView) view.findViewById(R.id.tvOptionFeedback)).setText(this.optionInCorrectFeedback);
                    ((MaterialButton) view.findViewById(R.id.buttonAlert)).setText(getResources().getString(R.string.ok));
                    if (this.optionInCorrectFeedbackBean != null && (imageDrawable3 = MyStaticComponents.getImageDrawable(this.context, this.optionInCorrectFeedbackBean.getMediaId(), this.optionInCorrectFeedbackBean.getMediaName())) != null) {
                        ((AppCompatImageView) view.findViewById(R.id.ivOptionImage)).setVisibility(0);
                        ((AppCompatImageView) view.findViewById(R.id.ivOptionImage)).setImageDrawable(imageDrawable3);
                    }
                    view.findViewById(R.id.buttonAlert).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            alertDialog.dismiss();
                        }
                    });
                }
            } else {
                for (LmsQuestionOptionDataBean lmsQuestionOptionDataBean2 : this.lmsQuestionConfigDataBeanList.get(this.quePosition.intValue()).getOptions()) {
                    if (lmsQuestionOptionDataBean2.getCorrect().booleanValue() && (lmsQuestionOptionDataBean2.getOptionTitle().equals(this.selectedRadioButtonFromAdapter.getText().toString()) || UtilBean.getMyLabel(lmsQuestionOptionDataBean2.getOptionTitle()).equals(this.selectedRadioButtonFromAdapter.getText().toString()))) {
                        this.isCorrectOptionSelected = true;
                        this.optionCorrectFeedback = lmsQuestionOptionDataBean2.getOptionFeedback().getFeedbackValue();
                    } else if (!lmsQuestionOptionDataBean2.getCorrect().booleanValue() && (lmsQuestionOptionDataBean2.getOptionTitle().equals(this.selectedRadioButtonFromAdapter.getText().toString()) || UtilBean.getMyLabel(lmsQuestionOptionDataBean2.getOptionTitle()).equals(this.selectedRadioButtonFromAdapter.getText().toString()))) {
                        this.isCorrectOptionSelected = false;
                        this.optionInCorrectFeedback = lmsQuestionOptionDataBean2.getOptionFeedback().getFeedbackValue();
                    }
                }
                if (this.isCorrectOptionSelected.booleanValue()) {
                    ((AppCompatTextView) view.findViewById(R.id.tvOptionTitle)).setText(Html.fromHtml("<font color='#03C988'><b>Great! Your answer is correct</b></font>"));
                    ((AppCompatTextView) view.findViewById(R.id.tvOptionFeedback)).setText(this.optionCorrectFeedback);
                    ((MaterialButton) view.findViewById(R.id.buttonAlert)).setText(getResources().getString(R.string.ok));
                    if (this.optionCorrectFeedbackBean != null && (imageDrawable2 = MyStaticComponents.getImageDrawable(this.context, this.optionCorrectFeedbackBean.getMediaId(), this.optionCorrectFeedbackBean.getMediaName())) != null) {
                        ((AppCompatImageView) view.findViewById(R.id.ivOptionImage)).setVisibility(0);
                        ((AppCompatImageView) view.findViewById(R.id.ivOptionImage)).setImageDrawable(imageDrawable2);
                    }
                    view.findViewById(R.id.buttonAlert).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity$$ExternalSyntheticLambda3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            this.f$0.m257xbe0c8963(alertDialog, view3);
                        }
                    });
                } else {
                    ((AppCompatTextView) view.findViewById(R.id.tvOptionTitle)).setText(Html.fromHtml("<font color='#F94A29'><b>Oops! Your answer is incorrect</b></font>"));
                    ((AppCompatTextView) view.findViewById(R.id.tvOptionFeedback)).setText(this.optionInCorrectFeedback);
                    ((MaterialButton) view.findViewById(R.id.buttonAlert)).setText(getResources().getString(R.string.ok));
                    if (this.optionInCorrectFeedbackBean != null && (imageDrawable = MyStaticComponents.getImageDrawable(this.context, this.optionInCorrectFeedbackBean.getMediaId(), this.optionInCorrectFeedbackBean.getMediaName())) != null) {
                        ((AppCompatImageView) view.findViewById(R.id.ivOptionImage)).setVisibility(0);
                        ((AppCompatImageView) view.findViewById(R.id.ivOptionImage)).setImageDrawable(imageDrawable);
                    }
                    view.findViewById(R.id.buttonAlert).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity$$ExternalSyntheticLambda4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            alertDialog.dismiss();
                        }
                    });
                }
            }
            if (alertDialog.getWindow() != null) {
                alertDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            }
            alertDialog.show();
            return;
        }
        SewaUtil.generateToast(this, "Please select at least one option");
    }

    /* renamed from: lambda$setupViewPager$2$com-argusoft-sewa-android-app-activity-LmsSimulationActivity, reason: not valid java name */
    /* synthetic */ void m256x958faa25(ViewPager2 viewPager2, AlertDialog alertDialog, View view) {
        viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1, true);
        this.selectedRadioButtonFromAdapter = null;
        alertDialog.dismiss();
    }

    /* renamed from: lambda$setupViewPager$4$com-argusoft-sewa-android-app-activity-LmsSimulationActivity, reason: not valid java name */
    /* synthetic */ void m257xbe0c8963(AlertDialog alertDialog, View view) {
        if (testAndSetLmsAnswerDataBean().booleanValue()) {
            alertDialog.dismiss();
            showSubmitAlertDialog();
        }
    }

    private void showSubmitAlertDialog() {
        Date date = new Date();
        this.endDate = date;
        this.alertDialog = new AlertDialog.Builder(this).setTitle(Html.fromHtml("<font color='#0081B4'><b>Well Done!!</b></font>")).setMessage(String.format("%s %s, %s", "You have successfully completed the quiz in", UtilBean.getTimeSpentFromMillis(Long.valueOf(date.getTime() - this.startDate.getTime())), "Please click on submit to submit your answers")).setCancelable(true).setPositiveButton(GlobalTypes.EVENT_SUBMIT, new DialogInterface.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m259x2484026c(dialogInterface, i);
            }
        }).show();
    }

    /* renamed from: lambda$showSubmitAlertDialog$7$com-argusoft-sewa-android-app-activity-LmsSimulationActivity, reason: not valid java name */
    /* synthetic */ void m259x2484026c(DialogInterface dialogInterface, int i) {
        saveQuizAndFinish();
        this.alertDialog.dismiss();
    }

    private Boolean testAndSetLmsAnswerDataBean() {
        for (LmsQuestionConfigDataBean lmsQuestionConfigDataBean : this.sectionData.getScenarioQuestions()) {
            RadioGroup radioGroup = this.radioGroupMapFromAdapter.get(lmsQuestionConfigDataBean.getId());
            if (radioGroup == null || radioGroup.getCheckedRadioButtonId() == -1) {
                return false;
            }
            LmsQuestionAnswerDataBean lmsQuestionAnswerDataBean = new LmsQuestionAnswerDataBean();
            lmsQuestionAnswerDataBean.setQueId(lmsQuestionConfigDataBean.getId());
            lmsQuestionAnswerDataBean.setQueTitle(lmsQuestionConfigDataBean.getQuestionTitle());
            RadioButton radioButton = (RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId());
            for (LmsQuestionOptionDataBean lmsQuestionOptionDataBean : lmsQuestionConfigDataBean.getOptions()) {
                if (Boolean.TRUE.equals(lmsQuestionOptionDataBean.getCorrect())) {
                    lmsQuestionAnswerDataBean.setCorrectAnswer(lmsQuestionOptionDataBean.getOptionTitle());
                }
                if (lmsQuestionOptionDataBean.getOptionTitle().equals(radioButton.getText().toString()) || UtilBean.getMyLabel(lmsQuestionOptionDataBean.getOptionTitle()).equals(radioButton.getText().toString())) {
                    lmsQuestionAnswerDataBean.setAnswer(lmsQuestionOptionDataBean.getOptionTitle());
                }
            }
            this.answerMap.put(lmsQuestionConfigDataBean.getId(), lmsQuestionAnswerDataBean);
        }
        return true;
    }

    private void saveQuizAndFinish() {
        LmsQuestionSetAnswerDataBean lmsQuestionSetAnswerDataBean = new LmsQuestionSetAnswerDataBean();
        lmsQuestionSetAnswerDataBean.setUserId(Integer.valueOf(SewaTransformer.loginBean.getUserID().intValue()));
        lmsQuestionSetAnswerDataBean.setQuestionSetId(this.questionSet.getActualId());
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
                    next.setLatestScore(0);
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
            lmsUserQuizMetaData.setLatestScore(0);
            arrayList.add(lmsUserQuizMetaData);
        }
        if (lmsUserMetaDataByCourseId == null) {
            lmsUserMetaDataByCourseId = new LmsUserMetaData();
        }
        lmsUserMetaDataByCourseId.setQuizMetaData(arrayList);
        this.lmsService.createLmsUserMetaDataBean(new LmsUserMetaDataBean(lmsUserMetaDataByCourseId));
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.id.menu_refresh).setVisible(false);
        menu.findItem(R.id.menu_about).setVisible(false);
        menu.findItem(R.id.menu_home).setVisible(false);
        return true;
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        if (menuItem.getItemId() != R.id.menu_home) {
            return false;
        }
        navigateToHomeScreen(false);
        finish();
        return true;
    }

    @Override // com.argusoft.sewa.android.app.lms.IGetCaseStudyInterface
    public void getAnswersOfCaseStudy(Map<Integer, RadioGroup> map, Integer num, RadioButton radioButton) {
        this.quePosition = num;
        this.selectedRadioButtonFromAdapter = radioButton;
        this.radioGroupMapFromAdapter = map;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyVideoView myVideoView;
        if (this.isFullScreen && this.sectionData.getMediaType().equals(LmsConstants.MEDIA_TYPE_VIDEO) && (myVideoView = this.myVideoView) != null) {
            myVideoView.setFullscreen(false);
        }
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.CLOSE_QUESTION_MODULE_ACTIVITY, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LmsSimulationActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m255x32fbd89e(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$8$com-argusoft-sewa-android-app-activity-LmsSimulationActivity, reason: not valid java name */
    /* synthetic */ void m255x32fbd89e(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            finish();
        } else {
            this.myAlertDialog.dismiss();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() throws IllegalStateException {
        super.onPause();
        MediaPlayer mediaPlayer = this.audioMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.pause();
        }
    }
}
