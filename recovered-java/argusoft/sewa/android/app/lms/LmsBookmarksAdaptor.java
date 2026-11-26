package com.argusoft.sewa.android.app.lms;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.FileProvider;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyAudioPlayer;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.model.LmsBookMarkBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes.dex */
public class LmsBookmarksAdaptor extends BaseAdapter {
    private MyAlertDialog alertDialog;
    private final Context context;
    private boolean isAudioRecording;
    private final List<LmsBookMarkBean> lmsBookMarkBeans;
    private final LmsServiceImpl lmsService;
    private String recordedFileName;
    private MediaRecorder recorder;
    private final MyVideoView selectedVideoView;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public LmsBookmarksAdaptor(Context context, List<LmsBookMarkBean> list, LmsServiceImpl lmsServiceImpl, MyVideoView myVideoView) {
        this.context = context;
        this.lmsBookMarkBeans = list;
        this.lmsService = lmsServiceImpl;
        this.selectedVideoView = myVideoView;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<LmsBookMarkBean> list = this.lmsBookMarkBeans;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        List<LmsBookMarkBean> list = this.lmsBookMarkBeans;
        if (list != null) {
            return list.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        LmsBookMarkBean lmsBookMarkBean = this.lmsBookMarkBeans.get(i);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.listview_row_bookmark, (ViewGroup) null);
        MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.bookmark_name);
        ((MaterialTextView) linearLayout.findViewById(R.id.bookmark_duration)).setText(String.format(Locale.getDefault(), "%d sec", Integer.valueOf(lmsBookMarkBean.getPosition() / 1000)));
        MaterialTextView materialTextView2 = (MaterialTextView) linearLayout.findViewById(R.id.bookmark_note);
        ImageButton imageButton = (ImageButton) linearLayout.findViewById(R.id.bookmark_play);
        if (!lmsBookMarkBean.getBookmarkNote().isEmpty()) {
            StringBuilder sb = new StringBuilder();
            String[] strArrSplit = lmsBookMarkBean.getBookmarkNote().split(" ");
            for (int i2 = 0; i2 < strArrSplit.length && i2 < 3; i2++) {
                sb.append(strArrSplit[i2]);
                sb.append(" ");
            }
            materialTextView.setText(sb.toString());
            materialTextView2.setText(lmsBookMarkBean.getBookmarkNote());
        }
        if (lmsBookMarkBean.getFileName() != null) {
            imageButton.setVisibility(0);
            imageButton.setFocusable(false);
            imageButton.setOnClickListener(getPlayListener(i, lmsBookMarkBean));
        } else {
            imageButton.setVisibility(4);
        }
        ImageButton imageButton2 = (ImageButton) linearLayout.findViewById(R.id.edit_bookmark);
        imageButton2.setFocusable(false);
        imageButton2.setOnClickListener(getEditListener(i, lmsBookMarkBean));
        ImageButton imageButton3 = (ImageButton) linearLayout.findViewById(R.id.delete_bookmark);
        imageButton3.setFocusable(false);
        imageButton3.setOnClickListener(getDeleteListener(i, lmsBookMarkBean));
        return linearLayout;
    }

    private View.OnClickListener getPlayListener(int i, final LmsBookMarkBean lmsBookMarkBean) {
        return new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsBookmarksAdaptor.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = SewaConstants.DIR_BOOKMARK + lmsBookMarkBean.getFileName();
                new MyAudioPlayer(LmsBookmarksAdaptor.this.context, lmsBookMarkBean.getBookmarkText(), MediaPlayer.create(LmsBookmarksAdaptor.this.context, FileProvider.getUriForFile(LmsBookmarksAdaptor.this.context, LmsBookmarksAdaptor.this.context.getPackageName() + ".provider", new File(str)))).show();
            }
        };
    }

    private View.OnClickListener getDeleteListener(final int i, final LmsBookMarkBean lmsBookMarkBean) {
        return new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsBookmarksAdaptor.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsBookmarksAdaptor.2.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (view2.getId() == -1) {
                            LmsBookmarksAdaptor.this.lmsService.deleteBookmark(lmsBookMarkBean);
                            LmsBookmarksAdaptor.this.lmsBookMarkBeans.remove(i);
                            LmsBookmarksAdaptor.this.notifyDataSetInvalidated();
                        }
                        LmsBookmarksAdaptor.this.alertDialog.dismiss();
                    }
                };
                LmsBookmarksAdaptor.this.alertDialog = new MyAlertDialog(LmsBookmarksAdaptor.this.context, "Are you sure you want to delete this bookmark?", onClickListener, DynamicUtils.BUTTON_YES_NO);
                LmsBookmarksAdaptor.this.alertDialog.show();
            }
        };
    }

    private View.OnClickListener getEditListener(final int i, final LmsBookMarkBean lmsBookMarkBean) {
        return new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsBookmarksAdaptor.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws IllegalStateException {
                if (LmsBookmarksAdaptor.this.selectedVideoView != null && LmsBookmarksAdaptor.this.selectedVideoView.isPlaying()) {
                    LmsBookmarksAdaptor.this.selectedVideoView.pause();
                }
                View viewInflate = LayoutInflater.from(LmsBookmarksAdaptor.this.context).inflate(R.layout.text_popup_window, (ViewGroup) null);
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((AppCompatActivity) LmsBookmarksAdaptor.this.context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                final PopupWindow popupWindow = new PopupWindow(viewInflate, (displayMetrics.widthPixels * 8) / 10, -1, true);
                popupWindow.showAtLocation(view, 17, 0, 0);
                Button button = (Button) viewInflate.findViewById(R.id.popup_button);
                button.setText("Update");
                final TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.popup_note);
                textInputLayout.getEditText().setText(lmsBookMarkBean.getBookmarkNote());
                button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsBookmarksAdaptor.3.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (!((EditText) Objects.requireNonNull(textInputLayout.getEditText())).getText().toString().trim().isEmpty()) {
                            if (LmsBookmarksAdaptor.this.recordedFileName != null) {
                                lmsBookMarkBean.setFileName(LmsBookmarksAdaptor.this.recordedFileName);
                            }
                            lmsBookMarkBean.setBookmarkNote(textInputLayout.getEditText().getText().toString().trim());
                            LmsBookmarksAdaptor.this.lmsService.updateBookmark(lmsBookMarkBean);
                            LmsBookmarksAdaptor.this.recordedFileName = null;
                            popupWindow.dismiss();
                            LmsBookmarksAdaptor.this.lmsBookMarkBeans.set(i, lmsBookMarkBean);
                            LmsBookmarksAdaptor.this.notifyDataSetInvalidated();
                            return;
                        }
                        SewaUtil.generateToast(LmsBookmarksAdaptor.this.context, "Please enter bookmark note");
                    }
                });
                final ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.mic_button);
                imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsBookmarksAdaptor.3.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) throws IllegalStateException, IOException {
                        if (!LmsBookmarksAdaptor.this.isAudioRecording) {
                            try {
                                LmsBookmarksAdaptor.this.isAudioRecording = true;
                                if (LmsBookmarksAdaptor.this.recorder == null) {
                                    LmsBookmarksAdaptor.this.recorder = new MediaRecorder();
                                }
                                String str = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
                                LmsBookmarksAdaptor.this.recordedFileName = "Record" + str + GlobalTypes.AUDIO_RECORD_FORMAT;
                                LmsBookmarksAdaptor.this.recorder.setAudioSource(1);
                                LmsBookmarksAdaptor.this.recorder.setOutputFormat(3);
                                LmsBookmarksAdaptor.this.recorder.setAudioEncoder(1);
                                LmsBookmarksAdaptor.this.recorder.setOutputFile(SewaConstants.DIR_BOOKMARK + LmsBookmarksAdaptor.this.recordedFileName);
                                LmsBookmarksAdaptor.this.recorder.prepare();
                                LmsBookmarksAdaptor.this.recorder.start();
                                imageButton.setImageResource(R.drawable.stop_audio);
                                SewaUtil.generateToast(LmsBookmarksAdaptor.this.context, "Recording started");
                                return;
                            } catch (IOException e) {
                                e.printStackTrace();
                                return;
                            }
                        }
                        LmsBookmarksAdaptor.this.recorder.stop();
                        LmsBookmarksAdaptor.this.recorder.reset();
                        LmsBookmarksAdaptor.this.recorder.release();
                        LmsBookmarksAdaptor.this.recorder = null;
                        imageButton.setImageResource(R.drawable.record_audio);
                        SewaUtil.generateToast(LmsBookmarksAdaptor.this.context, "Audio Recorded successfully");
                        LmsBookmarksAdaptor.this.isAudioRecording = false;
                    }
                });
            }
        };
    }
}
