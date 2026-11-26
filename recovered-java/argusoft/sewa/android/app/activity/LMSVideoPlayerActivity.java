package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.MediaController;
import android.widget.PopupWindow;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.LMSFeedbackComponent;
import com.argusoft.sewa.android.app.component.MyAudioPlayer;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.BookmarkDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LmsBookMarkBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.treeview.holder.TreeHolder;
import com.argusoft.sewa.android.app.treeview.model.TreeNode;
import com.argusoft.sewa.android.app.treeview.view.AndroidTreeView;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.MyComparatorUtil;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class LMSVideoPlayerActivity extends MenuActivity implements MediaPlayer.OnCompletionListener, SurfaceHolder.Callback, MediaController.MediaPlayerControl {
    private static final String TAG = "LMSVideoPlayer";
    private LinearLayout bookMarkButtonLayout;
    private Integer courseId;
    private int currentPosition;
    private MaterialTextView descView;
    private LMSFeedbackComponent feedbackAlert;
    SewaFhsServiceImpl fhsService;
    private String fileName;
    private FrameLayout frameLayout;
    private int height;
    private LinearLayout innerLayout;
    private LinearLayout linearLayout1;
    private PagingListView listView;
    LmsServiceImpl lmsService;
    private MediaPlayer mediaPlayer;
    private TextInputLayout note;
    private View openAudioButton;
    private View openImageButton;
    private View openPdfButton;
    private View openVideoButton;
    private LinearLayout parentLayout;
    private LinearLayout parentLayout1;
    private MediaRecorder recorder;
    private LmsLessonDataBean selectedLesson;
    private LmsLessonDataBean selectedVideo;
    private Date sessionStartDate;
    private SurfaceHolder surfaceHolder;
    private SurfaceView surfaceView;
    private View tabBar;
    private int width;
    private boolean openToggle = false;
    private List<LmsBookMarkBean> bookmarkDataBeans = new LinkedList();
    private boolean isAudioRecording = false;

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        return 20;
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(128);
        super.onCreate(bundle);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.height = displayMetrics.heightPixels;
        this.width = displayMetrics.widthPixels;
        this.parentLayout = MyStaticComponents.getLinearLayout(this.context, -1, 0, new LinearLayout.LayoutParams(-1, -1));
        this.frameLayout = new FrameLayout(this.context);
        getDataFromBundle();
        setContentView(this.parentLayout);
    }

    private void getDataFromBundle() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.courseId = Integer.valueOf(extras.getInt(FieldNameConstants.COURSE_ID));
            setDataSourcesForVideo((LmsLessonDataBean) new Gson().fromJson(extras.getString("lesson"), LmsLessonDataBean.class));
        }
    }

    private void setDataSourcesForVideo(LmsLessonDataBean lmsLessonDataBean) {
        this.selectedVideo = lmsLessonDataBean;
        setVideoLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoLayout() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mediaPlayer = mediaPlayer;
        mediaPlayer.setOnCompletionListener(this);
        if (playVideoSequentially()) {
            this.mediaPlayer.setScreenOnWhilePlaying(true);
            SurfaceView surfaceView = new SurfaceView(this);
            this.surfaceView = surfaceView;
            SurfaceHolder holder = surfaceView.getHolder();
            this.surfaceHolder = holder;
            holder.addCallback(this);
            this.surfaceView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            this.frameLayout.addView(this.surfaceView);
            this.frameLayout.addView(createToggle());
            this.parentLayout.addView(this.frameLayout);
            Date date = new Date();
            this.sessionStartDate = date;
            this.lmsService.updateStartDateForMedia(date, this.selectedVideo.getActualId(), this.selectedVideo.getTopicId(), this.courseId);
            return;
        }
        this.parentLayout.addView(MyStaticComponents.generateTitleView(this, LabelConstants.NO_VIDEO_TO_PLAY));
    }

    private View createToggle() {
        final ImageView imageView = new ImageView(this.context);
        imageView.setImageTintList(ContextCompat.getColorStateList(this.context, R.color.colorPrimary));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(70, 70);
        layoutParams.setMargins(0, 0, 30, 0);
        layoutParams.gravity = 8388629;
        if (this.openToggle) {
            imageView.setImageResource(R.drawable.ic_arrow_right);
        } else {
            imageView.setImageResource(R.drawable.ic_arrow_left);
        }
        imageView.setLayoutParams(layoutParams);
        this.tabBar = createTabBar();
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws IllegalStateException {
                LMSVideoPlayerActivity.this.openToggle = !r9.openToggle;
                if (!LMSVideoPlayerActivity.this.openToggle) {
                    LMSVideoPlayerActivity.this.parentLayout.removeAllViews();
                    LMSVideoPlayerActivity.this.frameLayout.removeAllViews();
                    LMSVideoPlayerActivity lMSVideoPlayerActivity = LMSVideoPlayerActivity.this;
                    lMSVideoPlayerActivity.parentLayout = MyStaticComponents.getLinearLayout(lMSVideoPlayerActivity.context, -1, 0, new LinearLayout.LayoutParams(-1, -1));
                    LMSVideoPlayerActivity.this.setVideoLayout();
                    imageView.setImageResource(R.drawable.ic_arrow_left);
                    LMSVideoPlayerActivity lMSVideoPlayerActivity2 = LMSVideoPlayerActivity.this;
                    lMSVideoPlayerActivity2.setContentView(lMSVideoPlayerActivity2.parentLayout);
                    return;
                }
                imageView.setImageResource(R.drawable.ic_arrow_right);
                LMSVideoPlayerActivity.this.mediaPlayer.pause();
                LMSVideoPlayerActivity lMSVideoPlayerActivity3 = LMSVideoPlayerActivity.this;
                lMSVideoPlayerActivity3.currentPosition = lMSVideoPlayerActivity3.mediaPlayer.getCurrentPosition();
                LMSVideoPlayerActivity.this.parentLayout.removeAllViews();
                LMSVideoPlayerActivity lMSVideoPlayerActivity4 = LMSVideoPlayerActivity.this;
                lMSVideoPlayerActivity4.linearLayout1 = MyStaticComponents.getLinearLayout(lMSVideoPlayerActivity4.context, -1, 0, new LinearLayout.LayoutParams(-1, -1));
                LMSVideoPlayerActivity lMSVideoPlayerActivity5 = LMSVideoPlayerActivity.this;
                lMSVideoPlayerActivity5.parentLayout = MyStaticComponents.getLinearLayout(lMSVideoPlayerActivity5.context, -1, 1, new LinearLayout.LayoutParams((LMSVideoPlayerActivity.this.width * 70) / 100, LMSVideoPlayerActivity.this.height));
                LMSVideoPlayerActivity.this.parentLayout.addView(LMSVideoPlayerActivity.this.frameLayout);
                LMSVideoPlayerActivity lMSVideoPlayerActivity6 = LMSVideoPlayerActivity.this;
                lMSVideoPlayerActivity6.parentLayout1 = MyStaticComponents.getLinearLayout(lMSVideoPlayerActivity6.context, -1, 1, new LinearLayout.LayoutParams((LMSVideoPlayerActivity.this.width * 30) / 100, LMSVideoPlayerActivity.this.height, 1.0f));
                LMSVideoPlayerActivity lMSVideoPlayerActivity7 = LMSVideoPlayerActivity.this;
                lMSVideoPlayerActivity7.innerLayout = MyStaticComponents.getLinearLayout(lMSVideoPlayerActivity7.context, -1, 1, new LinearLayout.LayoutParams(-2, -2));
                LMSVideoPlayerActivity lMSVideoPlayerActivity8 = LMSVideoPlayerActivity.this;
                lMSVideoPlayerActivity8.listView = lMSVideoPlayerActivity8.generateBookmarkList(lMSVideoPlayerActivity8.selectedVideo.getActualId());
                LMSVideoPlayerActivity.this.innerLayout.addView(LMSVideoPlayerActivity.this.listView);
                LMSVideoPlayerActivity lMSVideoPlayerActivity9 = LMSVideoPlayerActivity.this;
                lMSVideoPlayerActivity9.bookMarkButtonLayout = lMSVideoPlayerActivity9.setBookMarkButton();
                LMSVideoPlayerActivity.this.parentLayout1.addView(LMSVideoPlayerActivity.this.tabBar, new LinearLayout.LayoutParams(-1, 0, 0.1f));
                LMSVideoPlayerActivity.this.parentLayout1.addView(LMSVideoPlayerActivity.this.innerLayout, new LinearLayout.LayoutParams(-1, 0, 0.75f));
                LMSVideoPlayerActivity.this.parentLayout1.addView(LMSVideoPlayerActivity.this.bookMarkButtonLayout, new LinearLayout.LayoutParams(-1, 0, 0.15f));
                LMSVideoPlayerActivity.this.linearLayout1.addView(LMSVideoPlayerActivity.this.parentLayout);
                LMSVideoPlayerActivity.this.linearLayout1.addView(LMSVideoPlayerActivity.this.parentLayout1);
                LMSVideoPlayerActivity lMSVideoPlayerActivity10 = LMSVideoPlayerActivity.this;
                lMSVideoPlayerActivity10.setContentView(lMSVideoPlayerActivity10.linearLayout1);
            }
        });
        return imageView;
    }

    private View createTabBar() {
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.bookmark_tabs, (ViewGroup) null);
        final View viewFindViewById = viewInflate.findViewById(R.id.bookmark_button);
        viewFindViewById.setSelected(true);
        final View viewFindViewById2 = viewInflate.findViewById(R.id.interaction_button);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                viewFindViewById.setSelected(true);
                viewFindViewById2.setSelected(false);
                LMSVideoPlayerActivity.this.parentLayout1.removeAllViews();
                LMSVideoPlayerActivity.this.innerLayout.removeAllViews();
                LMSVideoPlayerActivity lMSVideoPlayerActivity = LMSVideoPlayerActivity.this;
                lMSVideoPlayerActivity.listView = lMSVideoPlayerActivity.generateBookmarkList(lMSVideoPlayerActivity.selectedVideo.getActualId());
                LMSVideoPlayerActivity.this.innerLayout.addView(LMSVideoPlayerActivity.this.listView);
                LMSVideoPlayerActivity.this.parentLayout1.addView(LMSVideoPlayerActivity.this.tabBar, new LinearLayout.LayoutParams(-1, 0, 0.1f));
                LMSVideoPlayerActivity.this.parentLayout1.addView(LMSVideoPlayerActivity.this.innerLayout, new LinearLayout.LayoutParams(-1, 0, 0.75f));
                LMSVideoPlayerActivity.this.parentLayout1.addView(LMSVideoPlayerActivity.this.bookMarkButtonLayout, new LinearLayout.LayoutParams(-1, 0, 0.15f));
            }
        });
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                viewFindViewById.setSelected(false);
                viewFindViewById2.setSelected(true);
                LMSVideoPlayerActivity.this.parentLayout1.removeAllViews();
                LMSVideoPlayerActivity.this.innerLayout.removeAllViews();
                View viewInflate2 = LayoutInflater.from(LMSVideoPlayerActivity.this.context).inflate(R.layout.video_description_layout, (ViewGroup) null);
                LMSVideoPlayerActivity.this.descView = (MaterialTextView) viewInflate2.findViewById(R.id.video_desc);
                LMSVideoPlayerActivity.this.openVideoButton = viewInflate2.findViewById(R.id.open_video);
                LMSVideoPlayerActivity.this.openVideoButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.3.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) throws IllegalStateException {
                        LMSVideoPlayerActivity.this.openMediaByMediaType(LmsConstants.MEDIA_TYPE_VIDEO, false);
                    }
                });
                LMSVideoPlayerActivity.this.openVideoButton.setVisibility(8);
                LMSVideoPlayerActivity.this.openPdfButton = viewInflate2.findViewById(R.id.open_pdf);
                LMSVideoPlayerActivity.this.openPdfButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.3.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) throws IllegalStateException {
                        LMSVideoPlayerActivity.this.openMediaByMediaType(LmsConstants.MEDIA_TYPE_PDF, Boolean.valueOf(!LmsConstants.MEDIA_TYPE_PDF.equals(LMSVideoPlayerActivity.this.selectedLesson.getMediaType())));
                    }
                });
                LMSVideoPlayerActivity.this.openPdfButton.setVisibility(8);
                LMSVideoPlayerActivity.this.openImageButton = viewInflate2.findViewById(R.id.open_image);
                LMSVideoPlayerActivity.this.openImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.3.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) throws IllegalStateException {
                        LMSVideoPlayerActivity.this.openMediaByMediaType(LmsConstants.MEDIA_TYPE_IMAGE, false);
                    }
                });
                LMSVideoPlayerActivity.this.openImageButton.setVisibility(8);
                LMSVideoPlayerActivity.this.openAudioButton = viewInflate2.findViewById(R.id.open_audio);
                LMSVideoPlayerActivity.this.openAudioButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.3.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) throws IllegalStateException {
                        LMSVideoPlayerActivity.this.openMediaByMediaType("AUDIO", false);
                    }
                });
                LMSVideoPlayerActivity.this.openAudioButton.setVisibility(8);
                LMSVideoPlayerActivity.this.innerLayout.addView(LMSVideoPlayerActivity.this.generateTreeView());
                LMSVideoPlayerActivity.this.parentLayout1.addView(LMSVideoPlayerActivity.this.tabBar, new LinearLayout.LayoutParams(-1, 0, 0.01f));
                LMSVideoPlayerActivity.this.parentLayout1.addView(LMSVideoPlayerActivity.this.innerLayout, new LinearLayout.LayoutParams(-1, 0, 0.06f));
                LMSVideoPlayerActivity.this.parentLayout1.addView(viewInflate2, new LinearLayout.LayoutParams(-1, 0, 0.03f));
            }
        });
        return viewInflate;
    }

    public void startPDFViewerActivity(String str, String str2, Boolean bool) {
        String str3 = SewaConstants.DIR_LMS + str;
        Intent intent = new Intent(this.context, (Class<?>) CustomPDFViewerActivity_.class);
        intent.putExtra("path", str3);
        intent.putExtra(FieldNameConstants.FILE_NAME, str2);
        intent.putExtra("fromLms", true);
        intent.putExtra(FieldNameConstants.COURSE_ID, this.courseId);
        intent.putExtra("transcript", bool);
        intent.putExtra("lesson", new Gson().toJson(this.selectedLesson));
        startActivityForResult(intent, 1017);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    public View generateTreeView() {
        final LmsCourseDataBean lmsCourseDataBeanRetrieveCourseByCourseId = this.lmsService.retrieveCourseByCourseId(this.courseId);
        if (lmsCourseDataBeanRetrieveCourseByCourseId == null) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, "No Lessons to show");
            materialTextViewGenerateInstructionView.setPadding(20, 0, 0, 0);
            return materialTextViewGenerateInstructionView;
        }
        TreeNode treeNodeRoot = TreeNode.root();
        AndroidTreeView androidTreeView = new AndroidTreeView(getApplicationContext(), treeNodeRoot);
        this.descView.setText(lmsCourseDataBeanRetrieveCourseByCourseId.getCourseDescription());
        int i = 1;
        TreeNode viewHolder = new TreeNode(new TreeHolder.IconTreeItem(R.drawable.ic_arrow_right, lmsCourseDataBeanRetrieveCourseByCourseId.getCourseName(), false)).setViewHolder(new TreeHolder(getApplicationContext(), true, 0, 0));
        treeNodeRoot.addChild(viewHolder);
        viewHolder.setExpanded(true);
        viewHolder.setClickListener(new TreeNode.TreeNodeClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.4
            @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeClickListener
            public void onClick(TreeNode treeNode, Object obj) {
                LMSVideoPlayerActivity.this.descView.setText(lmsCourseDataBeanRetrieveCourseByCourseId.getCourseDescription());
                LMSVideoPlayerActivity.this.openVideoButton.setVisibility(8);
                LMSVideoPlayerActivity.this.openPdfButton.setVisibility(8);
                LMSVideoPlayerActivity.this.openImageButton.setVisibility(8);
                LMSVideoPlayerActivity.this.openAudioButton.setVisibility(8);
            }
        });
        List<LmsTopicDataBean> topics = lmsCourseDataBeanRetrieveCourseByCourseId.getTopics();
        Collections.sort(topics, MyComparatorUtil.LMS_TOPIC_ORDER_COMPARATOR);
        for (final LmsTopicDataBean lmsTopicDataBean : topics) {
            TreeNode viewHolder2 = new TreeNode(new TreeHolder.IconTreeItem(R.drawable.ic_arrow_right, lmsTopicDataBean.getTopicName(), false)).setViewHolder(new TreeHolder(getApplicationContext(), i, R.layout.child, 50));
            TreeNode[] treeNodeArr = new TreeNode[i];
            treeNodeArr[0] = viewHolder2;
            viewHolder.addChildren(treeNodeArr);
            viewHolder2.setClickListener(new TreeNode.TreeNodeClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.5
                @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeClickListener
                public void onClick(TreeNode treeNode, Object obj) {
                    LMSVideoPlayerActivity.this.descView.setText(lmsTopicDataBean.getTopicDescription());
                    LMSVideoPlayerActivity.this.openVideoButton.setVisibility(8);
                    LMSVideoPlayerActivity.this.openPdfButton.setVisibility(8);
                    LMSVideoPlayerActivity.this.openImageButton.setVisibility(8);
                    LMSVideoPlayerActivity.this.openAudioButton.setVisibility(8);
                }
            });
            List<LmsLessonDataBean> topicMedias = lmsTopicDataBean.getTopicMedias();
            Collections.sort(topicMedias, MyComparatorUtil.LMS_TOPIC_MEDIA_ORDER_COMPARATOR);
            List<Integer> viewedLessonList = this.lmsService.getViewedLessonList();
            for (final LmsLessonDataBean lmsLessonDataBean : topicMedias) {
                TreeNode viewHolder3 = new TreeNode(new TreeHolder.IconTreeItem(getIconFromMediaType(lmsLessonDataBean), lmsLessonDataBean.getTitle(), viewedLessonList.contains(lmsLessonDataBean.getActualId()))).setViewHolder(new TreeHolder(getApplicationContext(), false, R.layout.child, 70));
                viewHolder3.setClickListener(new TreeNode.TreeNodeClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.6
                    @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeClickListener
                    public void onClick(TreeNode treeNode, Object obj) {
                        LMSVideoPlayerActivity.this.selectedLesson = lmsLessonDataBean;
                        LMSVideoPlayerActivity.this.descView.setText(lmsLessonDataBean.getDescription());
                        LMSVideoPlayerActivity.this.setOpenIconVisibilityByMediaType(lmsLessonDataBean.getMediaType());
                    }
                });
                viewHolder3.setLongClickListener(new TreeNode.TreeNodeLongClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.7
                    @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeLongClickListener
                    public boolean onLongClick(TreeNode treeNode, Object obj) throws IllegalStateException {
                        LMSVideoPlayerActivity.this.selectedLesson = lmsLessonDataBean;
                        LMSVideoPlayerActivity.this.descView.setText(lmsLessonDataBean.getDescription());
                        LMSVideoPlayerActivity.this.setOpenIconVisibilityByMediaType(lmsLessonDataBean.getMediaType());
                        LMSVideoPlayerActivity.this.openMediaByMediaType(lmsLessonDataBean.getMediaType(), false);
                        return true;
                    }
                });
                viewHolder2.addChild(viewHolder3);
                LmsLessonDataBean lmsLessonDataBean2 = this.selectedVideo;
                if (lmsLessonDataBean2 != null && lmsLessonDataBean2.getActualId().equals(lmsLessonDataBean.getActualId())) {
                    viewHolder2.setExpanded(true);
                    viewHolder3.getClickListener().onClick(viewHolder2, null);
                    viewHolder3.setSelected(true);
                }
                addLessonTestInTreeView(lmsLessonDataBean, viewHolder2);
            }
            addModuleTestInTreeView(lmsTopicDataBean, viewHolder2);
            i = 1;
        }
        addCourseTestInTreeView(lmsCourseDataBeanRetrieveCourseByCourseId, viewHolder);
        return androidTreeView.getView();
    }

    private int getIconFromMediaType(LmsLessonDataBean lmsLessonDataBean) {
        String mediaType = lmsLessonDataBean.getMediaType();
        mediaType.hashCode();
        switch (mediaType) {
            case "PDF":
                return R.drawable.pdf;
            case "AUDIO":
                return R.drawable.play_audio;
            case "IMAGE":
                return R.drawable.image;
            case "VIDEO":
                return R.drawable.play_video;
            default:
                return R.drawable.pending;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOpenIconVisibilityByMediaType(String str) {
        this.openVideoButton.setVisibility(8);
        this.openPdfButton.setVisibility(8);
        this.openImageButton.setVisibility(8);
        this.openAudioButton.setVisibility(8);
        str.hashCode();
        switch (str) {
            case "PDF":
                this.openPdfButton.setVisibility(0);
                break;
            case "AUDIO":
                this.openAudioButton.setVisibility(0);
                break;
            case "IMAGE":
                this.openImageButton.setVisibility(0);
                break;
            case "VIDEO":
                this.openVideoButton.setVisibility(0);
                if (this.selectedLesson.getTranscriptFileId() != null) {
                    this.openPdfButton.setVisibility(0);
                    break;
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openMediaByMediaType(String str, Boolean bool) throws IllegalStateException {
        String str2;
        if (Boolean.FALSE.equals(this.lmsService.getAllowedMediaMap(this.courseId).get(this.selectedLesson.getActualId()))) {
            SewaUtil.generateToast(this.context, LabelConstants.COMPLETE_PREVIOUS_LESSONS);
        }
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null && mediaPlayer.isPlaying()) {
            this.currentPosition = this.mediaPlayer.getCurrentPosition();
            this.mediaPlayer.pause();
        }
        str2 = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(this.selectedLesson.getMediaId(), this.selectedLesson.getMediaFileName());
        str.hashCode();
        switch (str) {
            case "PDF":
                if (Boolean.TRUE.equals(bool)) {
                    startPDFViewerActivity(UtilBean.getLMSFileName(this.selectedLesson.getTranscriptFileId(), this.selectedLesson.getTranscriptFileName()), this.selectedLesson.getDescription(), true);
                    break;
                } else {
                    startPDFViewerActivity(UtilBean.getLMSFileName(this.selectedLesson.getMediaId(), this.selectedLesson.getMediaFileName()), this.selectedLesson.getDescription(), false);
                    break;
                }
            case "AUDIO":
                MyAudioPlayer myAudioPlayer = new MyAudioPlayer(this.context, this.selectedLesson.getTitle(), MediaPlayer.create(this.context, FileProvider.getUriForFile(this.context, getApplicationContext().getPackageName() + ".provider", new File(str2))), true, this.lmsService, this.selectedLesson, this.courseId);
                myAudioPlayer.show();
                myAudioPlayer.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.8
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        LMSVideoPlayerActivity.this.innerLayout.removeAllViews();
                        LMSVideoPlayerActivity.this.innerLayout.addView(LMSVideoPlayerActivity.this.generateTreeView());
                    }
                });
                break;
            case "IMAGE":
                Intent intent = new Intent(this.context, (Class<?>) CustomImageViewerActivity_.class);
                intent.putExtra("path", str2);
                intent.putExtra(FieldNameConstants.FILE_NAME, this.selectedLesson.getTitle());
                intent.putExtra("fromLms", true);
                intent.putExtra(FieldNameConstants.COURSE_ID, this.courseId);
                intent.putExtra("lesson", new Gson().toJson(this.selectedLesson));
                startActivityForResult(intent, 1017);
                break;
            case "VIDEO":
                this.lmsService.updateLastPausedOnForMedia(Integer.valueOf(this.currentPosition), this.selectedVideo.getActualId(), this.selectedVideo.getTopicId(), this.courseId);
                this.lmsService.addSessionsForMedia(this.sessionStartDate, new Date(), this.selectedVideo.getActualId(), this.selectedVideo.getTopicId(), this.courseId);
                this.parentLayout.removeAllViews();
                this.frameLayout.removeAllViews();
                this.currentPosition = 0;
                setDataSourcesForVideo(this.selectedLesson);
                break;
        }
    }

    private void addLessonTestInTreeView(final LmsLessonDataBean lmsLessonDataBean, TreeNode treeNode) {
        if (lmsLessonDataBean.getQuestionSet() == null || lmsLessonDataBean.getQuestionSet().isEmpty()) {
            return;
        }
        for (final LmsQuestionSetDataBean lmsQuestionSetDataBean : lmsLessonDataBean.getQuestionSet()) {
            TreeNode viewHolder = new TreeNode(new TreeHolder.IconTreeItem(R.drawable.test, UtilBean.getMyLabel("Lesson Test") + " - " + lmsQuestionSetDataBean.getQuestionSetName() + " (" + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean.getQuestionSetType().toString())) + ")", false)).setViewHolder(new TreeHolder(getApplicationContext(), false, R.layout.child, 70));
            treeNode.addChild(viewHolder);
            viewHolder.setClickListener(new TreeNode.TreeNodeClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.9
                @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeClickListener
                public void onClick(TreeNode treeNode2, Object obj) throws IllegalStateException {
                    LMSVideoPlayerActivity lMSVideoPlayerActivity = LMSVideoPlayerActivity.this;
                    LmsLessonDataBean lmsLessonDataBean2 = lmsLessonDataBean;
                    lMSVideoPlayerActivity.openLmsTestModule(null, null, lmsLessonDataBean2, lmsQuestionSetDataBean, lmsLessonDataBean2.getTitle());
                }
            });
        }
    }

    private void addModuleTestInTreeView(final LmsTopicDataBean lmsTopicDataBean, TreeNode treeNode) {
        if (lmsTopicDataBean.getQuestionSet() == null || lmsTopicDataBean.getQuestionSet().isEmpty()) {
            return;
        }
        for (final LmsQuestionSetDataBean lmsQuestionSetDataBean : lmsTopicDataBean.getQuestionSet()) {
            TreeNode viewHolder = new TreeNode(new TreeHolder.IconTreeItem(R.drawable.test, UtilBean.getMyLabel("Module Test") + " - " + lmsQuestionSetDataBean.getQuestionSetName() + " (" + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean.getQuestionSetType().toString())) + ")", false)).setViewHolder(new TreeHolder(getApplicationContext(), false, R.layout.child, 70));
            treeNode.addChild(viewHolder);
            viewHolder.setClickListener(new TreeNode.TreeNodeClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.10
                @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeClickListener
                public void onClick(TreeNode treeNode2, Object obj) throws IllegalStateException {
                    LMSVideoPlayerActivity lMSVideoPlayerActivity = LMSVideoPlayerActivity.this;
                    LmsTopicDataBean lmsTopicDataBean2 = lmsTopicDataBean;
                    lMSVideoPlayerActivity.openLmsTestModule(null, lmsTopicDataBean2, null, lmsQuestionSetDataBean, lmsTopicDataBean2.getTopicName());
                }
            });
        }
    }

    private void addCourseTestInTreeView(final LmsCourseDataBean lmsCourseDataBean, TreeNode treeNode) {
        if (lmsCourseDataBean.getQuestionSet() == null || lmsCourseDataBean.getQuestionSet().isEmpty()) {
            return;
        }
        for (final LmsQuestionSetDataBean lmsQuestionSetDataBean : lmsCourseDataBean.getQuestionSet()) {
            TreeNode viewHolder = new TreeNode(new TreeHolder.IconTreeItem(R.drawable.test, UtilBean.getMyLabel("Course Test") + " - " + lmsQuestionSetDataBean.getQuestionSetName() + " (" + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean.getQuestionSetType().toString())) + ")", false)).setViewHolder(new TreeHolder(getApplicationContext(), false, R.layout.child, 70));
            treeNode.addChild(viewHolder);
            viewHolder.setClickListener(new TreeNode.TreeNodeClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.11
                @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeClickListener
                public void onClick(TreeNode treeNode2, Object obj) throws IllegalStateException {
                    LMSVideoPlayerActivity lMSVideoPlayerActivity = LMSVideoPlayerActivity.this;
                    LmsCourseDataBean lmsCourseDataBean2 = lmsCourseDataBean;
                    lMSVideoPlayerActivity.openLmsTestModule(lmsCourseDataBean2, null, null, lmsQuestionSetDataBean, lmsCourseDataBean2.getCourseName());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLmsTestModule(LmsCourseDataBean lmsCourseDataBean, LmsTopicDataBean lmsTopicDataBean, LmsLessonDataBean lmsLessonDataBean, LmsQuestionSetDataBean lmsQuestionSetDataBean, String str) throws IllegalStateException {
        List<Integer> viewedLessonList = this.lmsService.getViewedLessonList();
        boolean z = false;
        boolean zContains = true;
        if (lmsCourseDataBean != null) {
            Iterator<LmsTopicDataBean> it = lmsCourseDataBean.getTopics().iterator();
            while (it.hasNext()) {
                Iterator<LmsLessonDataBean> it2 = it.next().getTopicMedias().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    } else if (!viewedLessonList.contains(it2.next().getActualId())) {
                        zContains = false;
                        break;
                    }
                }
            }
        } else if (lmsTopicDataBean != null) {
            Iterator<LmsLessonDataBean> it3 = lmsTopicDataBean.getTopicMedias().iterator();
            while (true) {
                if (!it3.hasNext()) {
                    z = true;
                    break;
                } else if (!viewedLessonList.contains(it3.next().getActualId())) {
                    break;
                }
            }
            zContains = z;
        } else if (lmsLessonDataBean != null) {
            zContains = viewedLessonList.contains(lmsLessonDataBean.getActualId());
        }
        if (zContains) {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null && mediaPlayer.isPlaying()) {
                this.mediaPlayer.pause();
            }
            Intent intent = new Intent(this.context, (Class<?>) LmsQuestionModuleActivity_.class);
            intent.putExtra("questionSet", new Gson().toJson(lmsQuestionSetDataBean));
            intent.putExtra("testFor", str);
            startActivityForResult(intent, 1016);
            return;
        }
        SewaUtil.generateToast(this.context, LabelConstants.COMPLETE_PREVIOUS_LESSONS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PagingListView generateBookmarkList(Integer num) {
        this.bookmarkDataBeans = this.lmsService.retrieveBookmarks(num);
        ArrayList arrayList = new ArrayList();
        List<LmsBookMarkBean> list = this.bookmarkDataBeans;
        if (list != null && !list.isEmpty()) {
            for (LmsBookMarkBean lmsBookMarkBean : this.bookmarkDataBeans) {
                ListItemDataBean listItemDataBean = new ListItemDataBean();
                listItemDataBean.setPosition(lmsBookMarkBean.getPosition());
                listItemDataBean.setCrossRefBookmark(false);
                if (lmsBookMarkBean.getFileName() == null) {
                    listItemDataBean.setAudio(false);
                    listItemDataBean.setBookmarkNote(lmsBookMarkBean.getBookmarkNote());
                } else {
                    listItemDataBean.setBookmarkText(lmsBookMarkBean.getFileName());
                    listItemDataBean.setAudio(true);
                    listItemDataBean.setBookmarkNote(GlobalTypes.EVENT_PLAY);
                }
                if (!lmsBookMarkBean.getBookmarkNote().isEmpty()) {
                    StringBuilder sb = new StringBuilder();
                    String[] strArrSplit = lmsBookMarkBean.getBookmarkNote().split(" ");
                    for (int i = 0; i < strArrSplit.length && i < 3; i++) {
                        sb.append(strArrSplit[i]);
                        sb.append(" ");
                    }
                    listItemDataBean.setBookmarkText(sb.toString());
                }
                arrayList.add(listItemDataBean);
            }
        }
        PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_bookmark, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.12
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) throws IllegalStateException {
                if (LMSVideoPlayerActivity.this.bookmarkDataBeans == null || i2 >= LMSVideoPlayerActivity.this.bookmarkDataBeans.size()) {
                    LMSVideoPlayerActivity.this.mediaPlayer.start();
                    LMSVideoPlayerActivity.this.mediaPlayer.seekTo(2000);
                    return;
                }
                LmsBookMarkBean lmsBookMarkBean2 = (LmsBookMarkBean) LMSVideoPlayerActivity.this.bookmarkDataBeans.get(i2);
                if (lmsBookMarkBean2.getFileName() != null) {
                    LMSVideoPlayerActivity.this.mediaPlayer.pause();
                    String str = SewaConstants.DIR_BOOKMARK + lmsBookMarkBean2.getFileName();
                    new MyAudioPlayer(LMSVideoPlayerActivity.this.context, lmsBookMarkBean2.getBookmarkText(), MediaPlayer.create(LMSVideoPlayerActivity.this.context, FileProvider.getUriForFile(LMSVideoPlayerActivity.this.context, LMSVideoPlayerActivity.this.getApplicationContext().getPackageName() + ".provider", new File(str)))).show();
                    return;
                }
                LMSVideoPlayerActivity.this.mediaPlayer.seekTo(lmsBookMarkBean2.getPosition());
                LMSVideoPlayerActivity.this.mediaPlayer.start();
            }
        }, null);
        this.listView = paginatedListViewWithItem;
        paginatedListViewWithItem.setPadding(10, 0, 10, 0);
        return this.listView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinearLayout setBookMarkButton() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(20, 20, 20, 0);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 0, layoutParams);
        MaterialButton customButton = MyStaticComponents.getCustomButton(this.context, UtilBean.getMyLabel(LabelConstants.ADD_BOOKMARK), -1, layoutParams);
        customButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws IllegalStateException {
                LMSVideoPlayerActivity.this.mediaPlayer.pause();
                LMSVideoPlayerActivity lMSVideoPlayerActivity = LMSVideoPlayerActivity.this;
                lMSVideoPlayerActivity.currentPosition = lMSVideoPlayerActivity.mediaPlayer.getCurrentPosition();
                LMSVideoPlayerActivity.this.showPopUpWindow(view);
            }
        });
        linearLayout.addView(customButton);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopUpWindow(View view) {
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.text_popup_window, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, (this.width * 7) / 10, -1, true);
        popupWindow.showAtLocation(view, 17, 0, 0);
        Button button = (Button) viewInflate.findViewById(R.id.popup_button);
        this.note = (TextInputLayout) viewInflate.findViewById(R.id.popup_note);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (!((EditText) Objects.requireNonNull(LMSVideoPlayerActivity.this.note.getEditText())).getText().toString().trim().isEmpty() || LMSVideoPlayerActivity.this.fileName != null) {
                    BookmarkDataBean bookmarkDataBean = new BookmarkDataBean(LMSVideoPlayerActivity.this.currentPosition, null, LMSVideoPlayerActivity.this.note.getEditText().getText().toString().trim(), null);
                    if (LMSVideoPlayerActivity.this.fileName != null) {
                        bookmarkDataBean.setFileName(LMSVideoPlayerActivity.this.fileName);
                    }
                    LMSVideoPlayerActivity.this.lmsService.saveBookmark(LMSVideoPlayerActivity.this.selectedVideo.getActualId(), bookmarkDataBean);
                    LMSVideoPlayerActivity lMSVideoPlayerActivity = LMSVideoPlayerActivity.this;
                    lMSVideoPlayerActivity.listView = lMSVideoPlayerActivity.generateBookmarkList(lMSVideoPlayerActivity.selectedVideo.getActualId());
                    LMSVideoPlayerActivity.this.innerLayout.removeAllViews();
                    LMSVideoPlayerActivity.this.innerLayout.addView(LMSVideoPlayerActivity.this.listView);
                    LMSVideoPlayerActivity.this.fileName = null;
                    popupWindow.dismiss();
                    return;
                }
                SewaUtil.generateToast(LMSVideoPlayerActivity.this.context, "Please enter bookmark note");
            }
        });
        final View viewFindViewById = viewInflate.findViewById(R.id.mic_button);
        viewFindViewById.setBackgroundResource(R.drawable.record_audio);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws IllegalStateException, IOException {
                if (!LMSVideoPlayerActivity.this.isAudioRecording) {
                    try {
                        LMSVideoPlayerActivity.this.isAudioRecording = true;
                        if (LMSVideoPlayerActivity.this.recorder == null) {
                            LMSVideoPlayerActivity.this.recorder = new MediaRecorder();
                        }
                        String str = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
                        LMSVideoPlayerActivity.this.fileName = "Record" + str + GlobalTypes.AUDIO_RECORD_FORMAT;
                        LMSVideoPlayerActivity.this.recorder.setAudioSource(1);
                        LMSVideoPlayerActivity.this.recorder.setOutputFormat(3);
                        LMSVideoPlayerActivity.this.recorder.setAudioEncoder(1);
                        LMSVideoPlayerActivity.this.recorder.setOutputFile(SewaConstants.DIR_BOOKMARK + LMSVideoPlayerActivity.this.fileName);
                        LMSVideoPlayerActivity.this.recorder.prepare();
                        LMSVideoPlayerActivity.this.recorder.start();
                        viewFindViewById.setBackgroundResource(R.drawable.stop_audio);
                        SewaUtil.generateToast(LMSVideoPlayerActivity.this.context, "Recording started");
                        return;
                    } catch (IOException e) {
                        e.printStackTrace();
                        return;
                    }
                }
                LMSVideoPlayerActivity.this.recorder.stop();
                LMSVideoPlayerActivity.this.recorder.reset();
                LMSVideoPlayerActivity.this.recorder.release();
                LMSVideoPlayerActivity.this.recorder = null;
                viewFindViewById.setBackgroundResource(R.drawable.record_audio);
                SewaUtil.generateToast(LMSVideoPlayerActivity.this.context, "Audio Recorded successfully");
                LMSVideoPlayerActivity.this.isAudioRecording = false;
            }
        });
    }

    private boolean playVideoSequentially() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        String str = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(this.selectedVideo.getMediaId(), this.selectedVideo.getMediaFileName());
        this.currentPosition = this.lmsService.getLastPausedOn(this.selectedVideo.getActualId()).intValue();
        if (UtilBean.isFileExists(str)) {
            Log.i(TAG, str + " is found and ready to play");
            try {
                this.mediaPlayer.reset();
                this.mediaPlayer.setDataSource(str);
                this.mediaPlayer.prepare();
                this.mediaPlayer.start();
                if (this.currentPosition == this.mediaPlayer.getDuration()) {
                    this.mediaPlayer.seekTo(0);
                    return true;
                }
                int i = this.currentPosition;
                if (i <= 0) {
                    return true;
                }
                this.mediaPlayer.seekTo(i);
                return true;
            } catch (Exception e) {
                Log.e(TAG, null, e);
                this.currentPosition = 0;
                SewaUtil.generateToast(this, LabelConstants.VIDEO_FILE_CORRUPTED);
                this.mediaPlayer.reset();
                UtilBean.deleteFile(str);
            }
        } else {
            Log.i(TAG, "File not found");
            this.currentPosition = 0;
            SewaUtil.generateToast(this, LabelConstants.VIDEO_FILE_NOT_DOWNLOADED);
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity$16] */
    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) throws IllegalStateException {
        Log.v(TAG, "surfaceCreated Called");
        this.mediaPlayer.setDisplay(surfaceHolder);
        try {
            MediaController mediaController = new MediaController(this);
            mediaController.setMediaPlayer(this);
            mediaController.setAnchorView(this.surfaceView);
            mediaController.bringToFront();
            mediaController.show();
            this.surfaceView.setOnTouchListener(new View.OnTouchListener() { // from class: com.argusoft.sewa.android.app.activity.LMSVideoPlayerActivity.16
                private MediaController mc;

                public View.OnTouchListener setMediaController(MediaController mediaController2) {
                    this.mc = mediaController2;
                    return this;
                }

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    this.mc.show();
                    return true;
                }
            }.setMediaController(mediaController));
        } catch (Exception e) {
            Log.e(TAG, null, e);
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Log.v(TAG, "surfaceChanged called");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.v(TAG, "surfaceDestroyed Called");
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) throws IllegalStateException {
        Log.v(TAG, "onCompletion Called");
        this.currentPosition = 0;
        this.lmsService.markLessonCompleted(this.selectedVideo.getActualId(), this.selectedVideo.getTopicId(), this.courseId);
        this.lmsService.updateLastPausedOnForMedia(null, this.selectedVideo.getActualId(), this.selectedVideo.getTopicId(), this.courseId);
        this.lmsService.updateEndDateForMedia(new Date(), this.selectedVideo.getActualId(), this.selectedVideo.getTopicId(), this.courseId);
        this.lmsService.addSessionsForMedia(this.sessionStartDate, new Date(), this.selectedVideo.getActualId(), this.selectedVideo.getTopicId(), this.courseId);
        askForFeedback();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() throws IllegalStateException {
        int currentPosition = this.mediaPlayer.getCurrentPosition();
        this.currentPosition = currentPosition;
        this.lmsService.updateLastPausedOnForMedia(Integer.valueOf(currentPosition), this.selectedVideo.getActualId(), this.selectedVideo.getTopicId(), this.courseId);
        this.lmsService.addSessionsForMedia(this.sessionStartDate, new Date(), this.selectedVideo.getActualId(), this.selectedVideo.getTopicId(), this.courseId);
        if (this.mediaPlayer.isPlaying()) {
            this.mediaPlayer.stop();
        }
        askForFeedback();
    }

    @Override // android.app.Activity
    public void finish() throws IllegalStateException {
        getWindow().clearFlags(128);
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mediaPlayer.release();
        }
        this.mediaPlayer = null;
        this.currentPosition = 0;
        this.surfaceHolder = null;
        this.surfaceView = null;
        super.finish();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.start();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            this.currentPosition = mediaPlayer.getCurrentPosition();
            this.mediaPlayer.pause();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getDuration();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.seekTo(i);
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws IllegalStateException {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        onBackPressed();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1017) {
            View viewGenerateTreeView = generateTreeView();
            this.innerLayout.removeAllViews();
            this.innerLayout.addView(viewGenerateTreeView);
        }
    }

    private void askForFeedback() throws IllegalStateException {
        if (Boolean.TRUE.equals(this.selectedVideo.getUserFeedbackRequired())) {
            LmsViewedMediaBean viewedLessonById = this.lmsService.getViewedLessonById(this.selectedVideo.getActualId());
            if (viewedLessonById == null || !Boolean.TRUE.equals(viewedLessonById.getCompleted()) || viewedLessonById.getUserFeedback() != null) {
                finish();
                return;
            }
            LMSFeedbackComponent lMSFeedbackComponent = new LMSFeedbackComponent(this.context, this.lmsService, viewedLessonById);
            this.feedbackAlert = lMSFeedbackComponent;
            lMSFeedbackComponent.show();
            return;
        }
        finish();
    }
}
