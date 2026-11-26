package com.argusoft.sewa.android.app.activity;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.model.SupportActionBean;
import com.argusoft.sewa.android.app.model.SupportAttachmentBean;
import com.argusoft.sewa.android.app.model.SupportCommentBean;
import com.argusoft.sewa.android.app.model.SupportTicketBean;
import com.argusoft.sewa.android.app.support.SupportApi;
import com.argusoft.sewa.android.app.support.SupportAudio;
import com.argusoft.sewa.android.app.support.SupportLabels;
import com.argusoft.sewa.android.app.support.SupportPhotos;
import com.argusoft.sewa.android.app.support.SupportStatus;
import com.argusoft.sewa.android.app.support.SupportStore;
import com.argusoft.sewa.android.app.support.VoiceNote;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.google.android.material.button.MaterialButton;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public class SupportTicketActivity extends MenuActivity {
    public static final String EXTRA_LOCAL_ID = "support_ticket_local_id";
    private static final int MIC_REQUEST = 4102;
    private static final String REPORT_KEY = "report";
    private static final long REPORT_WINDOW_MS = 120000;
    private static final String VOICE_REPLY_BODY = "Replied with a voice note.";
    private SupportAudio audio;
    private boolean busy;
    private int localId;
    private LinearLayout messages;
    private ImageButton mic;
    private String playingKey;
    private long recordingStartedAt;
    private SwipeRefreshLayout refresh;
    private EditText reply;
    private View send;
    SupportStore store;
    private VoiceNote voice;
    private final Map<String, ImageButton> playButtons = new HashMap();
    private final Map<String, TextView> playTimes = new HashMap();
    private final Map<String, Integer> playLengths = new HashMap();
    private final Handler clock = new Handler(Looper.getMainLooper());
    private final Runnable recordTick = new Runnable() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (SupportTicketActivity.this.voice.isRecording()) {
                ((TextView) SupportTicketActivity.this.findViewById(R.id.reply_recording_text)).setText(VoiceNote.clock(System.currentTimeMillis() - SupportTicketActivity.this.recordingStartedAt) + "   " + SupportLabels.get(SupportLabels.TAP_TO_SEND_VOICE));
                SupportTicketActivity.this.clock.postDelayed(this, 500L);
            }
        }
    };
    private final Runnable playTick = new Runnable() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity.2
        @Override // java.lang.Runnable
        public void run() {
            TextView textView = SupportTicketActivity.this.playingKey == null ? null : (TextView) SupportTicketActivity.this.playTimes.get(SupportTicketActivity.this.playingKey);
            if (textView == null || !SupportTicketActivity.this.audio.isPlaying(SupportTicketActivity.this.playingKey)) {
                return;
            }
            textView.setText(VoiceNote.clock(SupportTicketActivity.this.audio.positionMs()) + " / " + VoiceNote.clock(SupportTicketActivity.this.audio.durationMs()));
            SupportTicketActivity.this.clock.postDelayed(this, 250L);
        }
    };

    private static int tint(int i) {
        return (i & ViewCompat.MEASURED_SIZE_MASK) | 520093696;
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_support_ticket);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setTitle(SupportLabels.get(SupportLabels.YOUR_REPORT));
        this.localId = getIntent().getIntExtra(EXTRA_LOCAL_ID, -1);
        this.voice = new VoiceNote(this);
        this.audio = new SupportAudio(new SupportAudio.Listener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda7
            @Override // com.argusoft.sewa.android.app.support.SupportAudio.Listener
            public final void onChanged(String str) {
                this.f$0.m541xe68fcaee(str);
            }
        });
        this.refresh = (SwipeRefreshLayout) findViewById(R.id.ticket_refresh);
        this.messages = (LinearLayout) findViewById(R.id.ticket_messages);
        this.mic = (ImageButton) findViewById(R.id.reply_mic);
        this.reply = (EditText) findViewById(R.id.reply_text);
        this.send = findViewById(R.id.reply_send);
        this.refresh.setColorSchemeResources(R.color.colorPrimary);
        this.refresh.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda8
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() throws IllegalStateException {
                this.f$0.syncNow();
            }
        });
        text(R.id.ticket_messages_title, SupportLabels.REPLIES);
        text(R.id.ticket_report_label, SupportLabels.YOUR_REPORT);
        text(R.id.ticket_details_label, SupportLabels.DETAILS);
        text(R.id.ticket_fixed_question, SupportLabels.IS_IT_FIXED);
        text(R.id.report_voice_title, SupportLabels.PLAY_RECORDING);
        text(R.id.track_label1, SupportLabels.TRACK_GOT_IT);
        text(R.id.track_label2, SupportLabels.TRACK_FIXING);
        text(R.id.track_label3, SupportLabels.TRACK_FIXED);
        text(R.id.note_pending_body, SupportLabels.NOT_SENT_BANNER);
        ((MaterialButton) findViewById(R.id.note_pending_sync)).setText(SupportLabels.get(SupportLabels.SYNC_NOW));
        ((MaterialButton) findViewById(R.id.ticket_yes)).setText(SupportLabels.get(SupportLabels.YES_FIXED));
        ((MaterialButton) findViewById(R.id.ticket_no)).setText(SupportLabels.get(SupportLabels.NOT_FIXED));
        this.reply.setHint(SupportLabels.get(SupportLabels.WRITE_REPLY));
        this.mic.setContentDescription(SupportLabels.get(SupportLabels.REPLY_BY_VOICE));
        this.send.setContentDescription(SupportLabels.get(SupportLabels.SEND));
        findViewById(R.id.reply_cancel).setContentDescription(SupportLabels.get(SupportLabels.CANCEL));
        findViewById(R.id.note_pending_sync).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m542x7ace3a8d(view);
            }
        });
        this.mic.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m543xf0caa2c(view);
            }
        });
        findViewById(R.id.reply_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m544xa34b19cb(view);
            }
        });
        this.send.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m545x3789896a(view);
            }
        });
        this.reply.addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SupportTicketActivity.this.showReplyState();
            }
        });
        findViewById(R.id.ticket_yes).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m546xcbc7f909(view);
            }
        });
        findViewById(R.id.ticket_no).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m547x600668a8(view);
            }
        });
        ((MaterialButton) findViewById(R.id.ticket_reopen)).setText(SupportLabels.get(SupportLabels.PROBLEM_BACK));
        findViewById(R.id.ticket_reopen).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m548xf444d847(view);
            }
        });
        showReplyState();
    }

    /* renamed from: lambda$onCreate$1$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m541xe68fcaee(final String str) {
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m540x52515b4f(str);
            }
        });
    }

    /* renamed from: lambda$onCreate$2$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m542x7ace3a8d(View view) throws IllegalStateException {
        syncNow();
    }

    /* renamed from: lambda$onCreate$3$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m543xf0caa2c(View view) throws IllegalStateException {
        onMic();
    }

    /* renamed from: lambda$onCreate$4$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m544xa34b19cb(View view) throws IllegalStateException {
        cancelRecording();
    }

    /* renamed from: lambda$onCreate$5$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m545x3789896a(View view) throws IllegalStateException {
        onSendText();
    }

    /* renamed from: lambda$onCreate$6$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m546xcbc7f909(View view) throws IllegalStateException {
        answer(true, null);
    }

    /* renamed from: lambda$onCreate$7$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m547x600668a8(View view) {
        askWhyNotFixed();
    }

    /* renamed from: lambda$onCreate$8$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m548xf444d847(View view) {
        askWhyNotFixed();
    }

    private void text(int i, String str) {
        ((TextView) findViewById(i)).setText(SupportLabels.get(str));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IllegalStateException {
        super.onResume();
        resumeActivity();
        render();
        SupportTicketBean supportTicketBeanTicket = this.store.ticket(this.localId);
        if (supportTicketBeanTicket != null && supportTicketBeanTicket.isOnServer() && SupportApi.isOnline(this)) {
            fetch();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() throws IllegalStateException {
        super.onPause();
        if (this.voice.isRecording()) {
            cancelRecording();
        }
        this.audio.stop();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() throws IllegalStateException {
        this.clock.removeCallbacksAndMessages(null);
        if (this.voice.isRecording()) {
            this.voice.discard();
        }
        super.onDestroy();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private Long owner() {
        if (SewaTransformer.loginBean == null) {
            return null;
        }
        return SewaTransformer.loginBean.getUserID();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fetch() throws IllegalStateException {
        try {
            this.store.refreshOne(this, this.localId);
        } catch (SupportApi.Failure unused) {
        }
        fetched();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fetched() throws IllegalStateException {
        if (isFinishing() || this.busy) {
            return;
        }
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncNow() throws IllegalStateException {
        if (!SupportApi.isOnline(this)) {
            this.refresh.setRefreshing(false);
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.SYNC_OFFLINE));
        } else {
            this.refresh.setRefreshing(true);
            findViewById(R.id.note_pending_sync).setEnabled(false);
            runSync(owner());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void runSync(Long l) throws IllegalStateException {
        SupportStore.SyncResult syncResultSync = this.store.sync(this, l);
        try {
            this.store.refreshOne(this, this.localId);
        } catch (SupportApi.Failure unused) {
        }
        synced(syncResultSync);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void synced(SupportStore.SyncResult syncResult) throws IllegalStateException {
        String str;
        if (isFinishing()) {
            return;
        }
        this.refresh.setRefreshing(false);
        findViewById(R.id.note_pending_sync).setEnabled(true);
        if (syncResult.offline) {
            str = SupportLabels.SYNC_OFFLINE;
        } else if (syncResult.sessionEnded) {
            str = SupportLabels.LOGIN_AGAIN;
        } else {
            str = syncResult.networkProblem ? SupportLabels.SYNC_PROBLEM : SupportLabels.SYNC_DONE;
        }
        SewaUtil.generateToast(this, SupportLabels.get(str));
        render();
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x02f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void render() throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 1155
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.SupportTicketActivity.render():void");
    }

    private void detail(LinearLayout linearLayout, String str, String str2) {
        float f = getResources().getDisplayMetrics().density;
        if (linearLayout.getChildCount() > 0) {
            View view = new View(this);
            view.setBackgroundColor(ContextCompat.getColor(this, R.color.support_line));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, Math.max(1, (int) f));
            layoutParams.leftMargin = (int) (f * 14.0f);
            linearLayout.addView(view, layoutParams);
        }
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        int i = (int) (f * 14.0f);
        int i2 = (int) (f * 12.0f);
        linearLayout2.setPadding(i, i2, i, i2);
        TextView textView = new TextView(this);
        textView.setText(SupportLabels.get(str));
        textView.setTextSize(14.0f);
        textView.setTextColor(ContextCompat.getColor(this, R.color.support_muted));
        linearLayout2.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView textView2 = new TextView(this);
        textView2.setText(str2);
        textView2.setTextSize(14.0f);
        textView2.setTypeface(textView2.getTypeface(), 1);
        textView2.setTextColor(ContextCompat.getColor(this, R.color.textColor));
        textView2.setGravity(GravityCompat.END);
        linearLayout2.addView(textView2, new LinearLayout.LayoutParams(0, -2, 1.4f));
        linearLayout.addView(linearLayout2);
    }

    private View noReplies() {
        float f = getResources().getDisplayMetrics().density;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setBackgroundResource(R.drawable.support_card);
        int i = (int) (f * 14.0f);
        linearLayout.setPadding(i, i, i, i);
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.ic_support_chat);
        imageView.setColorFilter(ContextCompat.getColor(this, R.color.support_muted));
        int i2 = (int) (24.0f * f);
        linearLayout.addView(imageView, new LinearLayout.LayoutParams(i2, i2));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding((int) (12.0f * f), 0, 0, 0);
        TextView textView = new TextView(this);
        textView.setText(SupportLabels.get(SupportLabels.NO_REPLY));
        textView.setTextSize(15.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setTextColor(ContextCompat.getColor(this, R.color.textColor));
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setText(SupportLabels.get(SupportLabels.NO_REPLY_HINT));
        textView2.setTextSize(14.0f);
        textView2.setTextColor(ContextCompat.getColor(this, R.color.support_muted));
        textView2.setPadding(0, (int) (f * 2.0f), 0, 0);
        linearLayout2.addView(textView2);
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        return linearLayout;
    }

    private void showTrack(SupportStatus supportStatus, int i) {
        findViewById(R.id.ticket_track).setVisibility(supportStatus.step == 0 ? 8 : 0);
        int color = ContextCompat.getColor(this, R.color.support_line);
        int color2 = ContextCompat.getColor(this, R.color.support_muted);
        int[] iArr = {R.id.track_dot1, R.id.track_dot2, R.id.track_dot3};
        int[] iArr2 = {R.id.track_label1, R.id.track_label2, R.id.track_label3};
        int i2 = 0;
        while (i2 < 3) {
            int i3 = i2 < supportStatus.step ? 1 : 0;
            ImageView imageView = (ImageView) findViewById(iArr[i2]);
            if (i3 != 0) {
                imageView.setBackgroundResource(R.drawable.support_mic_circle);
                imageView.setBackgroundTintList(ColorStateList.valueOf(i));
                imageView.setImageResource(R.drawable.ic_support_check);
                imageView.setColorFilter(ContextCompat.getColor(this, R.color.white));
            } else {
                imageView.setBackgroundResource(R.drawable.support_ring);
                imageView.setBackgroundTintList(null);
                imageView.setImageDrawable(null);
            }
            TextView textView = (TextView) findViewById(iArr2[i2]);
            textView.setTextColor(i3 != 0 ? i : color2);
            textView.setTypeface(null, i3);
            i2++;
        }
        findViewById(R.id.track_line1).setBackgroundColor(supportStatus.step >= 2 ? i : color);
        View viewFindViewById = findViewById(R.id.track_line2);
        if (supportStatus.step < 3) {
            i = color;
        }
        viewFindViewById.setBackgroundColor(i);
    }

    private void callout(int i, boolean z, int i2, int i3, String str, String str2) {
        View viewFindViewById = findViewById(i);
        viewFindViewById.setVisibility(z ? 0 : 8);
        if (z) {
            int color = ContextCompat.getColor(this, i3);
            viewFindViewById.setBackground(box(color));
            LinearLayout linearLayout = (LinearLayout) viewFindViewById;
            ImageView imageView = (ImageView) linearLayout.getChildAt(0);
            imageView.setImageResource(i2);
            imageView.setColorFilter(color);
            LinearLayout linearLayout2 = (LinearLayout) linearLayout.getChildAt(1);
            TextView textView = (TextView) linearLayout2.getChildAt(0);
            textView.setText(str);
            textView.setTextColor(color);
            ((TextView) linearLayout2.getChildAt(1)).setText(str2);
        }
    }

    private GradientDrawable box(int i) {
        float f = getResources().getDisplayMetrics().density;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(14.0f * f);
        gradientDrawable.setColor(tint(i));
        gradientDrawable.setStroke((int) (f * 1.5f), (i & ViewCompat.MEASURED_SIZE_MASK) | 1711276032);
        return gradientDrawable;
    }

    private SupportAttachmentBean nearest(List<SupportAttachmentBean> list, String str, Set<Long> set) {
        long jMillis = SupportStatus.millis(str);
        long j = LongCompanionObject.MAX_VALUE;
        SupportAttachmentBean supportAttachmentBean = null;
        for (SupportAttachmentBean supportAttachmentBean2 : list) {
            long jAbs = Math.abs(SupportStatus.millis(supportAttachmentBean2.createdAt) - jMillis);
            if (!set.contains(supportAttachmentBean2.serverId) && jAbs < j) {
                supportAttachmentBean = supportAttachmentBean2;
                j = jAbs;
            }
        }
        if (supportAttachmentBean == null || j >= REPORT_WINDOW_MS) {
            return null;
        }
        set.add(supportAttachmentBean.serverId);
        return supportAttachmentBean;
    }

    private View bubble(SupportTicketBean supportTicketBean, SupportCommentBean supportCommentBean, SupportAttachmentBean supportAttachmentBean) {
        float[] fArr;
        StringBuilder sb;
        Object id;
        int i;
        int i2;
        float f;
        float f2 = getResources().getDisplayMetrics().density;
        boolean zEquals = SupportTicketBean.SYNCED.equals(supportCommentBean.syncState);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        int i3 = (int) (12.0f * f2);
        int i4 = (int) (10.0f * f2);
        linearLayout2.setPadding(i3, i4, i3, i4);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(ContextCompat.getColor(this, supportCommentBean.mine ? R.color.support_bubble_mine : R.color.support_bubble_theirs));
        float f3 = f2 * 16.0f;
        float f4 = f2 * 4.0f;
        if (supportCommentBean.mine) {
            fArr = new float[]{f3, f3, f4, f4, f3, f3, f3, f3};
        } else {
            fArr = new float[]{f4, f4, f3, f3, f3, f3, f3, f3};
        }
        gradientDrawable.setCornerRadii(fArr);
        linearLayout2.setBackground(gradientDrawable);
        TextView textView = new TextView(this);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(SupportLabels.get(supportCommentBean.mine ? SupportLabels.YOU : SupportLabels.SUPPORT));
        sb2.append("  ·  ");
        sb2.append(SupportStatus.dayAndTime(supportCommentBean.createdAt));
        textView.setText(sb2.toString());
        textView.setTextSize(13.0f);
        textView.setTextColor(ContextCompat.getColor(this, R.color.support_muted));
        linearLayout2.addView(textView);
        File file = (supportCommentBean.voicePath == null || !new File(supportCommentBean.voicePath).exists()) ? null : new File(supportCommentBean.voicePath);
        if (file != null || supportAttachmentBean != null) {
            LinearLayout linearLayout3 = new LinearLayout(this);
            linearLayout3.setOrientation(0);
            linearLayout3.setGravity(16);
            linearLayout3.setPadding(0, (int) (f2 * 6.0f), (int) (f2 * 8.0f), 0);
            ImageButton imageButton = new ImageButton(this);
            imageButton.setBackgroundResource(R.drawable.support_mic_circle);
            imageButton.setColorFilter(ContextCompat.getColor(this, R.color.white));
            imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageButton.setPadding(i3, i3, i3, i3);
            int i5 = (int) (f2 * 48.0f);
            linearLayout3.addView(imageButton, new LinearLayout.LayoutParams(i5, i5));
            LinearLayout linearLayout4 = new LinearLayout(this);
            linearLayout4.setOrientation(1);
            linearLayout4.setPadding(i3, 0, 0, 0);
            TextView textView2 = new TextView(this);
            textView2.setText(SupportLabels.get(SupportLabels.VOICE_NOTE));
            textView2.setTextSize(16.0f);
            textView2.setTypeface(textView2.getTypeface(), 1);
            textView2.setTextColor(ContextCompat.getColor(this, R.color.textColor));
            linearLayout4.addView(textView2);
            TextView textView3 = new TextView(this);
            textView3.setTextSize(14.0f);
            textView3.setTextColor(ContextCompat.getColor(this, R.color.support_muted));
            linearLayout4.addView(textView3);
            linearLayout3.addView(linearLayout4);
            linearLayout2.addView(linearLayout3);
            if (file != null) {
                sb = new StringBuilder("local_");
                id = supportCommentBean.getId();
            } else {
                sb = new StringBuilder("att_");
                id = supportAttachmentBean.serverId;
            }
            sb.append(id);
            i = i4;
            i2 = 0;
            f = f4;
            bindPlayer(sb.toString(), supportTicketBean, supportAttachmentBean, file, supportAttachmentBean == null ? null : supportAttachmentBean.durationSeconds, imageButton, textView3);
        } else {
            TextView textView4 = new TextView(this);
            textView4.setText(VOICE_REPLY_BODY.equals(supportCommentBean.body) ? SupportLabels.get(SupportLabels.VOICE_NOTE) : supportCommentBean.body);
            textView4.setTextSize(17.0f);
            textView4.setTextColor(ContextCompat.getColor(this, R.color.textColor));
            textView4.setPadding(0, (int) f4, 0, 0);
            linearLayout2.addView(textView4);
            f = f4;
            i = i4;
            i2 = 0;
        }
        linearLayout.addView(linearLayout2);
        if (!zEquals) {
            LinearLayout linearLayout5 = new LinearLayout(this);
            linearLayout5.setOrientation(i2);
            linearLayout5.setGravity(8388629);
            int i6 = (int) f;
            linearLayout5.setPadding(i2, i6, i6, i2);
            int color = ContextCompat.getColor(this, R.color.support_tone_warning);
            ImageView imageView = new ImageView(this);
            imageView.setImageResource(R.drawable.ic_support_wait);
            imageView.setColorFilter(color);
            int i7 = (int) f3;
            linearLayout5.addView(imageView, new LinearLayout.LayoutParams(i7, i7));
            TextView textView5 = new TextView(this);
            textView5.setText((!SupportTicketBean.FAILED.equals(supportCommentBean.syncState) || supportCommentBean.syncError == null) ? SupportLabels.get(SupportLabels.WAITING_FOR_SYNC) : supportCommentBean.syncError);
            textView5.setTextSize(13.0f);
            textView5.setTextColor(color);
            textView5.setPadding((int) (f2 * 6.0f), i2, i2, i2);
            linearLayout5.addView(textView5);
            linearLayout.addView(linearLayout5);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = supportCommentBean.mine ? GravityCompat.END : GravityCompat.START;
        layoutParams.bottomMargin = i;
        if (supportCommentBean.mine) {
            layoutParams.leftMargin = (int) (f2 * 48.0f);
        } else {
            layoutParams.rightMargin = (int) (f2 * 48.0f);
        }
        linearLayout.setLayoutParams(layoutParams);
        return linearLayout;
    }

    private void bindPlayer(final String str, final SupportTicketBean supportTicketBean, final SupportAttachmentBean supportAttachmentBean, final File file, Integer num, ImageButton imageButton, final TextView textView) {
        this.playButtons.put(str, imageButton);
        this.playTimes.put(str, textView);
        int iIntValue = num == null ? 0 : num.intValue() * 1000;
        this.playLengths.put(str, Integer.valueOf(iIntValue));
        textView.setText(iIntValue > 0 ? VoiceNote.clock(iIntValue) : SupportLabels.get(SupportLabels.LISTEN));
        imageButton.setImageResource(R.drawable.ic_support_play);
        imageButton.setContentDescription(SupportLabels.get(SupportLabels.LISTEN));
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m539x9ab64d03(str, file, supportAttachmentBean, textView, supportTicketBean, view);
            }
        });
    }

    /* renamed from: lambda$bindPlayer$9$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m539x9ab64d03(String str, File file, SupportAttachmentBean supportAttachmentBean, TextView textView, SupportTicketBean supportTicketBean, View view) throws IllegalStateException {
        if (this.audio.isPlaying(str)) {
            this.audio.stop();
            return;
        }
        if (file != null) {
            playNow(str, file);
            return;
        }
        if (supportAttachmentBean != null && SupportStore.hasCopy(supportAttachmentBean)) {
            playNow(str, new File(supportAttachmentBean.localPath));
        } else if (supportAttachmentBean != null && SupportApi.isOnline(this)) {
            textView.setText(SupportLabels.get(SupportLabels.LOADING));
            fetchAndPlay(str, supportTicketBean, supportAttachmentBean);
        } else {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.NEED_NETWORK));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fetchAndPlay(String str, SupportTicketBean supportTicketBean, SupportAttachmentBean supportAttachmentBean) {
        try {
            playNow(str, this.store.download(this, supportTicketBean, supportAttachmentBean));
        } catch (SupportApi.Failure e) {
            notPlayed(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void playNow(String str, File file) {
        if (isFinishing() || this.audio.toggle(str, file)) {
            return;
        }
        SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.COULD_NOT));
        m540x52515b4f(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notPlayed(SupportApi.Failure failure) {
        m540x52515b4f(null);
        tell(failure);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onPlaying, reason: merged with bridge method [inline-methods] */
    public void m540x52515b4f(String str) {
        this.playingKey = str;
        this.clock.removeCallbacks(this.playTick);
        for (Map.Entry<String, ImageButton> entry : this.playButtons.entrySet()) {
            boolean zEquals = entry.getKey().equals(str);
            entry.getValue().setImageResource(zEquals ? R.drawable.ic_support_stop : R.drawable.ic_support_play);
            entry.getValue().setContentDescription(SupportLabels.get(zEquals ? SupportLabels.TAP_TO_STOP : SupportLabels.LISTEN));
            if (!zEquals) {
                TextView textView = this.playTimes.get(entry.getKey());
                Integer num = this.playLengths.get(entry.getKey());
                if (textView != null) {
                    textView.setText((num == null || num.intValue() <= 0) ? SupportLabels.get(SupportLabels.LISTEN) : VoiceNote.clock(num.intValue()));
                }
            }
        }
        if (str != null) {
            this.clock.post(this.playTick);
        }
    }

    private void showPhotos(SupportTicketBean supportTicketBean, List<File> list, List<SupportAttachmentBean> list2) {
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.report_photos);
        linearLayout.removeAllViews();
        findViewById(R.id.report_photos_strip).setVisibility(!list.isEmpty() || !list2.isEmpty() ? 0 : 8);
        int i = (int) (getResources().getDisplayMetrics().density * 88.0f);
        for (File file : list) {
            photoLoaded(thumb(linearLayout, i), SupportPhotos.thumbnail(file, i), file);
        }
        for (SupportAttachmentBean supportAttachmentBean : list2) {
            ImageView imageViewThumb = thumb(linearLayout, i);
            if (SupportStore.hasCopy(supportAttachmentBean)) {
                File file2 = new File(supportAttachmentBean.localPath);
                photoLoaded(imageViewThumb, SupportPhotos.thumbnail(file2, i), file2);
            } else if (SupportApi.isOnline(this)) {
                loadPhoto(supportTicketBean, supportAttachmentBean, imageViewThumb, i);
            }
        }
    }

    private ImageView thumb(LinearLayout linearLayout, int i) {
        float f = getResources().getDisplayMetrics().density;
        ImageView imageView = new ImageView(this);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(12.0f * f);
        gradientDrawable.setColor(ContextCompat.getColor(this, R.color.support_line));
        imageView.setBackground(gradientDrawable);
        imageView.setClipToOutline(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.rightMargin = (int) (f * 8.0f);
        linearLayout.addView(imageView, layoutParams);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadPhoto(SupportTicketBean supportTicketBean, SupportAttachmentBean supportAttachmentBean, ImageView imageView, int i) {
        try {
            File fileDownload = this.store.download(this, supportTicketBean, supportAttachmentBean);
            photoLoaded(imageView, SupportPhotos.thumbnail(fileDownload, i), fileDownload);
        } catch (SupportApi.Failure unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void photoLoaded(ImageView imageView, Bitmap bitmap, final File file) {
        if (bitmap == null || isFinishing()) {
            return;
        }
        imageView.setImageBitmap(bitmap);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m549x49a68c6a(file, view);
            }
        });
    }

    /* renamed from: lambda$photoLoaded$10$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m549x49a68c6a(File file, View view) {
        showPhoto(file);
    }

    private void showPhoto(File file) {
        final Dialog dialog = new Dialog(this, android.R.style.Theme.Black.NoTitleBar.Fullscreen);
        FrameLayout frameLayout = new FrameLayout(this);
        ImageView imageView = new ImageView(this);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImageBitmap(BitmapFactory.decodeFile(file.getAbsolutePath()));
        frameLayout.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.setContentView(frameLayout);
        if (dialog.getWindow() != null) {
            dialog.getWindow().setBackgroundDrawable(new ColorDrawable(ContextCompat.getColor(this, R.color.textColor)));
        }
        dialog.show();
    }

    private void onMic() throws IllegalStateException {
        if (this.busy) {
            return;
        }
        if (this.voice.isRecording()) {
            this.clock.removeCallbacks(this.recordTick);
            if (this.voice.stop()) {
                File file = this.voice.file();
                this.voice.handOver();
                saveAndSendReply(null, file);
                return;
            }
            showReplyState();
            return;
        }
        if (ContextCompat.checkSelfPermission(this, "android.permission.RECORD_AUDIO") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.RECORD_AUDIO"}, MIC_REQUEST);
            return;
        }
        this.audio.stop();
        if (this.voice.start()) {
            this.recordingStartedAt = System.currentTimeMillis();
            this.clock.post(this.recordTick);
        } else {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.COULD_NOT));
        }
        showReplyState();
    }

    private void cancelRecording() throws IllegalStateException {
        this.clock.removeCallbacks(this.recordTick);
        this.voice.discard();
        showReplyState();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) throws IllegalStateException {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i != MIC_REQUEST) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            onMic();
        } else {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.MIC_PERMISSION));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showReplyState() {
        boolean zIsRecording = this.voice.isRecording();
        boolean z = this.reply.getText().toString().trim().length() > 0;
        this.mic.setImageResource(zIsRecording ? R.drawable.ic_support_stop : R.drawable.ic_support_mic);
        this.mic.setBackgroundTintList(zIsRecording ? ColorStateList.valueOf(ContextCompat.getColor(this, R.color.support_recording)) : null);
        this.mic.setVisibility(this.busy ? 8 : 0);
        this.reply.setVisibility(zIsRecording ? 8 : 0);
        this.reply.setEnabled(true ^ this.busy);
        findViewById(R.id.reply_recording).setVisibility(zIsRecording ? 0 : 8);
        this.send.setVisibility((zIsRecording || !z || this.busy) ? 8 : 0);
        findViewById(R.id.reply_busy).setVisibility(this.busy ? 0 : 8);
        if (zIsRecording) {
            ((TextView) findViewById(R.id.reply_recording_text)).setText(VoiceNote.clock(0L) + "   " + SupportLabels.get(SupportLabels.TAP_TO_SEND_VOICE));
        }
    }

    private void onSendText() throws IllegalStateException {
        String strTrim = this.reply.getText().toString().trim();
        if (this.busy || strTrim.isEmpty()) {
            return;
        }
        saveAndSendReply(strTrim, null);
    }

    private void saveAndSendReply(String str, File file) throws IllegalStateException {
        try {
            SupportCommentBean supportCommentBeanSaveReply = this.store.saveReply(owner(), this.localId, str, file);
            this.reply.setText("");
            SupportTicketBean supportTicketBeanTicket = this.store.ticket(this.localId);
            if (supportTicketBeanTicket != null && supportTicketBeanTicket.isOnServer() && SupportApi.isOnline(this)) {
                this.busy = true;
                showReplyState();
                pushReply(supportCommentBeanSaveReply);
            } else {
                SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.SAVED_PRESS_SYNC));
                render();
                scrollDown();
            }
        } catch (Exception unused) {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.COULD_NOT));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pushReply(SupportCommentBean supportCommentBean) throws IllegalStateException {
        boolean z;
        try {
            this.store.m601lambda$sync$5$comargusoftsewaandroidappsupportSupportStore(supportCommentBean);
            this.store.refreshOne(this, this.localId);
            z = true;
        } catch (SupportApi.Failure unused) {
            z = false;
        }
        replyDone(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void replyDone(boolean z) throws IllegalStateException {
        this.busy = false;
        showReplyState();
        if (isFinishing()) {
            return;
        }
        SewaUtil.generateToast(this, SupportLabels.get(z ? SupportLabels.REPLY_SENT : SupportLabels.SAVED_PRESS_SYNC));
        render();
        scrollDown();
    }

    private void scrollDown() {
        final ScrollView scrollView = (ScrollView) findViewById(R.id.ticket_scroll);
        scrollView.postDelayed(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                scrollView.fullScroll(130);
            }
        }, 300L);
    }

    private void askWhyNotFixed() {
        float f = getResources().getDisplayMetrics().density;
        final EditText editText = new EditText(this);
        editText.setHint(SupportLabels.get(SupportLabels.WHY_NOT_FIXED));
        editText.setMinLines(2);
        editText.setTextSize(16.0f);
        FrameLayout frameLayout = new FrameLayout(this);
        int i = (int) (20.0f * f);
        frameLayout.setPadding(i, (int) (f * 8.0f), i, 0);
        frameLayout.addView(editText);
        new AlertDialog.Builder(this).setTitle(SupportLabels.get(SupportLabels.NOT_FIXED)).setView(frameLayout).setNegativeButton(SupportLabels.get(SupportLabels.CANCEL), (DialogInterface.OnClickListener) null).setPositiveButton(SupportLabels.get(SupportLabels.SEND), new DialogInterface.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.SupportTicketActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) throws IllegalStateException {
                this.f$0.m538xa7a6025a(editText, dialogInterface, i2);
            }
        }).show();
    }

    /* renamed from: lambda$askWhyNotFixed$13$com-argusoft-sewa-android-app-activity-SupportTicketActivity, reason: not valid java name */
    /* synthetic */ void m538xa7a6025a(EditText editText, DialogInterface dialogInterface, int i) throws IllegalStateException {
        answer(false, editText.getText().toString());
    }

    private void answer(boolean z, String str) throws IllegalStateException {
        if (this.busy) {
            return;
        }
        try {
            SupportActionBean supportActionBeanSaveAnswer = this.store.saveAnswer(owner(), this.localId, z, str);
            if (SupportApi.isOnline(this)) {
                this.busy = true;
                pushAnswer(supportActionBeanSaveAnswer, z);
            } else {
                SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.ANSWER_WAITING));
                render();
            }
        } catch (Exception unused) {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.COULD_NOT));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pushAnswer(SupportActionBean supportActionBean, boolean z) throws IllegalStateException {
        boolean z2;
        try {
            this.store.m602lambda$sync$6$comargusoftsewaandroidappsupportSupportStore(supportActionBean);
            this.store.refreshOne(this, this.localId);
            z2 = true;
        } catch (SupportApi.Failure unused) {
            z2 = false;
        }
        answered(z2, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void answered(boolean z, boolean z2) throws IllegalStateException {
        String str;
        this.busy = false;
        if (isFinishing()) {
            return;
        }
        if (z) {
            str = z2 ? SupportLabels.THANK_YOU : SupportLabels.OPENED_AGAIN;
        } else {
            str = SupportLabels.ANSWER_WAITING;
        }
        SewaUtil.generateToast(this, SupportLabels.get(str));
        render();
    }

    private void tell(SupportApi.Failure failure) {
        String str;
        if (failure.kind == SupportApi.Failure.Kind.NETWORK) {
            str = SupportLabels.NEED_NETWORK;
        } else {
            str = failure.kind == SupportApi.Failure.Kind.SESSION ? SupportLabels.LOGIN_AGAIN : SupportLabels.COULD_NOT;
        }
        SewaUtil.generateToast(this, SupportLabels.get(str));
    }
}
