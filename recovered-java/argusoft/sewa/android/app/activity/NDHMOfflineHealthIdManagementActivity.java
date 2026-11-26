package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.FileProvider;
import androidx.core.widget.TextViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAudioComponent;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.AbhaConsentCheckboxModel;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class NDHMOfflineHealthIdManagementActivity extends MenuActivity implements MyAudioComponent.MediaPlayerListener {
    private static final int NDHM_HEALTH_ID_MANAGEMENT_REQUEST_CODE = 1000;
    private MediaPlayer audioMediaPlayer;
    private String beneficiaryName;
    private LinearLayout bodyLayoutContainer;
    private LinearLayout footerLayout;
    private LinearLayout globalPanel;
    public Dao<ListValueBean, Integer> listValueBeanDao;
    private Integer memberId;
    private String myJson;
    private Button nextButton;
    private MediaRecorder recorder;
    private boolean isAudioRecording = false;
    private String fileName = "";

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
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
            Intent intent = new Intent(this.context, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        this.memberId = Integer.valueOf(getIntent().getIntExtra("memberId", -1));
        String stringExtra = getIntent().getStringExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY);
        if (stringExtra == null) {
            stringExtra = "beneficiary";
        }
        this.beneficiaryName = stringExtra;
        setTitle(UtilBean.getTitleText(LabelConstants.HEALTH_ID_MANAGEMENT));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, null);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setConsentMessageScreen();
    }

    public void setConsentMessageScreen() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        this.bodyLayoutContainer.removeAllViews();
        if ((SewaTransformer.loginBean != null ? SewaTransformer.loginBean.getLanguageCode() : "EN").equals("EN")) {
            str = LabelConstants.INFORMED_BENEFICIARY_ABOUT_ABDM;
            str2 = LabelConstants.CONSENT_HEADING;
            str3 = LabelConstants.CONSENT_OTHER_THAN_AADHAAR;
            str4 = LabelConstants.CONSENT_FOR_ABHA_USAGE;
            str5 = LabelConstants.CONSENT_FOR_SHARING_HEALTH_RECORDS;
            str6 = LabelConstants.CONSENT_ANONYMIZATION;
            str7 = LabelConstants.CONSENT_HEALTH_WORKER;
            str8 = LabelConstants.CONSENT_BENEFICIARY;
        } else {
            str = LabelConstants.INFORMED_BENEFICIARY_ABOUT_ABDM_GU;
            str2 = LabelConstants.CONSENT_HEADING_GU;
            str3 = LabelConstants.CONSENT_OTHER_THAN_AADHAAR_GU;
            str4 = LabelConstants.CONSENT_FOR_ABHA_USAGE_GU;
            str5 = LabelConstants.CONSENT_FOR_SHARING_HEALTH_RECORDS_GU;
            str6 = LabelConstants.CONSENT_ANONYMIZATION_GU;
            str7 = LabelConstants.CONSENT_HEALTH_WORKER_GU;
            str8 = LabelConstants.CONSENT_BENEFICIARY_GU;
        }
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, str2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 40, 0, 0);
        final AbhaConsentCheckboxModel abhaConsentCheckboxModel = new AbhaConsentCheckboxModel();
        final Gson gson = new Gson();
        final MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, str, -1, false);
        checkBox.setGravity(48);
        checkBox.setChecked(true);
        this.footerLayout.setVisibility(0);
        TextViewCompat.setTextAppearance(checkBox, R.style.CustomSubtitleViewCheckBoxText);
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m384x7c6fe170(checkBox, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox2 = MyStaticComponents.getCheckBox(this.context, str3, -1, false);
        checkBox2.setGravity(48);
        checkBox2.setChecked(true);
        checkBox2.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox2, R.style.CustomSubtitleViewCheckBoxText);
        checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMOfflineHealthIdManagementActivity.lambda$setConsentMessageScreen$1(checkBox2, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox3 = MyStaticComponents.getCheckBox(this.context, str4, -1, false);
        checkBox3.setGravity(48);
        checkBox3.setChecked(true);
        checkBox3.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox3, R.style.CustomSubtitleViewCheckBoxText);
        checkBox3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMOfflineHealthIdManagementActivity.lambda$setConsentMessageScreen$2(checkBox3, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox4 = MyStaticComponents.getCheckBox(this.context, str5, -1, false);
        checkBox4.setGravity(48);
        checkBox4.setChecked(true);
        checkBox4.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox4, R.style.CustomSubtitleViewCheckBoxText);
        checkBox4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMOfflineHealthIdManagementActivity.lambda$setConsentMessageScreen$3(checkBox4, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox5 = MyStaticComponents.getCheckBox(this.context, str6, -1, false);
        checkBox5.setGravity(48);
        checkBox5.setChecked(true);
        checkBox5.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox5, R.style.CustomSubtitleViewCheckBoxText);
        checkBox5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMOfflineHealthIdManagementActivity.lambda$setConsentMessageScreen$4(checkBox5, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox6 = MyStaticComponents.getCheckBox(this.context, String.format("%s, %s , %s", LabelConstants.I, SewaTransformer.loginBean.getFirstName(), str7), -1, false);
        checkBox6.setGravity(48);
        checkBox6.setChecked(true);
        checkBox6.setPadding(60, 0, 0, 0);
        checkBox6.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox6, R.style.CustomSubtitleViewCheckBoxText);
        checkBox6.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMOfflineHealthIdManagementActivity.lambda$setConsentMessageScreen$5(checkBox6, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox7 = MyStaticComponents.getCheckBox(this.context, String.format("%s, %s , %s", LabelConstants.I, this.beneficiaryName, str8), -1, false);
        checkBox7.setGravity(48);
        checkBox7.setChecked(true);
        checkBox7.setPadding(60, 0, 0, 0);
        checkBox7.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox7, R.style.CustomSubtitleViewCheckBoxText);
        checkBox7.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMOfflineHealthIdManagementActivity.lambda$setConsentMessageScreen$6(checkBox7, compoundButton, z);
            }
        });
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        this.bodyLayoutContainer.addView(checkBox);
        this.bodyLayoutContainer.addView(checkBox2);
        this.bodyLayoutContainer.addView(checkBox3);
        this.bodyLayoutContainer.addView(checkBox4);
        this.bodyLayoutContainer.addView(checkBox5);
        this.bodyLayoutContainer.addView(checkBox6);
        this.bodyLayoutContainer.addView(checkBox7);
        addAudioView();
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdManagementActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (checkBox.isChecked()) {
                    abhaConsentCheckboxModel.setAadhaarSharingConsentGiven(Boolean.TRUE);
                } else {
                    abhaConsentCheckboxModel.setAadhaarSharingConsentGiven(Boolean.FALSE);
                }
                if (checkBox2.isChecked()) {
                    abhaConsentCheckboxModel.setDocOtherThanAadhaarConsentGiven(Boolean.TRUE);
                } else {
                    abhaConsentCheckboxModel.setDocOtherThanAadhaarConsentGiven(Boolean.FALSE);
                }
                if (checkBox3.isChecked()) {
                    abhaConsentCheckboxModel.setAbhaUsageConsentGiven(Boolean.TRUE);
                } else {
                    abhaConsentCheckboxModel.setAbhaUsageConsentGiven(Boolean.FALSE);
                }
                if (checkBox4.isChecked()) {
                    abhaConsentCheckboxModel.setSharingHealthRecordsConsentGiven(Boolean.TRUE);
                } else {
                    abhaConsentCheckboxModel.setSharingHealthRecordsConsentGiven(Boolean.FALSE);
                }
                if (checkBox5.isChecked()) {
                    abhaConsentCheckboxModel.setAnonymizationConsentGiven(Boolean.TRUE);
                } else {
                    abhaConsentCheckboxModel.setAnonymizationConsentGiven(Boolean.FALSE);
                }
                if (checkBox6.isChecked()) {
                    abhaConsentCheckboxModel.setHealthWorkerConsentGiven(Boolean.TRUE);
                } else {
                    abhaConsentCheckboxModel.setHealthWorkerConsentGiven(Boolean.FALSE);
                }
                if (checkBox7.isChecked()) {
                    abhaConsentCheckboxModel.setBeneficiaryConsentGiven(Boolean.TRUE);
                } else {
                    abhaConsentCheckboxModel.setBeneficiaryConsentGiven(Boolean.FALSE);
                }
                NDHMOfflineHealthIdManagementActivity.this.myJson = gson.toJson(abhaConsentCheckboxModel);
                NDHMOfflineHealthIdManagementActivity.this.showPopUpWindow(view);
            }
        });
    }

    /* renamed from: lambda$setConsentMessageScreen$0$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdManagementActivity, reason: not valid java name */
    /* synthetic */ void m384x7c6fe170(MaterialCheckBox materialCheckBox, CompoundButton compoundButton, boolean z) {
        if (Boolean.TRUE.equals(Boolean.valueOf(z))) {
            this.footerLayout.setVisibility(0);
            materialCheckBox.setChecked(true);
        } else {
            this.footerLayout.setVisibility(8);
            materialCheckBox.setChecked(false);
        }
    }

    static /* synthetic */ void lambda$setConsentMessageScreen$1(MaterialCheckBox materialCheckBox, CompoundButton compoundButton, boolean z) {
        if (Boolean.FALSE.equals(Boolean.valueOf(z))) {
            materialCheckBox.setChecked(false);
        }
    }

    static /* synthetic */ void lambda$setConsentMessageScreen$2(MaterialCheckBox materialCheckBox, CompoundButton compoundButton, boolean z) {
        if (Boolean.FALSE.equals(Boolean.valueOf(z))) {
            materialCheckBox.setChecked(false);
        }
    }

    static /* synthetic */ void lambda$setConsentMessageScreen$3(MaterialCheckBox materialCheckBox, CompoundButton compoundButton, boolean z) {
        if (Boolean.FALSE.equals(Boolean.valueOf(z))) {
            materialCheckBox.setChecked(false);
        }
    }

    static /* synthetic */ void lambda$setConsentMessageScreen$4(MaterialCheckBox materialCheckBox, CompoundButton compoundButton, boolean z) {
        if (Boolean.FALSE.equals(Boolean.valueOf(z))) {
            materialCheckBox.setChecked(false);
        }
    }

    static /* synthetic */ void lambda$setConsentMessageScreen$5(MaterialCheckBox materialCheckBox, CompoundButton compoundButton, boolean z) {
        if (Boolean.FALSE.equals(Boolean.valueOf(z))) {
            materialCheckBox.setChecked(false);
        }
    }

    static /* synthetic */ void lambda$setConsentMessageScreen$6(MaterialCheckBox materialCheckBox, CompoundButton compoundButton, boolean z) {
        if (Boolean.FALSE.equals(Boolean.valueOf(z))) {
            materialCheckBox.setChecked(false);
        }
    }

    private void addAudioView() {
        List<ListValueBean> listQueryForEq;
        try {
            listQueryForEq = this.listValueBeanDao.queryForEq("field", "offline_health_id_consent");
        } catch (Exception e) {
            e.printStackTrace();
            listQueryForEq = null;
        }
        if (listQueryForEq == null || listQueryForEq.isEmpty()) {
            return;
        }
        File file = new File(SewaConstants.DIR_DOWNLOADED + listQueryForEq.get(0).getValue());
        if (!file.exists()) {
            this.footerLayout.setVisibility(0);
            return;
        }
        Uri uriForFile = FileProvider.getUriForFile(this, getApplicationContext().getPackageName() + ".provider", file);
        if (this.audioMediaPlayer == null) {
            this.audioMediaPlayer = MediaPlayer.create(this, uriForFile);
        }
        MyAudioComponent myAudioComponent = new MyAudioComponent(this, R.layout.health_id_consent_audio_player_layout, this.audioMediaPlayer, this);
        myAudioComponent.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.bodyLayoutContainer.addView(myAudioComponent);
    }

    @Override // com.argusoft.sewa.android.app.component.MyAudioComponent.MediaPlayerListener
    public void onCompletion() {
        this.footerLayout.setVisibility(0);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && intent != null) {
            Intent intent2 = new Intent();
            intent2.putExtra("OfflineHealthIdBean", intent.getStringExtra("OfflineHealthIdBean"));
            setResult(-1, intent2);
            finish();
            return;
        }
        this.bodyLayoutContainer.removeAllViews();
        setConsentMessageScreen();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() throws IllegalStateException {
        super.onPause();
        MediaPlayer mediaPlayer = this.audioMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopUpWindow(View view) {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.ndhm_record_consent_popup_window, (ViewGroup) null);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, (displayMetrics.widthPixels * 8) / 10, -1, true);
        popupWindow.showAtLocation(view, 17, 0, 0);
        final Button button = (Button) viewInflate.findViewById(R.id.popup_button);
        final ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.mic_button);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m385xac67c185(imageButton, popupWindow, view2);
            }
        });
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdManagementActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws IllegalStateException, IOException {
                this.f$0.m386xc5691324(imageButton, button, view2);
            }
        });
    }

    /* renamed from: lambda$showPopUpWindow$7$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdManagementActivity, reason: not valid java name */
    /* synthetic */ void m385xac67c185(ImageButton imageButton, PopupWindow popupWindow, View view) {
        if (this.isAudioRecording) {
            imageButton.performClick();
        }
        popupWindow.dismiss();
        Intent intent = new Intent(this.context, (Class<?>) NDHMOfflineHealthIdCreationActivity_.class);
        intent.putExtra("memberId", this.memberId);
        intent.putExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, this.beneficiaryName);
        intent.putExtra(RelatedPropertyNameConstants.AADHAR_SCANNED, getIntent().getStringExtra(RelatedPropertyNameConstants.AADHAR_SCANNED));
        intent.putExtra("gender", getIntent().getStringExtra("gender"));
        intent.putExtra("mobileNumber", getIntent().getStringExtra("mobileNumber"));
        intent.putExtra("dob", getIntent().getStringExtra("dob"));
        intent.putExtra(RelatedPropertyNameConstants.AUDIO_FILE_NAME, this.fileName);
        intent.putExtra(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL, this.myJson);
        startActivityForResult(intent, 1000);
    }

    /* renamed from: lambda$showPopUpWindow$8$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdManagementActivity, reason: not valid java name */
    /* synthetic */ void m386xc5691324(ImageButton imageButton, Button button, View view) throws IllegalStateException, IOException {
        if (this.isAudioRecording) {
            button.setText(R.string.next);
            this.recorder.stop();
            this.recorder.reset();
            this.recorder.release();
            this.recorder = null;
            imageButton.setImageResource(R.drawable.record_audio);
            SewaUtil.generateToast(this, "Audio Recorded successfully");
            this.isAudioRecording = false;
            return;
        }
        try {
            this.isAudioRecording = true;
            if (this.recorder == null) {
                this.recorder = new MediaRecorder();
            }
            this.fileName = "Record_ABHA_CONSENT_" + new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss", Locale.getDefault()).format(new Date()) + GlobalTypes.AUDIO_RECORD_FORMAT;
            this.recorder.setAudioSource(1);
            this.recorder.setOutputFormat(3);
            this.recorder.setAudioEncoder(1);
            this.recorder.setOutputFile(SewaConstants.DIR_AUDIO + this.fileName);
            this.recorder.prepare();
            this.recorder.start();
            imageButton.setImageResource(R.drawable.stop_audio);
            SewaUtil.generateToast(this, "Recording started");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
