package com.argusoft.sewa.android.app.lms;

import android.media.MediaRecorder;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.argusoft.sewa.android.app.databean.BookmarkDataBean;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.model.LmsBookMarkBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.textfield.TextInputLayout;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class LmsBookmarksFragment extends Fragment {
    private LmsCourseDetailActivity activity;
    private LinearLayout bodyLayoutContainer;
    private View bookmarksView;
    private Integer currentPosition;
    private FloatingActionButton fab;
    private String fileName;
    private boolean isAudioRecording = false;
    private MyVideoView myVideoView;
    private MediaRecorder recorder;
    private LmsCourseDataBean selectedCourse;
    private LmsLessonDataBean selectedLesson;
    private LmsTopicDataBean selectedModule;

    public static LmsBookmarksFragment newInstance() {
        return new LmsBookmarksFragment();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        initView();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_lms_bookmarks, viewGroup, false);
        this.bodyLayoutContainer = (LinearLayout) viewInflate.findViewById(R.id.bodyLayoutContainer);
        this.fab = (FloatingActionButton) viewInflate.findViewById(R.id.add_bookmark);
        initView();
        return viewInflate;
    }

    public void initView() {
        if (getView() == null) {
            return;
        }
        if (this.bodyLayoutContainer == null) {
            this.bodyLayoutContainer = (LinearLayout) getView().findViewById(R.id.bodyLayoutContainer);
        }
        if (this.fab == null) {
            this.fab = (FloatingActionButton) getView().findViewById(R.id.add_bookmark);
        }
        this.activity = (LmsCourseDetailActivity) getActivity();
        this.bodyLayoutContainer.removeAllViews();
        this.fab.setVisibility(8);
        LmsLessonDataBean selectedLesson = this.activity.getSelectedLesson();
        this.selectedLesson = selectedLesson;
        if (selectedLesson != null && selectedLesson.getMediaType().equals(LmsConstants.MEDIA_TYPE_VIDEO)) {
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(getContext(), this.selectedLesson.getTitle()));
            this.myVideoView = this.activity.getVideoView();
            this.bodyLayoutContainer.addView(generateBookmarkList(this.selectedLesson.getActualId()));
            setBookMarkButton();
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(getContext(), "No bookmarks available for the selected lesson"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View generateBookmarkList(Integer num) {
        final List<LmsBookMarkBean> listRetrieveBookmarks = this.activity.lmsService.retrieveBookmarks(num);
        if (listRetrieveBookmarks != null && !listRetrieveBookmarks.isEmpty()) {
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsBookmarksFragment.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) throws IllegalStateException {
                    LmsBookmarksFragment.this.myVideoView.seekTo(((LmsBookMarkBean) listRetrieveBookmarks.get(i)).getPosition());
                    LmsBookmarksFragment.this.myVideoView.start();
                }
            };
            LmsBookmarksAdaptor lmsBookmarksAdaptor = new LmsBookmarksAdaptor(getContext(), listRetrieveBookmarks, this.activity.lmsService, this.myVideoView);
            ListView listView = new ListView(getContext());
            listView.setChoiceMode(1);
            listView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            listView.setNestedScrollingEnabled(true);
            listView.setAdapter((ListAdapter) lmsBookmarksAdaptor);
            listView.setOnItemClickListener(onItemClickListener);
            this.bookmarksView = listView;
        } else {
            this.bookmarksView = MyStaticComponents.generateLabelView(getContext(), "No bookmarks has been added yet");
        }
        return this.bookmarksView;
    }

    private void setBookMarkButton() {
        this.fab.setVisibility(0);
        this.fab.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsBookmarksFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LmsBookmarksFragment lmsBookmarksFragment = LmsBookmarksFragment.this;
                lmsBookmarksFragment.currentPosition = lmsBookmarksFragment.activity.pauseMediaPlayerAndGetPosition();
                if (LmsBookmarksFragment.this.currentPosition.intValue() != -1) {
                    LmsBookmarksFragment.this.showPopUpWindow(view);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopUpWindow(View view) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.text_popup_window, (ViewGroup) null);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, (displayMetrics.widthPixels * 8) / 10, -1, true);
        popupWindow.showAtLocation(view, 17, 0, 0);
        Button button = (Button) viewInflate.findViewById(R.id.popup_button);
        final TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.popup_note);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsBookmarksFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (!((EditText) Objects.requireNonNull(textInputLayout.getEditText())).getText().toString().trim().isEmpty()) {
                    BookmarkDataBean bookmarkDataBean = new BookmarkDataBean(LmsBookmarksFragment.this.currentPosition.intValue(), null, textInputLayout.getEditText().getText().toString().trim(), null);
                    if (LmsBookmarksFragment.this.fileName != null) {
                        bookmarkDataBean.setFileName(LmsBookmarksFragment.this.fileName);
                    }
                    LmsBookmarksFragment.this.activity.lmsService.saveBookmark(LmsBookmarksFragment.this.selectedLesson.getActualId(), bookmarkDataBean);
                    LmsBookmarksFragment.this.bodyLayoutContainer.removeView(LmsBookmarksFragment.this.bookmarksView);
                    LinearLayout linearLayout = LmsBookmarksFragment.this.bodyLayoutContainer;
                    LmsBookmarksFragment lmsBookmarksFragment = LmsBookmarksFragment.this;
                    linearLayout.addView(lmsBookmarksFragment.generateBookmarkList(lmsBookmarksFragment.selectedLesson.getActualId()));
                    LmsBookmarksFragment.this.fileName = null;
                    popupWindow.dismiss();
                    return;
                }
                SewaUtil.generateToast(LmsBookmarksFragment.this.getContext(), "Please enter bookmark note");
            }
        });
        final ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.mic_button);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsBookmarksFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws IllegalStateException, IOException {
                if (!LmsBookmarksFragment.this.isAudioRecording) {
                    try {
                        LmsBookmarksFragment.this.isAudioRecording = true;
                        if (LmsBookmarksFragment.this.recorder == null) {
                            LmsBookmarksFragment.this.recorder = new MediaRecorder();
                        }
                        String str = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
                        LmsBookmarksFragment.this.fileName = "Record" + str + GlobalTypes.AUDIO_RECORD_FORMAT;
                        LmsBookmarksFragment.this.recorder.setAudioSource(1);
                        LmsBookmarksFragment.this.recorder.setOutputFormat(3);
                        LmsBookmarksFragment.this.recorder.setAudioEncoder(1);
                        LmsBookmarksFragment.this.recorder.setOutputFile(SewaConstants.DIR_BOOKMARK + LmsBookmarksFragment.this.fileName);
                        LmsBookmarksFragment.this.recorder.prepare();
                        LmsBookmarksFragment.this.recorder.start();
                        imageButton.setImageResource(R.drawable.stop_audio);
                        SewaUtil.generateToast(LmsBookmarksFragment.this.getContext(), "Recording started");
                        return;
                    } catch (IOException e) {
                        e.printStackTrace();
                        return;
                    }
                }
                LmsBookmarksFragment.this.recorder.stop();
                LmsBookmarksFragment.this.recorder.reset();
                LmsBookmarksFragment.this.recorder.release();
                LmsBookmarksFragment.this.recorder = null;
                imageButton.setImageResource(R.drawable.record_audio);
                SewaUtil.generateToast(LmsBookmarksFragment.this.getContext(), "Audio Recorded successfully");
                LmsBookmarksFragment.this.isAudioRecording = false;
            }
        });
    }
}
