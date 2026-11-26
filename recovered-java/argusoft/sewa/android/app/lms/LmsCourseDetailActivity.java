package com.argusoft.sewa.android.app.lms;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.FileProvider;
import androidx.viewpager.widget.ViewPager;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.CustomImageViewerActivity_;
import com.argusoft.sewa.android.app.activity.CustomPDFViewerActivity_;
import com.argusoft.sewa.android.app.activity.LmsInteractiveQuestionModuleActivity_;
import com.argusoft.sewa.android.app.activity.LmsQuestionModuleActivity_;
import com.argusoft.sewa.android.app.activity.LmsSimulationActivity_;
import com.argusoft.sewa.android.app.activity.LoginActivity_;
import com.argusoft.sewa.android.app.activity.MenuActivity;
import com.argusoft.sewa.android.app.component.LMSFeedbackComponent;
import com.argusoft.sewa.android.app.component.MyAudioComponent;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.argusoft.sewa.android.app.core.impl.LmsDownloadServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.BookmarkDataBean;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsCourseImageDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.lms.MyVideoView;
import com.argusoft.sewa.android.app.model.LmsBookMarkBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class LmsCourseDetailActivity extends MenuActivity {
    private static final String TAG = "LmsCourseDetailActivity";
    private MediaPlayer audioMediaPlayer;
    private LmsBookmarksFragment bookmarksFragment;
    private LinearLayout bookmarksListLayout;
    private Integer courseId;
    private int currentPosition;
    private LMSFeedbackComponent feedbackAlert;
    SewaFhsServiceImpl fhsService;
    private FrameLayout lessonLayout;
    LmsDownloadServiceImpl lmsDownloadService;
    LmsServiceImpl lmsService;
    private MyVideoView myVideoView;
    private LmsCourseDataBean selectedCourse;
    private LmsLessonDataBean selectedLesson;
    private LmsTopicDataBean selectedModule;
    private Date sessionStartDate;
    private TabLayout tabLayout;
    private ImageButton videoRightButton;
    private LinearLayout videoRightLayout;
    private ViewPager viewPager;
    private boolean isRightLayoutShown = false;
    private boolean isFullScreen = false;
    private final Context mContext = this;
    private String fileName = null;
    private boolean isAudioRecording = false;
    private MediaRecorder recorder = null;
    private List<Timer> caseStudyTimerList = new ArrayList();
    private int positionForTranscript = 0;

    public LmsCourseDataBean getSelectedCourse() {
        return this.selectedCourse;
    }

    public LmsTopicDataBean getSelectedModule() {
        return this.selectedModule;
    }

    public LmsLessonDataBean getSelectedLesson() {
        return this.selectedLesson;
    }

    public void setSelectedModule(LmsTopicDataBean lmsTopicDataBean) {
        this.selectedModule = lmsTopicDataBean;
    }

    public void setPositionForTranscript(int i) {
        this.positionForTranscript = i;
    }

    public void setSelectedLesson(LmsLessonDataBean lmsLessonDataBean) {
        MediaPlayer mediaPlayer;
        MyVideoView myVideoView;
        if (this.selectedLesson == null || !lmsLessonDataBean.getActualId().equals(this.selectedLesson.getActualId())) {
            LmsLessonDataBean lmsLessonDataBean2 = this.selectedLesson;
            if (lmsLessonDataBean2 != null && lmsLessonDataBean2.getMediaType().equals(LmsConstants.MEDIA_TYPE_VIDEO) && (myVideoView = this.myVideoView) != null) {
                int currentPosition = myVideoView.getCurrentPosition();
                this.currentPosition = currentPosition;
                if (currentPosition != 0 && currentPosition != this.myVideoView.getDuration()) {
                    this.lmsService.updateLastPausedOnForMedia(Integer.valueOf(this.currentPosition), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
                    this.lmsService.addSessionsForMedia(this.sessionStartDate, new Date(), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
                }
            } else {
                LmsLessonDataBean lmsLessonDataBean3 = this.selectedLesson;
                if (lmsLessonDataBean3 != null && lmsLessonDataBean3.getMediaType().equals("AUDIO") && (mediaPlayer = this.audioMediaPlayer) != null) {
                    this.currentPosition = mediaPlayer.getCurrentPosition();
                    this.audioMediaPlayer.pause();
                    int i = this.currentPosition;
                    if (i != 0 && i != this.audioMediaPlayer.getDuration()) {
                        this.lmsService.updateLastPausedOnForMedia(Integer.valueOf(this.currentPosition), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
                        this.lmsService.addSessionsForMedia(this.sessionStartDate, new Date(), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
                    }
                }
            }
            this.selectedLesson = lmsLessonDataBean;
            addLessonView();
            startNextLessonDownload();
        }
    }

    public void startNextLessonDownload() throws UnsupportedEncodingException {
        LmsCourseDataBean lmsCourseDataBean = this.selectedCourse;
        if (lmsCourseDataBean == null || lmsCourseDataBean.getTopics() == null || this.selectedCourse.getTopics().isEmpty()) {
            return;
        }
        boolean z = false;
        for (LmsTopicDataBean lmsTopicDataBean : this.selectedCourse.getTopics()) {
            if (lmsTopicDataBean.getTopicMedias() != null && !lmsTopicDataBean.getTopicMedias().isEmpty()) {
                for (LmsLessonDataBean lmsLessonDataBean : lmsTopicDataBean.getTopicMedias()) {
                    if (z || !lmsLessonDataBean.getActualId().equals(this.selectedLesson.getActualId())) {
                        startFileDownloadForLesson(lmsLessonDataBean);
                        return;
                    }
                    z = true;
                }
            }
        }
    }

    public void startFileDownloadForLesson(LmsLessonDataBean lmsLessonDataBean) throws UnsupportedEncodingException {
        String lMSFileName = UtilBean.getLMSFileName(lmsLessonDataBean.getMediaId(), lmsLessonDataBean.getMediaFileName());
        if (UtilBean.isFileExists(SewaConstants.DIR_LMS + lMSFileName)) {
            return;
        }
        this.lmsDownloadService.startFileDownloading(this.context, lmsLessonDataBean.getMediaId(), lMSFileName);
    }

    public MyVideoView getVideoView() {
        return this.myVideoView;
    }

    public Integer pauseMediaPlayerAndGetPosition() throws IllegalStateException {
        MyVideoView myVideoView = this.myVideoView;
        if (myVideoView != null) {
            myVideoView.pause();
            return Integer.valueOf(this.myVideoView.getCurrentPosition());
        }
        return -1;
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws Resources.NotFoundException {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        setContentView(R.layout.activity_lms_course_detail);
        getDataFromBundle();
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IllegalStateException {
        MyVideoView myVideoView;
        int i;
        super.onResume();
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        LmsLessonDataBean lmsLessonDataBean = this.selectedLesson;
        if (lmsLessonDataBean == null || !lmsLessonDataBean.getMediaType().equals(LmsConstants.MEDIA_TYPE_VIDEO) || (myVideoView = this.myVideoView) == null || (i = this.positionForTranscript) == 0) {
            return;
        }
        myVideoView.seekTo(i);
    }

    public void getDataFromBundle() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.courseId = Integer.valueOf(extras.getInt(FieldNameConstants.COURSE_ID));
        }
    }

    private void initView() throws Resources.NotFoundException {
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        fetchSelectedCourse();
    }

    public void fetchSelectedCourse() throws Resources.NotFoundException {
        LmsCourseDataBean lmsCourseDataBeanRetrieveCourseByCourseId = this.lmsService.retrieveCourseByCourseId(this.courseId);
        this.selectedCourse = lmsCourseDataBeanRetrieveCourseByCourseId;
        this.lmsService.markCourseDataViewed(this.courseId, lmsCourseDataBeanRetrieveCourseByCourseId.getTopics(), this.selectedCourse.getQuestionSet());
        setBodyDetail();
    }

    public void setBodyDetail() throws Resources.NotFoundException {
        LmsCourseDataBean lmsCourseDataBean = this.selectedCourse;
        if (lmsCourseDataBean == null) {
            SewaUtil.generateToast(this.mContext, LabelConstants.ERROR_OCCURRED_SO_TRY_AGAIN);
            finish();
        } else {
            setTitle(lmsCourseDataBean.getCourseName());
            addMainLayout();
        }
    }

    public void addMainLayout() throws Resources.NotFoundException {
        this.lessonLayout = (FrameLayout) findViewById(R.id.lesson_view);
        LmsCourseDataBean lmsCourseDataBean = this.selectedCourse;
        if (lmsCourseDataBean != null && lmsCourseDataBean.getCourseImage() != null) {
            LmsCourseImageDataBean courseImage = this.selectedCourse.getCourseImage();
            if (courseImage.getMediaId() != null) {
                String str = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(courseImage.getMediaId(), courseImage.getMediaName());
                if (UtilBean.isFileExists(str)) {
                    this.lessonLayout.setBackground(Drawable.createFromPath(str));
                }
            }
        }
        this.viewPager = (ViewPager) findViewById(R.id.lms_view_pager);
        TabLayout tabLayout = (TabLayout) findViewById(R.id.lms_tabs);
        this.tabLayout = tabLayout;
        tabLayout.addTab(tabLayout.newTab());
        TabLayout tabLayout2 = this.tabLayout;
        tabLayout2.addTab(tabLayout2.newTab());
        TabLayout tabLayout3 = this.tabLayout;
        tabLayout3.addTab(tabLayout3.newTab());
        setupViewPager(this.viewPager);
        this.tabLayout.setupWithViewPager(this.viewPager);
        setupTabIcons();
    }

    private void setupViewPager(ViewPager viewPager) throws Resources.NotFoundException {
        LmsFragmentPagerAdaptor lmsFragmentPagerAdaptor = new LmsFragmentPagerAdaptor(getSupportFragmentManager());
        LmsContentFragment lmsContentFragmentNewInstance = LmsContentFragment.newInstance();
        LmsOverviewFragment lmsOverviewFragmentNewInstance = LmsOverviewFragment.newInstance();
        this.bookmarksFragment = LmsBookmarksFragment.newInstance();
        lmsFragmentPagerAdaptor.addFrag(lmsContentFragmentNewInstance, UtilBean.getMyLabel("Contents"));
        lmsFragmentPagerAdaptor.addFrag(lmsOverviewFragmentNewInstance, UtilBean.getMyLabel("Overview"));
        lmsFragmentPagerAdaptor.addFrag(this.bookmarksFragment, UtilBean.getMyLabel("Bookmarks"));
        viewPager.setAdapter(lmsFragmentPagerAdaptor);
    }

    private void setupTabIcons() {
        TabLayout.Tab tabAt = this.tabLayout.getTabAt(0);
        if (tabAt != null) {
            tabAt.setIcon(R.drawable.ic_contents);
        }
        TabLayout.Tab tabAt2 = this.tabLayout.getTabAt(1);
        if (tabAt2 != null) {
            tabAt2.setIcon(R.drawable.ic_info);
        }
        TabLayout.Tab tabAt3 = this.tabLayout.getTabAt(2);
        if (tabAt3 != null) {
            tabAt3.setIcon(R.drawable.ic_bookmarks);
        }
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        MediaPlayer mediaPlayer;
        MyVideoView myVideoView;
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        if (menuItem.getItemId() != R.id.menu_home) {
            return false;
        }
        LmsLessonDataBean lmsLessonDataBean = this.selectedLesson;
        if (lmsLessonDataBean != null && lmsLessonDataBean.getMediaType().equals(LmsConstants.MEDIA_TYPE_VIDEO) && (myVideoView = this.myVideoView) != null) {
            int currentPosition = myVideoView.getCurrentPosition();
            this.currentPosition = currentPosition;
            if (currentPosition != 0 && currentPosition != this.myVideoView.getDuration()) {
                this.lmsService.updateLastPausedOnForMedia(Integer.valueOf(this.currentPosition), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
                this.lmsService.addSessionsForMedia(this.sessionStartDate, new Date(), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
            }
        } else {
            LmsLessonDataBean lmsLessonDataBean2 = this.selectedLesson;
            if (lmsLessonDataBean2 != null && lmsLessonDataBean2.getMediaType().equals("AUDIO") && (mediaPlayer = this.audioMediaPlayer) != null) {
                int currentPosition2 = mediaPlayer.getCurrentPosition();
                this.currentPosition = currentPosition2;
                if (currentPosition2 != 0 && currentPosition2 != this.audioMediaPlayer.getDuration()) {
                    this.lmsService.updateLastPausedOnForMedia(Integer.valueOf(this.currentPosition), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
                    this.lmsService.addSessionsForMedia(this.sessionStartDate, new Date(), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
                }
            }
        }
        navigateToHomeScreen(false);
        finish();
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MediaPlayer mediaPlayer;
        MyVideoView myVideoView;
        LmsLessonDataBean lmsLessonDataBean;
        if (this.isFullScreen && (lmsLessonDataBean = this.selectedLesson) != null && lmsLessonDataBean.getMediaType().equals(LmsConstants.MEDIA_TYPE_VIDEO)) {
            this.myVideoView.setFullscreen(false);
            return;
        }
        super.onBackPressed();
        LmsLessonDataBean lmsLessonDataBean2 = this.selectedLesson;
        if (lmsLessonDataBean2 != null && lmsLessonDataBean2.getMediaType().equals(LmsConstants.MEDIA_TYPE_VIDEO) && (myVideoView = this.myVideoView) != null) {
            int currentPosition = myVideoView.getCurrentPosition();
            this.currentPosition = currentPosition;
            if (currentPosition == 0 || currentPosition == this.myVideoView.getDuration()) {
                return;
            }
            this.lmsService.updateLastPausedOnForMedia(Integer.valueOf(this.currentPosition), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
            this.lmsService.addSessionsForMedia(this.sessionStartDate, new Date(), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
            return;
        }
        LmsLessonDataBean lmsLessonDataBean3 = this.selectedLesson;
        if (lmsLessonDataBean3 == null || !lmsLessonDataBean3.getMediaType().equals("AUDIO") || (mediaPlayer = this.audioMediaPlayer) == null) {
            return;
        }
        int currentPosition2 = mediaPlayer.getCurrentPosition();
        this.currentPosition = currentPosition2;
        if (currentPosition2 == 0 || currentPosition2 == this.audioMediaPlayer.getDuration()) {
            return;
        }
        this.lmsService.updateLastPausedOnForMedia(Integer.valueOf(this.currentPosition), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
        this.lmsService.addSessionsForMedia(this.sessionStartDate, new Date(), this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.courseId);
    }

    public List<LmsBookMarkBean> getBookmarks() {
        LmsLessonDataBean lmsLessonDataBean = this.selectedLesson;
        if (lmsLessonDataBean != null) {
            this.lmsService.retrieveBookmarks(lmsLessonDataBean.getActualId());
        }
        return Collections.emptyList();
    }

    public void addLessonView() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.lessonLayout.removeAllViews();
        String str = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(this.selectedLesson.getMediaId(), this.selectedLesson.getMediaFileName());
        if (!UtilBean.isFileExists(str)) {
            SewaUtil.generateToast(this.mContext, UtilBean.getMyLabel("File not found. Please refresh and try again."));
        }
        String mediaType = this.selectedLesson.getMediaType();
        mediaType.hashCode();
        switch (mediaType) {
            case "PDF":
                addPdfLesson(str, this.selectedLesson);
                break;
            case "AUDIO":
                addAudioLesson(str, this.selectedLesson);
                break;
            case "IMAGE":
                addImageLesson(str, this.selectedLesson);
                break;
            case "VIDEO":
                addVideoLesson(str, this.selectedLesson);
                break;
        }
    }

    private void addVideoLesson(final String str, LmsLessonDataBean lmsLessonDataBean) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        File file = new File(str);
        if (file.exists()) {
            if (!UtilBean.videoFileIsCorrupted(this.mContext, str)) {
                SewaUtil.generateToast(this.mContext, UtilBean.getMyLabel("Some error occurred. Please refresh and try again."));
                UtilBean.deleteFile(str);
                return;
            }
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.mContext).inflate(R.layout.lms_universal_video_view, (ViewGroup) null);
            Uri uriForFile = FileProvider.getUriForFile(this.mContext, this.mContext.getApplicationContext().getPackageName() + ".provider", file);
            this.myVideoView = (MyVideoView) frameLayout.findViewById(R.id.videoView);
            MyVideoMediaController myVideoMediaController = (MyVideoMediaController) frameLayout.findViewById(R.id.media_controller);
            this.videoRightButton = (ImageButton) frameLayout.findViewById(R.id.right_menu);
            this.videoRightLayout = (LinearLayout) frameLayout.findViewById(R.id.right_menu_layout);
            this.myVideoView.setMediaController(myVideoMediaController);
            myVideoMediaController.setProgressBarEnabled(!isBaselineCourse(this.selectedCourse.getCourseId()));
            this.lessonLayout.addView(frameLayout);
            setRightLayoutInVideo();
            this.videoRightButton.setVisibility(8);
            this.myVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseDetailActivity.1
                @Override // android.media.MediaPlayer.OnErrorListener
                public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    SewaUtil.generateToast(LmsCourseDetailActivity.this.mContext, UtilBean.getMyLabel("Some error occurred. Please refresh and try again."));
                    UtilBean.deleteFile(str);
                    return false;
                }
            });
            setVideoCallback(this.myVideoView);
            myVideoMediaController.setTitle(lmsLessonDataBean.getTitle());
            this.myVideoView.setVideoURI(uriForFile);
            this.myVideoView.seekTo(this.lmsService.getLastPausedOn(this.selectedLesson.getActualId()).intValue());
            this.myVideoView.start();
            setCaseStudyQuizInVideo();
            Date date = new Date();
            this.sessionStartDate = date;
            this.lmsService.updateStartDateForMedia(date, this.selectedLesson.getActualId(), this.selectedLesson.getTopicId(), this.selectedCourse.getCourseId());
            this.myVideoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseDetailActivity.2
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    LmsCourseDetailActivity.this.lmsService.markLessonCompleted(LmsCourseDetailActivity.this.selectedLesson.getActualId(), LmsCourseDetailActivity.this.selectedLesson.getTopicId(), LmsCourseDetailActivity.this.courseId);
                    LmsCourseDetailActivity.this.lmsService.updateLastPausedOnForMedia(null, LmsCourseDetailActivity.this.selectedLesson.getActualId(), LmsCourseDetailActivity.this.selectedLesson.getTopicId(), LmsCourseDetailActivity.this.courseId);
                    LmsCourseDetailActivity.this.lmsService.updateEndDateForMedia(new Date(), LmsCourseDetailActivity.this.selectedLesson.getActualId(), LmsCourseDetailActivity.this.selectedLesson.getTopicId(), LmsCourseDetailActivity.this.courseId);
                    LmsCourseDetailActivity.this.lmsService.addSessionsForMedia(LmsCourseDetailActivity.this.sessionStartDate, new Date(), LmsCourseDetailActivity.this.selectedLesson.getActualId(), LmsCourseDetailActivity.this.selectedLesson.getTopicId(), LmsCourseDetailActivity.this.courseId);
                    if (LmsCourseDetailActivity.this.isFullScreen) {
                        LmsCourseDetailActivity.this.myVideoView.setFullscreen(false);
                    }
                    LmsCourseDetailActivity.this.currentPosition = 0;
                    LmsCourseDetailActivity.this.sessionStartDate = null;
                    LmsCourseDetailActivity.this.askForFeedback();
                }
            });
            return;
        }
        SewaUtil.generateToast(this.mContext, UtilBean.getMyLabel("File not found. Please refresh and try again."));
    }

    private void setCaseStudyQuizInVideo() {
        if (!this.caseStudyTimerList.isEmpty()) {
            Iterator<Timer> it = this.caseStudyTimerList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.caseStudyTimerList = new ArrayList();
        }
        if (this.selectedLesson.getQuestionSet() == null || this.selectedLesson.getQuestionSet().isEmpty()) {
            return;
        }
        for (final LmsQuestionSetDataBean lmsQuestionSetDataBean : this.selectedLesson.getQuestionSet()) {
            if (lmsQuestionSetDataBean.getQuizAtSecond() != null) {
                final Timer timer = new Timer();
                timer.scheduleAtFixedRate(new TimerTask() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseDetailActivity.3
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() throws IllegalStateException {
                        Intent intent;
                        if (LmsCourseDetailActivity.this.myVideoView != null && LmsCourseDetailActivity.this.myVideoView.isPlaying() && LmsCourseDetailActivity.this.myVideoView.getCurrentPosition() / 1000 == lmsQuestionSetDataBean.getQuizAtSecond().intValue()) {
                            LmsCourseDetailActivity.this.myVideoView.pause();
                            LmsCourseDetailActivity lmsCourseDetailActivity = LmsCourseDetailActivity.this;
                            lmsCourseDetailActivity.positionForTranscript = lmsCourseDetailActivity.myVideoView.getCurrentPosition();
                            if (LmsCourseDetailActivity.this.selectedCourse.getTestConfigJson() == null || !Boolean.TRUE.equals(LmsCourseDetailActivity.this.selectedCourse.getTestConfigJson().get(lmsQuestionSetDataBean.getQuestionSetType()).getProvideInteractiveFeedbackAfterEachQuestion())) {
                                if (LmsCourseDetailActivity.this.selectedCourse != null && LmsCourseDetailActivity.this.selectedCourse.getTestConfigJson() != null && lmsQuestionSetDataBean.getQuestionSetType().intValue() == 2468) {
                                    intent = new Intent(LmsCourseDetailActivity.this.context, (Class<?>) LmsSimulationActivity_.class);
                                } else {
                                    intent = new Intent(LmsCourseDetailActivity.this.mContext, (Class<?>) LmsQuestionModuleActivity_.class);
                                }
                            } else {
                                intent = new Intent(LmsCourseDetailActivity.this.mContext, (Class<?>) LmsInteractiveQuestionModuleActivity_.class);
                            }
                            intent.putExtra("questionSet", new Gson().toJson(lmsQuestionSetDataBean));
                            intent.putExtra("testFor", LmsCourseDetailActivity.this.selectedLesson.getTitle());
                            LmsCourseDetailActivity.this.startActivityForResult(intent, 1019);
                            timer.cancel();
                        }
                    }
                }, 1000L, 1000L);
                this.caseStudyTimerList.add(timer);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void askForFeedback() {
        LmsViewedMediaBean viewedLessonById;
        if (Boolean.TRUE.equals(this.selectedLesson.getUserFeedbackRequired()) && (viewedLessonById = this.lmsService.getViewedLessonById(this.selectedLesson.getActualId())) != null && Boolean.TRUE.equals(viewedLessonById.getCompleted()) && viewedLessonById.getUserFeedback() == null) {
            LMSFeedbackComponent lMSFeedbackComponent = new LMSFeedbackComponent(this.mContext, this.lmsService, viewedLessonById);
            this.feedbackAlert = lMSFeedbackComponent;
            lMSFeedbackComponent.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRightLayoutInVideo() {
        this.videoRightButton.setImageResource(R.drawable.ic_arrow_left);
        this.isRightLayoutShown = false;
        this.videoRightButton.setVisibility(0);
        this.videoRightButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseDetailActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws IllegalStateException {
                if (LmsCourseDetailActivity.this.isRightLayoutShown) {
                    LmsCourseDetailActivity.this.isRightLayoutShown = false;
                    LmsCourseDetailActivity.this.videoRightButton.setImageResource(R.drawable.ic_arrow_left);
                    LmsCourseDetailActivity.this.videoRightLayout.setVisibility(8);
                    if (LmsCourseDetailActivity.this.myVideoView.isPlaying()) {
                        return;
                    }
                    LmsCourseDetailActivity.this.myVideoView.start();
                    return;
                }
                LmsCourseDetailActivity.this.isRightLayoutShown = true;
                LmsCourseDetailActivity.this.videoRightButton.setImageResource(R.drawable.ic_arrow_right);
                LmsCourseDetailActivity.this.videoRightLayout.setVisibility(0);
                if (LmsCourseDetailActivity.this.myVideoView.isPlaying()) {
                    LmsCourseDetailActivity.this.myVideoView.pause();
                }
            }
        });
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.mContext, -1, 1, new LinearLayout.LayoutParams(-2, -2));
        this.bookmarksListLayout = linearLayout;
        linearLayout.addView(MyStaticComponents.generateLabelView(this.mContext, "Please select a bookmark"));
        this.bookmarksListLayout.addView(generateBookmarkList(this.selectedLesson.getActualId()));
        this.videoRightLayout.removeAllViews();
        this.videoRightLayout.addView(this.bookmarksListLayout, new LinearLayout.LayoutParams(-1, 0, 0.85f));
        this.videoRightLayout.addView(setBookMarkButton(), new LinearLayout.LayoutParams(-1, 0, 0.15f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PagingListView generateBookmarkList(Integer num) {
        final List<LmsBookMarkBean> listRetrieveBookmarks = this.lmsService.retrieveBookmarks(num);
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseDetailActivity.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) throws IllegalStateException {
                List list = listRetrieveBookmarks;
                if (list != null && i < list.size()) {
                    LmsCourseDetailActivity.this.myVideoView.seekTo(((LmsBookMarkBean) listRetrieveBookmarks.get(i)).getPosition());
                }
                LmsCourseDetailActivity.this.myVideoView.start();
                LmsCourseDetailActivity.this.videoRightButton.callOnClick();
            }
        };
        LmsBookmarksAdaptor lmsBookmarksAdaptor = new LmsBookmarksAdaptor(this.mContext, listRetrieveBookmarks, this.lmsService, this.myVideoView);
        PagingListView pagingListView = new PagingListView(this.mContext);
        pagingListView.setPadding(10, 0, 10, 0);
        pagingListView.setChoiceMode(1);
        pagingListView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        pagingListView.setNestedScrollingEnabled(true);
        pagingListView.setAdapter((ListAdapter) lmsBookmarksAdaptor);
        pagingListView.setOnItemClickListener(onItemClickListener);
        return pagingListView;
    }

    private LinearLayout setBookMarkButton() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(20, 20, 20, 0);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.mContext, -1, 0, layoutParams);
        MaterialButton customButton = MyStaticComponents.getCustomButton(this.mContext, UtilBean.getMyLabel(LabelConstants.ADD_BOOKMARK), -1, layoutParams);
        customButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseDetailActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws IllegalStateException {
                LmsCourseDetailActivity.this.myVideoView.pause();
                LmsCourseDetailActivity lmsCourseDetailActivity = LmsCourseDetailActivity.this;
                lmsCourseDetailActivity.currentPosition = lmsCourseDetailActivity.myVideoView.getCurrentPosition();
                LmsCourseDetailActivity.this.showPopUpWindow(view);
            }
        });
        linearLayout.addView(customButton);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopUpWindow(View view) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.text_popup_window, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, (displayMetrics.widthPixels * 7) / 10, -1, true);
        popupWindow.showAtLocation(view, 17, 0, 0);
        Button button = (Button) viewInflate.findViewById(R.id.popup_button);
        final TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.popup_note);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseDetailActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (((EditText) Objects.requireNonNull(textInputLayout.getEditText())).getText().toString().trim().isEmpty() && LmsCourseDetailActivity.this.fileName == null) {
                    SewaUtil.generateToast(LmsCourseDetailActivity.this.mContext, "Please enter bookmark note");
                    return;
                }
                BookmarkDataBean bookmarkDataBean = new BookmarkDataBean(LmsCourseDetailActivity.this.currentPosition, null, textInputLayout.getEditText().getText().toString().trim(), null);
                if (LmsCourseDetailActivity.this.fileName != null) {
                    bookmarkDataBean.setFileName(LmsCourseDetailActivity.this.fileName);
                }
                LmsCourseDetailActivity.this.lmsService.saveBookmark(LmsCourseDetailActivity.this.selectedLesson.getActualId(), bookmarkDataBean);
                LmsCourseDetailActivity.this.bookmarksListLayout.removeAllViews();
                LmsCourseDetailActivity.this.bookmarksListLayout.addView(MyStaticComponents.generateLabelView(LmsCourseDetailActivity.this.mContext, "Please select a bookmark"));
                LinearLayout linearLayout = LmsCourseDetailActivity.this.bookmarksListLayout;
                LmsCourseDetailActivity lmsCourseDetailActivity = LmsCourseDetailActivity.this;
                linearLayout.addView(lmsCourseDetailActivity.generateBookmarkList(lmsCourseDetailActivity.selectedLesson.getActualId()));
                LmsCourseDetailActivity.this.fileName = null;
                popupWindow.dismiss();
            }
        });
        final ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.mic_button);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseDetailActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws IllegalStateException, IOException {
                if (!LmsCourseDetailActivity.this.isAudioRecording) {
                    try {
                        LmsCourseDetailActivity.this.isAudioRecording = true;
                        if (LmsCourseDetailActivity.this.recorder == null) {
                            LmsCourseDetailActivity.this.recorder = new MediaRecorder();
                        }
                        String str = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
                        LmsCourseDetailActivity.this.fileName = "Record" + str + GlobalTypes.AUDIO_RECORD_FORMAT;
                        LmsCourseDetailActivity.this.recorder.setAudioSource(1);
                        LmsCourseDetailActivity.this.recorder.setOutputFormat(3);
                        LmsCourseDetailActivity.this.recorder.setAudioEncoder(1);
                        LmsCourseDetailActivity.this.recorder.setOutputFile(SewaConstants.DIR_BOOKMARK + LmsCourseDetailActivity.this.fileName);
                        LmsCourseDetailActivity.this.recorder.prepare();
                        LmsCourseDetailActivity.this.recorder.start();
                        imageButton.setImageResource(R.drawable.stop_audio);
                        SewaUtil.generateToast(LmsCourseDetailActivity.this.mContext, "Recording started");
                        return;
                    } catch (IOException e) {
                        e.printStackTrace();
                        return;
                    }
                }
                LmsCourseDetailActivity.this.recorder.stop();
                LmsCourseDetailActivity.this.recorder.reset();
                LmsCourseDetailActivity.this.recorder.release();
                LmsCourseDetailActivity.this.recorder = null;
                imageButton.setImageResource(R.drawable.record_audio);
                SewaUtil.generateToast(LmsCourseDetailActivity.this.mContext, "Audio Recorded successfully");
                LmsCourseDetailActivity.this.isAudioRecording = false;
            }
        });
    }

    private void setVideoCallback(MyVideoView myVideoView) {
        myVideoView.setVideoViewCallback(new MyVideoView.VideoViewCallback() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseDetailActivity.9
            ActionBar actionBar;
            final int cachedHeight;

            {
                this.cachedHeight = LmsCourseDetailActivity.this.lessonLayout.getLayoutParams().height;
            }

            @Override // com.argusoft.sewa.android.app.lms.MyVideoView.VideoViewCallback
            public void onScaleChange(boolean z) {
                LmsCourseDetailActivity.this.isFullScreen = z;
                if (z) {
                    ViewGroup.LayoutParams layoutParams = LmsCourseDetailActivity.this.lessonLayout.getLayoutParams();
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                    LmsCourseDetailActivity.this.lessonLayout.setLayoutParams(layoutParams);
                    LmsCourseDetailActivity.this.viewPager.setVisibility(8);
                    ActionBar supportActionBar = ((LmsCourseDetailActivity) LmsCourseDetailActivity.this.mContext).getSupportActionBar();
                    this.actionBar = supportActionBar;
                    if (supportActionBar != null) {
                        supportActionBar.hide();
                    }
                    LmsCourseDetailActivity.this.setRightLayoutInVideo();
                    return;
                }
                ViewGroup.LayoutParams layoutParams2 = LmsCourseDetailActivity.this.lessonLayout.getLayoutParams();
                layoutParams2.width = -1;
                layoutParams2.height = this.cachedHeight;
                LmsCourseDetailActivity.this.lessonLayout.setLayoutParams(layoutParams2);
                LmsCourseDetailActivity.this.viewPager.setVisibility(0);
                ActionBar supportActionBar2 = ((LmsCourseDetailActivity) LmsCourseDetailActivity.this.mContext).getSupportActionBar();
                this.actionBar = supportActionBar2;
                if (supportActionBar2 != null) {
                    supportActionBar2.show();
                }
                LmsCourseDetailActivity.this.videoRightButton.setVisibility(8);
                LmsCourseDetailActivity.this.videoRightLayout.setVisibility(8);
                LmsCourseDetailActivity.this.bookmarksFragment.initView();
            }

            @Override // com.argusoft.sewa.android.app.lms.MyVideoView.VideoViewCallback
            public void onPause(MediaPlayer mediaPlayer) {
                Log.d(LmsCourseDetailActivity.TAG, "onPause MyVideoView callback");
            }

            @Override // com.argusoft.sewa.android.app.lms.MyVideoView.VideoViewCallback
            public void onStart(MediaPlayer mediaPlayer) {
                Log.d(LmsCourseDetailActivity.TAG, "onStart MyVideoView callback");
                if (LmsCourseDetailActivity.this.sessionStartDate == null) {
                    LmsCourseDetailActivity.this.sessionStartDate = new Date();
                }
            }

            @Override // com.argusoft.sewa.android.app.lms.MyVideoView.VideoViewCallback
            public void onBufferingStart(MediaPlayer mediaPlayer) {
                Log.d(LmsCourseDetailActivity.TAG, "onBufferingStart MyVideoView callback");
            }

            @Override // com.argusoft.sewa.android.app.lms.MyVideoView.VideoViewCallback
            public void onBufferingEnd(MediaPlayer mediaPlayer) {
                Log.d(LmsCourseDetailActivity.TAG, "onBufferingEnd MyVideoView callback");
            }
        });
    }

    private void addAudioLesson(String str, LmsLessonDataBean lmsLessonDataBean) {
        this.audioMediaPlayer = MediaPlayer.create(this, FileProvider.getUriForFile(this, getApplicationContext().getPackageName() + ".provider", new File(str)));
        MyAudioComponent myAudioComponent = new MyAudioComponent(this, lmsLessonDataBean.getTitle(), this.audioMediaPlayer, true, this.lmsService, lmsLessonDataBean, this.selectedCourse.getCourseId());
        myAudioComponent.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        myAudioComponent.setBackgroundResource(R.drawable.lms_my_courses);
        this.lessonLayout.addView(myAudioComponent);
        this.sessionStartDate = new Date();
    }

    private void addImageLesson(String str, LmsLessonDataBean lmsLessonDataBean) {
        Intent intent = new Intent(this, (Class<?>) CustomImageViewerActivity_.class);
        intent.putExtra("path", str);
        intent.putExtra(FieldNameConstants.FILE_NAME, lmsLessonDataBean.getTitle());
        intent.putExtra("fromLms", true);
        intent.putExtra(FieldNameConstants.COURSE_ID, this.selectedCourse.getCourseId());
        intent.putExtra("lesson", new Gson().toJson(lmsLessonDataBean));
        startActivityForResult(intent, 1016);
    }

    private void addPdfLesson(String str, LmsLessonDataBean lmsLessonDataBean) {
        Intent intent = new Intent(this.mContext, (Class<?>) CustomPDFViewerActivity_.class);
        intent.putExtra("path", str);
        intent.putExtra(FieldNameConstants.FILE_NAME, lmsLessonDataBean.getDescription());
        intent.putExtra("fromLms", true);
        intent.putExtra(FieldNameConstants.COURSE_ID, this.selectedCourse.getCourseId());
        intent.putExtra("lesson", new Gson().toJson(lmsLessonDataBean));
        startActivityForResult(intent, 1016);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws IllegalStateException {
        MyVideoView myVideoView;
        MyVideoView myVideoView2;
        super.onActivityResult(i, i2, intent);
        if (i == 1016) {
            this.selectedLesson = null;
            return;
        }
        if (i == 1018 && (myVideoView2 = this.myVideoView) != null && !myVideoView2.isPlaying()) {
            this.myVideoView.seekTo(this.positionForTranscript);
            this.myVideoView.start();
        } else {
            if (i != 1019 || (myVideoView = this.myVideoView) == null || myVideoView.isPlaying()) {
                return;
            }
            this.myVideoView.seekTo(this.positionForTranscript);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() throws IllegalStateException {
        MediaPlayer mediaPlayer;
        super.onPause();
        LmsLessonDataBean lmsLessonDataBean = this.selectedLesson;
        if (lmsLessonDataBean == null || !lmsLessonDataBean.getMediaType().equals("AUDIO") || (mediaPlayer = this.audioMediaPlayer) == null) {
            return;
        }
        this.currentPosition = mediaPlayer.getCurrentPosition();
        this.audioMediaPlayer.pause();
    }

    private boolean isBaselineCourse(Integer num) {
        List list;
        String baselineModuleCourseIds = this.techoService.getBaselineModuleCourseIds();
        return (baselineModuleCourseIds == null || num == null || (list = (List) new Gson().fromJson(baselineModuleCourseIds, new TypeToken<List<Integer>>() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseDetailActivity.10
        }.getType())) == null || !list.contains(num)) ? false : true;
    }
}
