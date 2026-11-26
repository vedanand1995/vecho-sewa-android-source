package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
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
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.model.SupportTicketBean;
import com.argusoft.sewa.android.app.support.SupportApi;
import com.argusoft.sewa.android.app.support.SupportLabels;
import com.argusoft.sewa.android.app.support.SupportPhotos;
import com.argusoft.sewa.android.app.support.SupportStore;
import com.argusoft.sewa.android.app.support.VoiceNote;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.button.MaterialButton;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class RaiseHelpActivity extends MenuActivity {
    private static final int MAX_PHOTOS = 5;
    private static final int MIC_REQUEST = 4101;
    private static final int MIN_NOTE = 3;
    private static final int PICK_PHOTO = 4103;
    private View halo;
    private TextView lengthView;
    private EditText note;
    private LinearLayout photoRow;
    private ImageButton play;
    private ImageButton recButton;
    private TextView recHint;
    private TextView recTitle;
    private long recordingStartedAt;
    private MaterialButton send;
    private boolean sending;
    SupportStore store;
    private VoiceNote voice;
    private final List<File> photos = new ArrayList();
    private final Handler clock = new Handler(Looper.getMainLooper());
    private final Runnable tick = new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (RaiseHelpActivity.this.voice == null || !RaiseHelpActivity.this.voice.isRecording()) {
                return;
            }
            RaiseHelpActivity.this.recTitle.setText(SupportLabels.get(SupportLabels.RECORDING_SHORT) + "  " + VoiceNote.clock(System.currentTimeMillis() - RaiseHelpActivity.this.recordingStartedAt));
            RaiseHelpActivity.this.clock.postDelayed(this, 500L);
        }
    };
    private final Runnable playTick = new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity.2
        @Override // java.lang.Runnable
        public void run() {
            if (RaiseHelpActivity.this.voice == null || !RaiseHelpActivity.this.voice.isPlaying()) {
                return;
            }
            RaiseHelpActivity.this.lengthView.setText(VoiceNote.clock(RaiseHelpActivity.this.voice.playedMs()) + " / " + VoiceNote.clock(RaiseHelpActivity.this.voice.lengthMs()));
            RaiseHelpActivity.this.clock.postDelayed(this, 250L);
        }
    };

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_raise_help);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setTitle(SupportLabels.get(SupportLabels.RAISE));
        this.voice = new VoiceNote(this);
        this.halo = findViewById(R.id.rec_halo);
        this.recButton = (ImageButton) findViewById(R.id.rec_button);
        this.recTitle = (TextView) findViewById(R.id.rec_title);
        this.recHint = (TextView) findViewById(R.id.rec_hint);
        this.play = (ImageButton) findViewById(R.id.rec_play);
        this.lengthView = (TextView) findViewById(R.id.rec_length);
        this.note = (EditText) findViewById(R.id.raise_note);
        this.photoRow = (LinearLayout) findViewById(R.id.photo_row);
        this.send = (MaterialButton) findViewById(R.id.raise_send);
        text(R.id.raise_question, SupportLabels.WHAT_IS_PROBLEM);
        text(R.id.rec_done_title, SupportLabels.RECORDING_READY);
        text(R.id.rec_player_title, SupportLabels.PLAY_RECORDING);
        text(R.id.raise_also, SupportLabels.ALSO_ADD);
        text(R.id.choice_photo_text, SupportLabels.PHOTO);
        text(R.id.choice_write_text, SupportLabels.WRITE);
        text(R.id.raise_privacy, SupportLabels.PRIVACY_SHORT);
        ((MaterialButton) findViewById(R.id.rec_again)).setText(SupportLabels.get(SupportLabels.RECORD_AGAIN));
        this.send.setText(SupportLabels.get(SupportLabels.SEND));
        this.note.setHint(SupportLabels.get(SupportLabels.WRITE_HERE));
        this.recButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m483xbc4f3961(view);
            }
        });
        this.play.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m484x493c5080(view);
            }
        });
        findViewById(R.id.rec_player).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m485xd629679f(view);
            }
        });
        this.voice.setPlaybackListener(new VoiceNote.PlaybackListener() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda7
            @Override // com.argusoft.sewa.android.app.support.VoiceNote.PlaybackListener
            public final void onPlaybackStopped() {
                this.f$0.m486x63167ebe();
            }
        });
        findViewById(R.id.rec_again).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m487xf00395dd(view);
            }
        });
        findViewById(R.id.choice_photo).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m488x7cf0acfc(view);
            }
        });
        findViewById(R.id.choice_write).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m489x9ddc41b(view);
            }
        });
        this.note.addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                RaiseHelpActivity.this.showSendState();
            }
        });
        this.send.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException {
                this.f$0.m490x96cadb3a(view);
            }
        });
        showRecordState();
    }

    /* renamed from: lambda$onCreate$0$com-argusoft-sewa-android-app-activity-RaiseHelpActivity, reason: not valid java name */
    /* synthetic */ void m483xbc4f3961(View view) throws IllegalStateException {
        if (this.voice.isRecording()) {
            stopRecording();
        } else {
            startRecording();
        }
    }

    /* renamed from: lambda$onCreate$1$com-argusoft-sewa-android-app-activity-RaiseHelpActivity, reason: not valid java name */
    /* synthetic */ void m484x493c5080(View view) throws IllegalStateException {
        togglePlay();
    }

    /* renamed from: lambda$onCreate$2$com-argusoft-sewa-android-app-activity-RaiseHelpActivity, reason: not valid java name */
    /* synthetic */ void m485xd629679f(View view) throws IllegalStateException {
        togglePlay();
    }

    /* renamed from: lambda$onCreate$3$com-argusoft-sewa-android-app-activity-RaiseHelpActivity, reason: not valid java name */
    /* synthetic */ void m486x63167ebe() {
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.showPlayState();
            }
        });
    }

    /* renamed from: lambda$onCreate$4$com-argusoft-sewa-android-app-activity-RaiseHelpActivity, reason: not valid java name */
    /* synthetic */ void m487xf00395dd(View view) throws IllegalStateException {
        this.voice.discard();
        showPlayState();
        startRecording();
    }

    /* renamed from: lambda$onCreate$5$com-argusoft-sewa-android-app-activity-RaiseHelpActivity, reason: not valid java name */
    /* synthetic */ void m488x7cf0acfc(View view) {
        pickPhoto();
    }

    /* renamed from: lambda$onCreate$6$com-argusoft-sewa-android-app-activity-RaiseHelpActivity, reason: not valid java name */
    /* synthetic */ void m489x9ddc41b(View view) {
        this.note.setVisibility(0);
        findViewById(R.id.choice_write).setSelected(true);
        this.note.requestFocus();
    }

    /* renamed from: lambda$onCreate$7$com-argusoft-sewa-android-app-activity-RaiseHelpActivity, reason: not valid java name */
    /* synthetic */ void m490x96cadb3a(View view) throws IllegalStateException {
        onSend();
    }

    private void text(int i, String str) {
        ((TextView) findViewById(i)).setText(SupportLabels.get(str));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        resumeActivity();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() throws IllegalStateException {
        super.onPause();
        if (this.voice.isRecording()) {
            stopRecording();
        }
        this.voice.stopPlaying();
        showPlayState();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() throws IllegalStateException {
        this.clock.removeCallbacksAndMessages(null);
        if (!this.sending) {
            this.voice.discard();
            Iterator<File> it = this.photos.iterator();
            while (it.hasNext()) {
                it.next().delete();
            }
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

    private void startRecording() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.RECORD_AUDIO") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.RECORD_AUDIO"}, MIC_REQUEST);
            return;
        }
        if (this.voice.start()) {
            this.recordingStartedAt = System.currentTimeMillis();
            this.clock.post(this.tick);
        } else {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.COULD_NOT));
        }
        showRecordState();
    }

    private void stopRecording() throws IllegalStateException {
        this.clock.removeCallbacks(this.tick);
        this.voice.stop();
        showRecordState();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i != MIC_REQUEST) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            startRecording();
        } else {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.MIC_PERMISSION));
        }
    }

    private void showRecordState() {
        boolean zIsRecording = this.voice.isRecording();
        boolean z = (zIsRecording || this.voice.file() == null) ? false : true;
        findViewById(R.id.rec_mic_area).setVisibility(z ? 8 : 0);
        findViewById(R.id.rec_done).setVisibility(z ? 0 : 8);
        int color = ContextCompat.getColor(this, R.color.support_recording);
        this.recButton.setImageResource(zIsRecording ? R.drawable.ic_support_stop : R.drawable.ic_support_mic);
        this.recButton.setBackgroundTintList(zIsRecording ? ColorStateList.valueOf(color) : null);
        this.halo.setBackgroundTintList(zIsRecording ? ColorStateList.valueOf(ContextCompat.getColor(this, R.color.support_recording_bg)) : null);
        this.recButton.setContentDescription(SupportLabels.get(zIsRecording ? SupportLabels.TAP_TO_STOP : SupportLabels.TAP_AND_SPEAK));
        if (zIsRecording) {
            this.recTitle.setText(SupportLabels.get(SupportLabels.RECORDING_SHORT) + "  " + VoiceNote.clock(0L));
            this.recTitle.setTextColor(color);
            this.recHint.setText(SupportLabels.get(SupportLabels.TAP_TO_STOP));
        } else {
            this.recTitle.setText(SupportLabels.get(SupportLabels.TAP_AND_SPEAK));
            this.recTitle.setTextColor(ContextCompat.getColor(this, R.color.colorPrimary));
            this.recHint.setText(SupportLabels.get(SupportLabels.USE_OWN_LANGUAGE));
        }
        if (z) {
            this.lengthView.setText(VoiceNote.clock(this.voice.lengthMs()));
        }
        float f = zIsRecording ? 0.45f : 1.0f;
        int[] iArr = {R.id.choice_photo, R.id.choice_write};
        for (int i = 0; i < 2; i++) {
            int i2 = iArr[i];
            findViewById(i2).setAlpha(f);
            findViewById(i2).setEnabled(!zIsRecording);
        }
        showSendState();
    }

    private void togglePlay() throws IllegalStateException {
        if (this.voice.isPlaying()) {
            this.voice.stopPlaying();
        } else if (!this.voice.play()) {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.COULD_NOT));
        }
        showPlayState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPlayState() {
        boolean zIsPlaying = this.voice.isPlaying();
        this.play.setImageResource(zIsPlaying ? R.drawable.ic_support_stop : R.drawable.ic_support_play);
        this.play.setContentDescription(SupportLabels.get(zIsPlaying ? SupportLabels.TAP_TO_STOP : SupportLabels.LISTEN));
        this.clock.removeCallbacks(this.playTick);
        if (zIsPlaying) {
            this.clock.post(this.playTick);
        } else {
            this.lengthView.setText(VoiceNote.clock(this.voice.lengthMs()));
        }
    }

    private void pickPhoto() {
        if (this.photos.size() >= 5) {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.TOO_MANY_PHOTOS));
            return;
        }
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        intent.addCategory("android.intent.category.OPENABLE");
        try {
            startActivityForResult(Intent.createChooser(intent, SupportLabels.get(SupportLabels.PHOTO)), PICK_PHOTO);
        } catch (Exception unused) {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.COULD_NOT));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != PICK_PHOTO || i2 != -1 || intent == null || intent.getData() == null) {
            return;
        }
        takePhoto(intent.getData());
    }

    void takePhoto(Uri uri) {
        photoTaken(SupportPhotos.copy(this, uri));
    }

    void photoTaken(File file) {
        if (file == null) {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.COULD_NOT));
        } else {
            this.photos.add(file);
            showPhotos();
        }
    }

    private void showPhotos() {
        String str;
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (76.0f * f);
        this.photoRow.removeAllViews();
        Iterator it = new ArrayList(this.photos).iterator();
        while (it.hasNext()) {
            final File file = (File) it.next();
            FrameLayout frameLayout = new FrameLayout(this);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
            layoutParams.rightMargin = (int) (8.0f * f);
            frameLayout.setLayoutParams(layoutParams);
            ImageView imageView = new ImageView(this);
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView.setImageBitmap(SupportPhotos.thumbnail(file, i));
            imageView.setClipToOutline(true);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(12.0f * f);
            gradientDrawable.setColor(ContextCompat.getColor(this, R.color.support_line));
            imageView.setBackground(gradientDrawable);
            frameLayout.addView(imageView, new FrameLayout.LayoutParams(i, i));
            ImageButton imageButton = new ImageButton(this);
            imageButton.setImageResource(R.drawable.ic_support_close);
            imageButton.setColorFilter(ContextCompat.getColor(this, R.color.white));
            imageButton.setBackgroundResource(R.drawable.support_red_circle);
            int i2 = (int) (4.0f * f);
            imageButton.setPadding(i2, i2, i2, i2);
            imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageButton.setContentDescription(SupportLabels.get(SupportLabels.REMOVE_PHOTO));
            int i3 = (int) (26.0f * f);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3, i3);
            layoutParams2.gravity = BadgeDrawable.TOP_END;
            layoutParams2.topMargin = i2;
            layoutParams2.rightMargin = i2;
            frameLayout.addView(imageButton, layoutParams2);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m491x43ca3d96(file, view);
                }
            });
            this.photoRow.addView(frameLayout);
        }
        findViewById(R.id.photo_strip).setVisibility(this.photos.isEmpty() ? 8 : 0);
        findViewById(R.id.choice_photo).setSelected(!this.photos.isEmpty());
        TextView textView = (TextView) findViewById(R.id.choice_photo_text);
        if (this.photos.isEmpty()) {
            str = SupportLabels.get(SupportLabels.PHOTO);
        } else {
            str = SupportLabels.get(SupportLabels.PHOTO) + " (" + this.photos.size() + ")";
        }
        textView.setText(str);
    }

    /* renamed from: lambda$showPhotos$8$com-argusoft-sewa-android-app-activity-RaiseHelpActivity, reason: not valid java name */
    /* synthetic */ void m491x43ca3d96(File file, View view) {
        this.photos.remove(file);
        file.delete();
        showPhotos();
    }

    private boolean hasReport() {
        return this.voice.file() != null || this.note.getText().toString().trim().length() >= 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSendState() {
        if (this.sending) {
            return;
        }
        this.send.setEnabled(!this.voice.isRecording() && hasReport());
        this.send.setText(SupportLabels.get(this.voice.isRecording() ? SupportLabels.STOP_TO_SEND : SupportLabels.SEND));
    }

    private void onSend() throws IllegalStateException {
        if (this.sending || this.voice.isRecording() || !hasReport()) {
            return;
        }
        Long lOwner = owner();
        if (lOwner == null) {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.LOGIN_AGAIN));
            return;
        }
        String strTrim = this.note.getText().toString().trim();
        try {
            SupportTicketBean supportTicketBeanSaveNewTicket = this.store.saveNewTicket(lOwner, null, strTrim.isEmpty() ? null : strTrim, this.voice.file(), new ArrayList(this.photos));
            this.voice.handOver();
            this.sending = true;
            this.send.setEnabled(false);
            if (SupportApi.isOnline(this)) {
                this.send.setText(SupportLabels.get(SupportLabels.SENDING));
                sendNow(supportTicketBeanSaveNewTicket);
            } else {
                afterSend(null);
            }
        } catch (Exception unused) {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.COULD_NOT));
        }
    }

    void sendNow(SupportTicketBean supportTicketBean) {
        String strM600lambda$sync$4$comargusoftsewaandroidappsupportSupportStore;
        try {
            strM600lambda$sync$4$comargusoftsewaandroidappsupportSupportStore = this.store.m600lambda$sync$4$comargusoftsewaandroidappsupportSupportStore(this, supportTicketBean);
        } catch (SupportApi.Failure unused) {
            strM600lambda$sync$4$comargusoftsewaandroidappsupportSupportStore = null;
        }
        afterSend(strM600lambda$sync$4$comargusoftsewaandroidappsupportSupportStore);
    }

    void afterSend(String str) {
        if (isFinishing()) {
            return;
        }
        if (str != null) {
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.TICKET_RAISED) + " · " + str);
            finish();
            return;
        }
        new AlertDialog.Builder(this).setMessage(SupportLabels.get(SupportLabels.SAVED_PRESS_SYNC)).setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RaiseHelpActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m482xdaf44d29(dialogInterface, i);
            }
        }).show();
    }

    /* renamed from: lambda$afterSend$9$com-argusoft-sewa-android-app-activity-RaiseHelpActivity, reason: not valid java name */
    /* synthetic */ void m482xdaf44d29(DialogInterface dialogInterface, int i) {
        finish();
    }

    private Long owner() {
        if (SewaTransformer.loginBean == null) {
            return null;
        }
        return SewaTransformer.loginBean.getUserID();
    }
}
