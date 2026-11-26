package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.content.DialogInterface;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.R;
import com.google.android.material.textview.MaterialTextView;
import java.io.IOException;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class MyAudioPlayer extends AlertDialog implements SeekBar.OnSeekBarChangeListener, MediaPlayer.OnCompletionListener, View.OnClickListener {
    private AlertDialog alertDialog;
    private Button button;
    private final Context context;
    private Integer courseId;
    private int currentPos;
    private LMSFeedbackComponent feedbackAlert;
    private boolean isFromLms;
    private boolean isPlay;
    private LmsLessonDataBean lesson;
    private LmsServiceImpl lmsService;
    private MediaPlayer player;
    private SeekBar seekbar;
    private Date startDate;
    private TextView timeView;
    private final Handler uIHandler;
    private LmsViewedMediaBean viewedMediaBean;

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    static /* synthetic */ int access$208(MyAudioPlayer myAudioPlayer) {
        int i = myAudioPlayer.currentPos;
        myAudioPlayer.currentPos = i + 1;
        return i;
    }

    public MyAudioPlayer(Context context, String str, MediaPlayer mediaPlayer) throws IllegalStateException, IOException {
        super(context);
        this.uIHandler = new Handler(Looper.getMainLooper());
        this.currentPos = 0;
        this.isPlay = false;
        this.isFromLms = false;
        this.context = context;
        this.player = mediaPlayer;
        init(context, str);
    }

    public MyAudioPlayer(Context context, String str, MediaPlayer mediaPlayer, boolean z, LmsServiceImpl lmsServiceImpl, LmsLessonDataBean lmsLessonDataBean, Integer num) throws IllegalStateException, IOException {
        super(context);
        this.uIHandler = new Handler(Looper.getMainLooper());
        this.currentPos = 0;
        this.isPlay = false;
        this.context = context;
        this.player = mediaPlayer;
        this.isFromLms = z;
        this.lmsService = lmsServiceImpl;
        this.lesson = lmsLessonDataBean;
        this.courseId = num;
        if (Boolean.TRUE.equals(Boolean.valueOf(z))) {
            Date date = new Date();
            this.startDate = date;
            lmsServiceImpl.updateStartDateForMedia(date, lmsLessonDataBean.getActualId(), lmsLessonDataBean.getTopicId(), num);
            this.viewedMediaBean = lmsServiceImpl.getViewedLessonById(lmsLessonDataBean.getActualId());
        }
        init(context, str);
    }

    private void init(Context context, String str) throws IllegalStateException, IOException {
        AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.ThemeOverlay_MaterialComponents_MaterialAlertDialog);
        builder.setCancelable(false);
        if (str != null) {
            builder.setTitle(str);
        }
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.prepare();
            } catch (Exception e) {
                Log.e(getClass().getName(), null, e);
            }
            int duration = this.player.getDuration() / 1000;
            this.player.setOnCompletionListener(this);
            LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
            linearLayout.setPadding(30, 30, 30, 0);
            SeekBar seekBar = new SeekBar(context);
            this.seekbar = seekBar;
            seekBar.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            this.seekbar.setMax(duration);
            this.seekbar.setOnSeekBarChangeListener(this);
            linearLayout.addView(this.seekbar);
            MaterialTextView materialTextView = MyStaticComponents.getMaterialTextView(context, getTimeViewString(), -1, com.argusoft.sewa.android.app.R.style.CustomLabelView, false);
            this.timeView = materialTextView;
            materialTextView.setPadding(30, 0, 0, 0);
            linearLayout.addView(this.timeView);
            builder.setView(linearLayout);
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyAudioPlayer.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) throws IllegalStateException {
                if (MyAudioPlayer.this.player != null) {
                    MyAudioPlayer.this.player.stop();
                    if (MyAudioPlayer.this.isFromLms) {
                        if (MyAudioPlayer.this.currentPos != 0) {
                            MyAudioPlayer.this.lmsService.updateLastPausedOnForMedia(Integer.valueOf(MyAudioPlayer.this.currentPos), MyAudioPlayer.this.lesson.getActualId(), MyAudioPlayer.this.lesson.getTopicId(), MyAudioPlayer.this.courseId);
                        }
                        MyAudioPlayer.this.lmsService.addSessionsForMedia(MyAudioPlayer.this.startDate, new Date(), MyAudioPlayer.this.lesson.getActualId(), MyAudioPlayer.this.lesson.getTopicId(), MyAudioPlayer.this.courseId);
                        MyAudioPlayer.this.askForFeedback();
                    }
                }
            }
        };
        builder.setPositiveButton(UtilBean.getMyLabel(GlobalTypes.EVENT_PAUSE), (DialogInterface.OnClickListener) null);
        builder.setNegativeButton("Cancel", onClickListener);
        AlertDialog alertDialogCreate = builder.create();
        this.alertDialog = alertDialogCreate;
        alertDialogCreate.show();
        Button button = this.alertDialog.getButton(-1);
        this.button = button;
        button.setOnClickListener(this);
        try {
            LmsViewedMediaBean lmsViewedMediaBean = this.viewedMediaBean;
            if (lmsViewedMediaBean != null && lmsViewedMediaBean.getLastPausedOn() != null) {
                onProgressChanged(this.seekbar, this.viewedMediaBean.getLastPausedOn().intValue(), true);
            }
            play();
            this.button.setText(UtilBean.getMyLabel(GlobalTypes.EVENT_PAUSE));
        } catch (Exception e2) {
            Log.e(getClass().getName(), null, e2);
            this.button.setText(UtilBean.getMyLabel(GlobalTypes.EVENT_PLAY));
            this.isPlay = false;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IllegalStateException {
        if (this.isPlay) {
            pause();
            this.button.setText(UtilBean.getMyLabel(GlobalTypes.EVENT_PLAY));
            return;
        }
        try {
            play();
            this.button.setText(UtilBean.getMyLabel(GlobalTypes.EVENT_PAUSE));
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
            this.isPlay = false;
        }
    }

    @Override // android.app.Dialog
    public void show() {
        this.alertDialog.show();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.alertDialog.dismiss();
    }

    @Override // android.app.Dialog
    public void hide() {
        this.alertDialog.hide();
    }

    private void play() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer != null) {
            mediaPlayer.start();
            this.isPlay = true;
        }
        new Thread(new Runnable() { // from class: com.argusoft.sewa.android.app.component.MyAudioPlayer.2
            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                while (MyAudioPlayer.this.player != null && MyAudioPlayer.this.player.isPlaying()) {
                    try {
                        MyAudioPlayer.this.seekbar.setProgress(MyAudioPlayer.access$208(MyAudioPlayer.this));
                        MyAudioPlayer.this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.MyAudioPlayer.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MyAudioPlayer.this.timeView.setText(MyAudioPlayer.this.getTimeViewString());
                            }
                        });
                        Thread.sleep(1000L);
                        if (MyAudioPlayer.this.player == null) {
                            return;
                        }
                    } catch (Exception e) {
                        Log.e(getClass().getName(), null, e);
                        return;
                    }
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTimeViewString() {
        return getTimeInHhMmSSFromMillis(this.currentPos * 1000) + "/" + getTimeInHhMmSSFromMillis(this.seekbar.getMax() * 1000);
    }

    private String getTimeInHhMmSSFromMillis(int i) {
        if (this.seekbar.getMax() >= 3600) {
            long j = i;
            return String.format(Locale.getDefault(), "%02d:%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(j)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(j))), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j))));
        }
        long j2 = i;
        return String.format(Locale.getDefault(), "%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j2)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j2) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j2))));
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.isPlay = false;
        cancel();
        this.currentPos = 0;
        if (Boolean.TRUE.equals(Boolean.valueOf(this.isFromLms))) {
            Date date = new Date();
            this.lmsService.updateEndDateForMedia(date, this.lesson.getActualId(), this.lesson.getTopicId(), this.courseId);
            this.lmsService.addSessionsForMedia(this.startDate, date, this.lesson.getActualId(), this.lesson.getTopicId(), this.courseId);
            this.lmsService.markLessonCompleted(this.lesson.getActualId(), this.lesson.getTopicId(), this.courseId);
            this.lmsService.updateLastPausedOnForMedia(null, this.lesson.getActualId(), this.lesson.getTopicId(), this.courseId);
            askForFeedback();
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) throws IllegalStateException {
        if (z) {
            MediaPlayer mediaPlayer = this.player;
            if (mediaPlayer != null) {
                mediaPlayer.seekTo(i * 1000);
            }
            this.currentPos = i;
        }
    }

    private void pause() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer != null) {
            this.isPlay = false;
            mediaPlayer.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void askForFeedback() {
        if (Boolean.TRUE.equals(this.lesson.getUserFeedbackRequired())) {
            LmsViewedMediaBean viewedLessonById = this.lmsService.getViewedLessonById(this.lesson.getActualId());
            this.viewedMediaBean = viewedLessonById;
            if (viewedLessonById != null && Boolean.TRUE.equals(this.viewedMediaBean.getCompleted()) && this.viewedMediaBean.getUserFeedback() == null) {
                LMSFeedbackComponent lMSFeedbackComponent = new LMSFeedbackComponent(this.context, this.lmsService, this.viewedMediaBean);
                this.feedbackAlert = lMSFeedbackComponent;
                lMSFeedbackComponent.show();
            }
        }
    }
}
