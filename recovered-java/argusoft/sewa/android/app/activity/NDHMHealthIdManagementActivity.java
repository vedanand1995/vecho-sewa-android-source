package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.FileProvider;
import androidx.core.widget.TextViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyAudioComponent;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.AbhaConsentCheckboxModel;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class NDHMHealthIdManagementActivity extends MenuActivity implements MyAudioComponent.MediaPlayerListener {
    private static final String CREATE_ABHA_NUMBER = "createAbhaNumber";
    private static final int NDHM_HEALTH_ID_MANAGEMENT_REQUEST_CODE = 1000;
    private static final String SEED_ABHA_NUMBER = "seedAbhaNumber";
    private MediaPlayer audioMediaPlayer;
    private String beneficiaryName;
    private LinearLayout bodyLayoutContainer;
    private String featueName;
    private LinearLayout footerLayout;
    private LinearLayout globalPanel;
    private Boolean isForNonExistingMember;
    public Dao<ListValueBean, Integer> listValueBeanDao;
    private Integer memberId;
    private String mobileNumber;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private String screen;

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
        this.isForNonExistingMember = Boolean.valueOf(getIntent().getBooleanExtra("isForNonExistingMember", false));
        this.featueName = getIntent().getStringExtra("featureName");
        this.mobileNumber = getIntent().getStringExtra("mobileNumber");
        setTitle(UtilBean.getTitleText(LabelConstants.HEALTH_ID_MANAGEMENT));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, null);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        Button button = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.nextButton = button;
        button.setText(UtilBean.getMyLabel("Next"));
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setActionForHealthIdScreen();
    }

    public void setConsentMessageScreen(final int i) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
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
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity$$ExternalSyntheticLambda0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m380xa4592225(checkBox, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox2 = MyStaticComponents.getCheckBox(this.context, str3, -1, false);
        checkBox2.setGravity(48);
        checkBox2.setChecked(true);
        checkBox2.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox2, R.style.CustomSubtitleViewCheckBoxText);
        checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity$$ExternalSyntheticLambda1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMHealthIdManagementActivity.lambda$setConsentMessageScreen$1(checkBox2, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox3 = MyStaticComponents.getCheckBox(this.context, str4, -1, false);
        checkBox3.setGravity(48);
        checkBox3.setChecked(true);
        checkBox3.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox3, R.style.CustomSubtitleViewCheckBoxText);
        checkBox3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity$$ExternalSyntheticLambda2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMHealthIdManagementActivity.lambda$setConsentMessageScreen$2(checkBox3, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox4 = MyStaticComponents.getCheckBox(this.context, str5, -1, false);
        checkBox4.setGravity(48);
        checkBox4.setChecked(true);
        checkBox4.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox4, R.style.CustomSubtitleViewCheckBoxText);
        checkBox4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity$$ExternalSyntheticLambda3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMHealthIdManagementActivity.lambda$setConsentMessageScreen$3(checkBox4, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox5 = MyStaticComponents.getCheckBox(this.context, str6, -1, false);
        checkBox5.setGravity(48);
        checkBox5.setChecked(true);
        checkBox5.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox5, R.style.CustomSubtitleViewCheckBoxText);
        checkBox5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity$$ExternalSyntheticLambda4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMHealthIdManagementActivity.lambda$setConsentMessageScreen$4(checkBox5, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox6 = MyStaticComponents.getCheckBox(this.context, String.format("%s, %s , %s", LabelConstants.I, SewaTransformer.loginBean.getFirstName(), str7), -1, false);
        checkBox6.setGravity(48);
        checkBox6.setChecked(true);
        checkBox6.setPadding(60, 0, 0, 0);
        checkBox6.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox6, R.style.CustomSubtitleViewCheckBoxText);
        checkBox6.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity$$ExternalSyntheticLambda5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMHealthIdManagementActivity.lambda$setConsentMessageScreen$5(checkBox6, compoundButton, z);
            }
        });
        final MaterialCheckBox checkBox7 = MyStaticComponents.getCheckBox(this.context, String.format("%s, %s , %s", LabelConstants.I, this.beneficiaryName, str8), -1, false);
        checkBox7.setGravity(48);
        checkBox7.setChecked(true);
        checkBox7.setPadding(60, 0, 0, 0);
        checkBox7.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(checkBox7, R.style.CustomSubtitleViewCheckBoxText);
        checkBox7.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity$$ExternalSyntheticLambda6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NDHMHealthIdManagementActivity.lambda$setConsentMessageScreen$6(checkBox7, compoundButton, z);
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
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (checkBox.isChecked() && checkBox6.isChecked() && checkBox7.isChecked()) {
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
                    String json = gson.toJson(abhaConsentCheckboxModel);
                    if (i == 0) {
                        Intent intent = new Intent(NDHMHealthIdManagementActivity.this.context, (Class<?>) NDHMHealthIdCreationActivity_.class);
                        intent.putExtra("featureName", NDHMHealthIdManagementActivity.this.featueName);
                        intent.putExtra("memberId", NDHMHealthIdManagementActivity.this.memberId);
                        intent.putExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, NDHMHealthIdManagementActivity.this.getIntent().getStringExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
                        intent.putExtra("firstName", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("firstName"));
                        intent.putExtra("lastName", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("lastName"));
                        intent.putExtra(RelatedPropertyNameConstants.AADHAR_SCANNED, NDHMHealthIdManagementActivity.this.getIntent().getStringExtra(RelatedPropertyNameConstants.AADHAR_SCANNED));
                        intent.putExtra("gender", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("gender"));
                        intent.putExtra("mobileNumber", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("mobileNumber"));
                        intent.putExtra("dob", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("dob"));
                        intent.putExtra(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL, json);
                        NDHMHealthIdManagementActivity.this.startActivityForResult(intent, 1000);
                        return;
                    }
                    Intent intent2 = new Intent(NDHMHealthIdManagementActivity.this.context, (Class<?>) NDHMHealthIdCaptureActivity_.class);
                    intent2.putExtra("featureName", NDHMHealthIdManagementActivity.this.featueName);
                    intent2.putExtra("memberId", NDHMHealthIdManagementActivity.this.memberId);
                    intent2.putExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, NDHMHealthIdManagementActivity.this.getIntent().getStringExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
                    intent2.putExtra("firstName", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("firstName"));
                    intent2.putExtra("lastName", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("lastName"));
                    intent2.putExtra(RelatedPropertyNameConstants.AADHAR_SCANNED, NDHMHealthIdManagementActivity.this.getIntent().getStringExtra(RelatedPropertyNameConstants.AADHAR_SCANNED));
                    intent2.putExtra("gender", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("gender"));
                    intent2.putExtra("mobileNumber", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("mobileNumber"));
                    intent2.putExtra("dob", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("dob"));
                    intent2.putExtra(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL, json);
                    NDHMHealthIdManagementActivity.this.startActivityForResult(intent2, 1000);
                    return;
                }
                SewaUtil.generateToast(NDHMHealthIdManagementActivity.this.context, "Please check to aadhaar sharing and confirmation consents to continue");
            }
        });
    }

    /* renamed from: lambda$setConsentMessageScreen$0$com-argusoft-sewa-android-app-activity-NDHMHealthIdManagementActivity, reason: not valid java name */
    /* synthetic */ void m380xa4592225(MaterialCheckBox materialCheckBox, CompoundButton compoundButton, boolean z) {
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

    private void askForConsent() {
        String str;
        if ((SewaTransformer.loginBean != null ? SewaTransformer.loginBean.getLanguageCode() : "EN").equals("EN")) {
            str = LabelConstants.READY_FOR_GIVE_CONCERN_TO_SHARE_AADHAAR_DETAILS_FOR_CAPTURE_HEALTH_ID;
        } else {
            str = LabelConstants.READY_FOR_GIVE_CONCERN_TO_SHARE_AADHAAR_DETAILS_FOR_CAPTURE_HEALTH_ID_GU;
        }
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(str), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NDHMHealthIdManagementActivity.this.myAlertDialog.dismiss();
                Intent intent = new Intent(NDHMHealthIdManagementActivity.this.context, (Class<?>) NDHMHealthIdCaptureActivity_.class);
                intent.putExtra("memberId", NDHMHealthIdManagementActivity.this.memberId);
                intent.putExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, NDHMHealthIdManagementActivity.this.getIntent().getStringExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
                intent.putExtra(RelatedPropertyNameConstants.AADHAR_SCANNED, NDHMHealthIdManagementActivity.this.getIntent().getStringExtra(RelatedPropertyNameConstants.AADHAR_SCANNED));
                intent.putExtra("gender", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("gender"));
                intent.putExtra("mobileNumber", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("mobileNumber"));
                intent.putExtra("dob", NDHMHealthIdManagementActivity.this.getIntent().getStringExtra("dob"));
                intent.putExtra("featureName", NDHMHealthIdManagementActivity.this.featueName);
                NDHMHealthIdManagementActivity.this.startActivityForResult(intent, 1000);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
        this.myAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                NDHMHealthIdManagementActivity.this.myAlertDialog.dismiss();
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() throws IllegalStateException {
        super.onPause();
        MediaPlayer mediaPlayer = this.audioMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.pause();
        }
    }

    public void setActionForHealthIdScreen() {
        this.screen = null;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, String.format("%s %s", UtilBean.getMyLabel("Please choose action to perform for are you sure"), this.beneficiaryName)));
        ArrayList arrayList = new ArrayList();
        arrayList.add(UtilBean.getMyLabel(LabelConstants.CREATE_HEALTH_ID));
        if (!this.isForNonExistingMember.booleanValue()) {
            arrayList.add(UtilBean.getMyLabel(LabelConstants.LINK_HEALTH_ID));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getButtonList(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity.4
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 0) {
                    NDHMHealthIdManagementActivity.this.screen = NDHMHealthIdManagementActivity.CREATE_ABHA_NUMBER;
                } else {
                    NDHMHealthIdManagementActivity.this.screen = NDHMHealthIdManagementActivity.SEED_ABHA_NUMBER;
                }
                NDHMHealthIdManagementActivity.this.setConsentMessageScreen(i);
            }
        }));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (intent != null && intent.getStringExtra("healthIdNumber") != null) {
            Intent intent2 = new Intent();
            intent2.putExtra("healthIdNumber", intent.getStringExtra("healthIdNumber"));
            intent2.putExtra("healthId", intent.getStringExtra("healthId"));
            intent2.putExtra("isFromOffline", intent.getBooleanExtra("isFromOffline", false));
            setResult(-1, intent2);
            finish();
            return;
        }
        this.bodyLayoutContainer.removeAllViews();
        setActionForHealthIdScreen();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            finish();
            return true;
        }
        if (menuItem.getItemId() == 16908332) {
            String str2 = this.screen;
            str2.hashCode();
            if (str2.equals(CREATE_ABHA_NUMBER) || str2.equals(SEED_ABHA_NUMBER)) {
                setActionForHealthIdScreen();
            } else {
                finish();
            }
        }
        return true;
    }

    @Override // com.argusoft.sewa.android.app.component.MyAudioComponent.MediaPlayerListener
    public void onCompletion() {
        this.footerLayout.setVisibility(0);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (CREATE_ABHA_NUMBER.equals(this.screen) || SEED_ABHA_NUMBER.equals(this.screen)) {
            setActionForHealthIdScreen();
        }
    }
}
