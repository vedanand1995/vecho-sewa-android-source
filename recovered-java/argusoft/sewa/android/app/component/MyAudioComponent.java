package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import java.io.IOException;
import java.util.Date;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class MyAudioComponent extends LinearLayout implements SeekBar.OnSeekBarChangeListener, MediaPlayer.OnCompletionListener, View.OnClickListener {
    private final Context context;
    private Integer courseId;
    private int currentPos;
    private LMSFeedbackComponent feedbackAlert;
    private boolean isFromLms;
    private boolean isPlaying;
    private int layoutResId;
    private LmsLessonDataBean lesson;
    private LmsServiceImpl lmsService;
    private LinearLayout mainLayout;
    private MediaPlayerListener mediaPlayerListener;
    private ImageButton playPauseButton;
    private TextView playedTime;
    private final MediaPlayer player;
    private SeekBar seekbar;
    private Date startDate;
    private Timer timer;
    private final Handler uIHandler;
    private LmsViewedMediaBean viewedMediaBean;

    public interface MediaPlayerListener {
        void onCompletion();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    static /* synthetic */ int access$108(MyAudioComponent myAudioComponent) {
        int i = myAudioComponent.currentPos;
        myAudioComponent.currentPos = i + 1;
        return i;
    }

    public MyAudioComponent(Context context, String str, MediaPlayer mediaPlayer) throws IllegalStateException, IOException {
        super(context);
        this.timer = new Timer();
        this.uIHandler = new Handler(Looper.getMainLooper());
        this.currentPos = 0;
        this.isPlaying = false;
        this.isFromLms = false;
        this.layoutResId = R.layout.audio_player_layout;
        this.context = context;
        this.player = mediaPlayer;
        init(context, str);
    }

    public MyAudioComponent(Context context, String str, MediaPlayer mediaPlayer, boolean z, LmsServiceImpl lmsServiceImpl, LmsLessonDataBean lmsLessonDataBean, Integer num) throws IllegalStateException, IOException {
        super(context);
        this.timer = new Timer();
        this.uIHandler = new Handler(Looper.getMainLooper());
        this.currentPos = 0;
        this.isPlaying = false;
        this.isFromLms = false;
        this.layoutResId = R.layout.audio_player_layout;
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

    public MyAudioComponent(Context context, int i, MediaPlayer mediaPlayer, MediaPlayerListener mediaPlayerListener) throws IllegalStateException, IOException {
        super(context);
        this.timer = new Timer();
        this.uIHandler = new Handler(Looper.getMainLooper());
        this.currentPos = 0;
        this.isPlaying = false;
        this.isFromLms = false;
        int i2 = R.layout.audio_player_layout;
        this.context = context;
        this.layoutResId = i;
        this.player = mediaPlayer;
        this.mediaPlayerListener = mediaPlayerListener;
        init(context, null);
    }

    private void init(Context context, String str) throws IllegalStateException, IOException {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.audio_player_layout, (ViewGroup) null);
        this.mainLayout = linearLayout;
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        ((TextView) this.mainLayout.findViewById(R.id.audio_title_view)).setText(str);
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.prepare();
            } catch (Exception e) {
                Log.e(getClass().getName(), null, e);
            }
            int duration = this.player.getDuration() / 1000;
            this.player.setOnCompletionListener(this);
            ImageButton imageButton = (ImageButton) this.mainLayout.findViewById(R.id.audio_play_button);
            this.playPauseButton = imageButton;
            imageButton.setOnClickListener(this);
            SeekBar seekBar = (SeekBar) this.mainLayout.findViewById(R.id.audio_seekbar);
            this.seekbar = seekBar;
            seekBar.setMax(duration);
            this.seekbar.setOnSeekBarChangeListener(this);
            ((TextView) this.mainLayout.findViewById(R.id.audio_total_time)).setText(getTimeInHhMmSSFromMillis(this.seekbar.getMax() * 1000));
            this.playedTime = (TextView) this.mainLayout.findViewById(R.id.audio_played_time);
        }
        try {
            LmsViewedMediaBean lmsViewedMediaBean = this.viewedMediaBean;
            if (lmsViewedMediaBean != null && lmsViewedMediaBean.getLastPausedOn() != null) {
                onProgressChanged(this.seekbar, this.viewedMediaBean.getLastPausedOn().intValue() / 1000, true);
            }
            play();
        } catch (Exception e2) {
            Log.e(getClass().getName(), null, e2);
            this.isPlaying = false;
        }
        addView(this.mainLayout);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        this.mainLayout.setBackgroundResource(i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IllegalStateException {
        if (this.isPlaying) {
            pause();
            return;
        }
        try {
            play();
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
            this.isPlaying = false;
        }
    }

    private void pause() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer != null) {
            this.isPlaying = false;
            mediaPlayer.pause();
            this.playPauseButton.setImageResource(R.drawable.my_video_view_player_btn);
        }
    }

    public void play() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer != null) {
            mediaPlayer.start();
            this.isPlaying = true;
            this.playPauseButton.setImageResource(R.drawable.my_video_view_stop_btn);
        }
        this.timer.cancel();
        Timer timer = new Timer();
        this.timer = timer;
        timer.scheduleAtFixedRate(new TimerTask() { // from class: com.argusoft.sewa.android.app.component.MyAudioComponent.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (MyAudioComponent.this.player == null || !MyAudioComponent.this.player.isPlaying() || MyAudioComponent.this.currentPos >= MyAudioComponent.this.seekbar.getMax()) {
                    return;
                }
                try {
                    MyAudioComponent.this.seekbar.setProgress(MyAudioComponent.access$108(MyAudioComponent.this));
                    MyAudioComponent.this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.MyAudioComponent.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MyAudioComponent.this.playedTime.setText(MyAudioComponent.this.getTimeInHhMmSSFromMillis(MyAudioComponent.this.currentPos * 1000));
                        }
                    });
                } catch (Exception e) {
                    Log.e(getClass().getName(), null, e);
                }
            }
        }, 0L, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTimeInHhMmSSFromMillis(int i) {
        if (this.seekbar.getMax() >= 3600) {
            long j = i;
            return String.format(Locale.getDefault(), "%02d:%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(j)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(j))), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j))));
        }
        long j2 = i;
        return String.format(Locale.getDefault(), "%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j2)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j2) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j2))));
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.isPlaying = false;
        this.currentPos = 0;
        this.playPauseButton.setImageResource(R.drawable.my_video_view_player_btn);
        MediaPlayerListener mediaPlayerListener = this.mediaPlayerListener;
        if (mediaPlayerListener != null) {
            mediaPlayerListener.onCompletion();
        }
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

    private void askForFeedback() {
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
