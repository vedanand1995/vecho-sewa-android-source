package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentTransaction;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.SingleSelectComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.listeners.FamilyIdTextWatcher;
import com.argusoft.sewa.android.app.component.listeners.MemberIdTextWatcher;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RbskConstants;
import com.argusoft.sewa.android.app.core.impl.HealthInfrastructureServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.databean.RbskDefectDetailDto;
import com.argusoft.sewa.android.app.databean.RbskScreeningDetailDto;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.apache.http.util.ByteArrayBuffer;

/* loaded from: classes.dex */
public class HeadToToeScreeningActivity extends MenuActivity implements View.OnClickListener {
    private static final String APGAR_QUESTION_SCREEN = "apgarQuestionScreen";
    private static final String CHILD_BODY_MEASUREMENT_SCREEN = "childBodyMeasurementScreen";
    private static final String CHILD_NAME = "child_name";
    private static final String COMMON_DEFECTS_SCREEN_1 = "commonDefectsScreen1";
    private static final String COMMON_DEFECTS_SCREEN_2 = "commonDefectsScreen2";
    private static final String DEFECT_NAME = "defect_name";
    private static final String DESCRIPTION = "description";
    private static final String DISEASE_SELECTION_SCREEN = "diseaseSelectionScreen";
    private static final String FAMILY_ID_KEY = "familyId";
    private static final String FATHER_NAME = "father_name";
    private static final String HEALTH_INFRASTRUCTURE_SCREEN = "healthInfrastructureScreen";
    private static final String MEMBERS_KEY = "members";
    private static final String MEMBER_DETAILS_SCREEN = "memberDetailsScreen";
    private static final String MEMBER_SEARCH_SCREEN = "memberSearchScreen";
    private static final String MOTHER_NAME = "mother_name";
    private static final String NULL_QUERY_RESPONSE = "##### Query Response is null";
    private static final int RADIOBUTTON_ID_CHILD = 101;
    private static final int RADIOBUTTON_ID_FAMILY = 102;
    private static final int RADIOBUTTON_ID_HEALTH_INFRA = 104;
    private static final int RADIOBUTTON_ID_MOTHER = 103;
    private static final int RADIOBUTTON_ID_NO = 2;
    private static final int RADIOBUTTON_ID_NOT_KNOWN = 3;
    private static final int RADIOBUTTON_ID_YES = 1;
    private static final String REFERRAL_CONFORMATION_SCREEN = "referralConformationScreen";
    private static final String SCREENING_COMPLETION_SCREEN = "screeningCompletionScreen";
    private static final String SCREENING_CONFIRMATION_SCREEN = "screeningConformationScreen";
    private static final String SCREENING_SCREEN = "screeningScreen";
    private static final String SELECTED_DEFECT_LIST_SCREEN = "selected_defectListScreen";
    private static final String STABILIZATION_INFO_SCREEN = "stabilizationInfoScreen";
    private RadioGroup apgar1MinRadioGroup;
    private RadioGroup apgar5MinRadioGroup;
    private RadioGroup asymmetricalTonicRadioGroup;
    private MaterialButton backPartSelectionButton;
    private LinearLayout bodyLayoutContainer;
    private String bodyPart;
    private RelativeLayout childBackBodyLayout;
    private LinearLayout childBodyLayout;
    private TextInputLayout childEditText;
    private RelativeLayout childFrontBodyLayout;
    private List<LinkedHashMap<String, Object>> defects;
    private TextInputLayout familyEditText;
    private MaterialButton frontPartSelectionButton;
    private LinearLayout globalPanel;
    private RadioGroup graspReflexRadioGroup;
    private TextInputLayout headCircumferenceText;
    private LinearLayout healthInfraComponent;
    private List<LinkedHashMap<String, Object>> healthInfraList;
    private QueFormBean healthInfraQueFormBean;
    HealthInfrastructureServiceImpl healthInfrastructureService;
    private TextInputLayout heightText;
    private LinearLayout infraSelectionLayout;
    private SingleSelectComponent infraSelectionSpinner;
    private Boolean isFromHealthInfra;
    private boolean isSearchByHealthInfra;
    private LinearLayout memberDetailsLayout;
    private RadioGroup moroReflexRadioGroup;
    private TextInputLayout motherEditText;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private RadioGroup plantarReflexRadioGroup;
    private RadioGroup referralConformationRadioGroup;
    private RadioGroup rootReflexRadioGroup;
    private String screen;
    private NestedScrollView scrollView;
    private Button searchButton;
    private RadioGroup searchSelectionRadioGroup;
    private int selectedDefect;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private RadioGroup stepReflexRadioGroup;
    private RadioGroup suckingReflexRadioGroup;
    private RadioButton tmpRadioButton;
    private RadioGroup toneOfTheBabyRadioGroup;
    private boolean visibleDefectsPresent;
    private LinkedHashMap<String, Object> memberDataBean = null;
    private LinkedHashMap<String, Object> familyDataBean = null;
    private Map<Integer, byte[]> images = new HashMap();
    private Set<Integer> selectedDefects = new HashSet();
    private boolean isReferralRequired = false;
    private int selectedMemberIndex = -1;
    private LinkedHashMap<String, String> healthInfraOptions = new LinkedHashMap<>();
    private Integer selectedRbId = -1;
    private RadioGroup.OnCheckedChangeListener rgListener1 = null;
    private RadioGroup.OnCheckedChangeListener rgListener2 = null;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        this.context = this;
        setGps();
        initView();
    }

    private void setGps() {
        if (SharedStructureData.gps.isLocationProviderEnabled()) {
            return;
        }
        SharedStructureData.gps.showSettingsAlert(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        Object obj;
        super.onResume();
        super.setAlertRequired(true);
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.HEAD_TO_TOE_SCREENING_TITLE));
        LinkedHashMap<String, Object> linkedHashMap = this.memberDataBean;
        if (linkedHashMap == null || (obj = linkedHashMap.get(CHILD_NAME)) == null) {
            return;
        }
        setSubTitle(obj.toString());
    }

    private void initView() {
        showNotOnlineMessage(true);
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.scrollView = (NestedScrollView) this.globalPanel.findViewById(DynamicUtils.ID_BODY_SCROLL);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        if (SharedStructureData.healthInfrastructureService == null) {
            SharedStructureData.healthInfrastructureService = this.healthInfrastructureService;
        }
        addSearchScreen();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r5) {
        /*
            Method dump skipped, instructions count: 628
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity.onClick(android.view.View):void");
    }

    private boolean checkBodyMeasurementScreenValidation() {
        if (this.heightText.getEditText() == null || this.heightText.getEditText().getText().toString().trim().length() == 0) {
            SewaUtil.generateToast(this.context, LabelConstants.HEIGHT_OF_CHILD_REQUIRED_ALERT);
            return false;
        }
        if (Integer.parseInt(this.heightText.getEditText().getText().toString().trim()) < 40 || Integer.parseInt(this.heightText.getEditText().getText().toString().trim()) > 70) {
            SewaUtil.generateToast(this.context, LabelConstants.ENTER_HEIGHT_BETWEEN_RANGE);
            return false;
        }
        if (this.headCircumferenceText.getEditText() == null || this.headCircumferenceText.getEditText().getText().toString().trim().length() == 0) {
            SewaUtil.generateToast(this.context, LabelConstants.HEAD_CIRCUMFERENCE_OF_CHILD_REQUIRED_ALERT);
            return false;
        }
        if (Integer.parseInt(this.headCircumferenceText.getEditText().getText().toString().trim()) >= 20 && Integer.parseInt(this.headCircumferenceText.getEditText().getText().toString().trim()) <= 50) {
            return true;
        }
        SewaUtil.generateToast(this.context, LabelConstants.ENTER_HEAD_CIRCUMFERENCE_BETWEEN_RANGE);
        return false;
    }

    private boolean checkApgarScreenValidation() {
        if (this.apgar1MinRadioGroup.getCheckedRadioButtonId() == -1) {
            SewaUtil.generateToast(this.context, LabelConstants.VALUE_FOR_APGAR_1_MIN_REQUIRED);
            return false;
        }
        if (this.apgar5MinRadioGroup.getCheckedRadioButtonId() != -1) {
            return true;
        }
        SewaUtil.generateToast(this.context, LabelConstants.VALUE_FOR_APGAR_5_MIN_REQUIRED);
        return false;
    }

    private boolean checkCommonDefectsScreen1Validation() {
        if (this.toneOfTheBabyRadioGroup.getCheckedRadioButtonId() == -1) {
            SewaUtil.generateToast(this.context, LabelConstants.VALUE_FOR_TONE_OF_BABY_REQUIRED);
            return false;
        }
        if (this.moroReflexRadioGroup.getCheckedRadioButtonId() == -1) {
            SewaUtil.generateToast(this.context, LabelConstants.VALUE_FOR_MORO_REFLEX_REQUIRED);
            return false;
        }
        if (this.stepReflexRadioGroup.getCheckedRadioButtonId() == -1) {
            SewaUtil.generateToast(this.context, LabelConstants.VALUE_FOR_STEP_REFLEX_REQUIRED);
            return false;
        }
        if (this.plantarReflexRadioGroup.getCheckedRadioButtonId() != -1) {
            return true;
        }
        SewaUtil.generateToast(this.context, LabelConstants.VALUE_FOR_PLANTAR_REFLEX_REQUIRED);
        return false;
    }

    private boolean checkCommonDefectsScreen2Validation() {
        if (this.rootReflexRadioGroup.getCheckedRadioButtonId() == -1) {
            SewaUtil.generateToast(this.context, LabelConstants.VALUE_FOR_ROOT_REFLEX_REQUIRED);
            return false;
        }
        if (this.asymmetricalTonicRadioGroup.getCheckedRadioButtonId() == -1) {
            SewaUtil.generateToast(this.context, LabelConstants.VALUE_FOR_ASYMMETRICAL_TONIC_REQUIRED);
            return false;
        }
        if (this.suckingReflexRadioGroup.getCheckedRadioButtonId() == -1) {
            SewaUtil.generateToast(this.context, LabelConstants.VALUE_FOR_SUCKING_REFLEX_REQUIRED);
            return false;
        }
        if (this.graspReflexRadioGroup.getCheckedRadioButtonId() != -1) {
            return true;
        }
        SewaUtil.generateToast(this.context, LabelConstants.VALUE_FOR_GRASP_REFLEX_REQUIRED);
        return false;
    }

    private boolean checkForReferralRequirement() {
        return this.apgar1MinRadioGroup.getCheckedRadioButtonId() != 3 || this.apgar5MinRadioGroup.getCheckedRadioButtonId() != 3 || this.toneOfTheBabyRadioGroup.getCheckedRadioButtonId() != 3 || this.moroReflexRadioGroup.getCheckedRadioButtonId() == 2 || this.stepReflexRadioGroup.getCheckedRadioButtonId() == 2 || this.plantarReflexRadioGroup.getCheckedRadioButtonId() == 2 || this.rootReflexRadioGroup.getCheckedRadioButtonId() == 2 || this.asymmetricalTonicRadioGroup.getCheckedRadioButtonId() == 2 || this.suckingReflexRadioGroup.getCheckedRadioButtonId() == 2 || this.graspReflexRadioGroup.getCheckedRadioButtonId() == 2;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_HEAD_TO_TOE_SCREENING_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m201x2f432618(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$0$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m201x2f432618(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    public void addSearchScreen() {
        this.screen = MEMBER_SEARCH_SCREEN;
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SEARCH_FOR_MEMBER)));
        createSearchSelectionRadioGroup();
        if (this.familyEditText == null) {
            createFamilyEditText();
        }
        if (this.childEditText == null) {
            this.childEditText = createMemberEditText(LabelConstants.CHILD_ID);
        }
        if (this.motherEditText == null) {
            this.motherEditText = createMemberEditText(LabelConstants.MOTHER_ID);
        }
        if (this.infraSelectionLayout == null) {
            LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
            this.infraSelectionLayout = linearLayout;
            linearLayout.setPadding(0, 20, 0, 0);
            retrieveAssignedHealthInfra();
            this.infraSelectionLayout.setVisibility(8);
        }
        this.bodyLayoutContainer.addView(this.familyEditText);
        this.bodyLayoutContainer.addView(this.childEditText);
        this.bodyLayoutContainer.addView(this.motherEditText);
        this.bodyLayoutContainer.addView(this.infraSelectionLayout);
        setEditTextVisibility();
        if (this.searchButton == null) {
            createSearchButton();
        }
        this.bodyLayoutContainer.addView(this.searchButton);
        hideProcessDialog();
    }

    private void createSearchSelectionRadioGroup() {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setWeightSum(10.0f);
        final RadioGroup radioGroup = new RadioGroup(this);
        radioGroup.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 4.0f));
        radioGroup.setOrientation(1);
        MaterialRadioButton radioButton = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(LabelConstants.SEARCH_BY_FAMILY_ID), RADIOBUTTON_ID_FAMILY);
        radioButton.setChecked(true);
        if (radioButton.isChecked()) {
            this.selectedRbId = Integer.valueOf(RADIOBUTTON_ID_FAMILY);
        }
        radioButton.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        radioGroup.addView(radioButton);
        MaterialRadioButton radioButton2 = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(LabelConstants.CHILD_ID), RADIOBUTTON_ID_CHILD);
        radioButton2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        radioGroup.addView(radioButton2);
        final RadioGroup radioGroup2 = new RadioGroup(this);
        radioGroup2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 6.0f));
        radioGroup2.setOrientation(1);
        MaterialRadioButton radioButton3 = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(LabelConstants.MOTHER_ID), RADIOBUTTON_ID_MOTHER);
        radioButton3.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        radioGroup2.addView(radioButton3);
        MaterialRadioButton radioButton4 = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(LabelConstants.SEARCH_BY_HEALTH_INFRA), RADIOBUTTON_ID_HEALTH_INFRA);
        radioButton4.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        radioButton4.setMaxLines(2);
        radioGroup2.addView(radioButton4);
        this.rgListener1 = new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda8
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup3, int i) {
                this.f$0.m199x40825ac9(radioGroup2, radioGroup3, i);
            }
        };
        this.rgListener2 = new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda9
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup3, int i) {
                this.f$0.m200x1c43d68a(radioGroup, radioGroup3, i);
            }
        };
        radioGroup.setOnCheckedChangeListener(this.rgListener1);
        radioGroup2.setOnCheckedChangeListener(this.rgListener2);
        linearLayout.addView(radioGroup);
        linearLayout.addView(radioGroup2);
        this.bodyLayoutContainer.addView(linearLayout);
    }

    /* renamed from: lambda$createSearchSelectionRadioGroup$1$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m199x40825ac9(RadioGroup radioGroup, RadioGroup radioGroup2, int i) {
        if (i != -1) {
            radioGroup.setOnCheckedChangeListener(null);
            radioGroup.clearCheck();
            radioGroup.setOnCheckedChangeListener(this.rgListener2);
            this.selectedRbId = Integer.valueOf(i);
            setEditTextVisibility();
            clearMemberDetailsLayout();
        }
    }

    /* renamed from: lambda$createSearchSelectionRadioGroup$2$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m200x1c43d68a(RadioGroup radioGroup, RadioGroup radioGroup2, int i) {
        if (i != -1) {
            radioGroup.setOnCheckedChangeListener(null);
            radioGroup.clearCheck();
            radioGroup.setOnCheckedChangeListener(this.rgListener1);
            this.selectedRbId = Integer.valueOf(i);
            setEditTextVisibility();
            clearMemberDetailsLayout();
        }
    }

    private void setEditTextVisibility() {
        if (this.selectedRbId.intValue() == RADIOBUTTON_ID_FAMILY) {
            this.isSearchByHealthInfra = false;
            this.familyEditText.setVisibility(0);
            this.childEditText.setVisibility(8);
            this.motherEditText.setVisibility(8);
            this.infraSelectionLayout.setVisibility(8);
            return;
        }
        if (this.selectedRbId.intValue() == RADIOBUTTON_ID_CHILD) {
            this.isSearchByHealthInfra = false;
            this.childEditText.setVisibility(0);
            this.familyEditText.setVisibility(8);
            this.motherEditText.setVisibility(8);
            this.infraSelectionLayout.setVisibility(8);
            return;
        }
        if (this.selectedRbId.intValue() == RADIOBUTTON_ID_MOTHER) {
            this.isSearchByHealthInfra = false;
            this.childEditText.setVisibility(8);
            this.familyEditText.setVisibility(8);
            this.infraSelectionLayout.setVisibility(8);
            this.motherEditText.setVisibility(0);
            return;
        }
        if (this.selectedRbId.intValue() == RADIOBUTTON_ID_HEALTH_INFRA) {
            this.isSearchByHealthInfra = true;
            this.childEditText.setVisibility(8);
            this.familyEditText.setVisibility(8);
            this.motherEditText.setVisibility(8);
            this.infraSelectionLayout.setVisibility(0);
        }
    }

    public void retrieveAssignedHealthInfra() {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(FieldNameConstants.USER_ID, SewaTransformer.loginBean.getUserID());
            QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("mob_rbsk_search_by_health_infra", null, linkedHashMap, 0));
            if (queryMobDataBeanExecuteQuery != null && queryMobDataBeanExecuteQuery.getResult() != null && !queryMobDataBeanExecuteQuery.getResult().isEmpty()) {
                this.healthInfraList = queryMobDataBeanExecuteQuery.getResult();
            }
        } catch (RestHttpException e) {
            hideProcessDialog();
            Log.e(getClass().getSimpleName(), e.getMessage());
        }
        createHealthInfraSpinner();
    }

    private void createFamilyEditText() {
        TextInputLayout editText = MyStaticComponents.getEditText(this.context, LabelConstants.FAMILY_ID, -1, 22, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.familyEditText = editText;
        editText.setVisibility(8);
        if (this.familyEditText.getEditText() != null) {
            this.familyEditText.getEditText().addTextChangedListener(new FamilyIdTextWatcher(this.familyEditText.getEditText()));
        }
    }

    public void createHealthInfraSpinner() {
        List<LinkedHashMap<String, Object>> list = this.healthInfraList;
        if (list != null && !list.isEmpty()) {
            this.healthInfraOptions = new LinkedHashMap<>();
            for (LinkedHashMap<String, Object> linkedHashMap : this.healthInfraList) {
                this.healthInfraOptions.put(String.valueOf(linkedHashMap.get("id")), String.valueOf(linkedHashMap.get("healthinfraname")));
            }
        }
        SingleSelectComponent singleSelectComponent = new SingleSelectComponent(this.context, this.healthInfraOptions, null);
        this.infraSelectionSpinner = singleSelectComponent;
        singleSelectComponent.setVisibility(0);
        this.infraSelectionLayout.addView(this.infraSelectionSpinner);
    }

    private TextInputLayout createMemberEditText(String str) {
        TextInputLayout editText = MyStaticComponents.getEditText(this.context, str, RADIOBUTTON_ID_MOTHER, 12, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        editText.setVisibility(8);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new MemberIdTextWatcher(editText.getEditText()));
        }
        return editText;
    }

    private void createSearchButton() {
        MaterialButton customButton = MyStaticComponents.getCustomButton(this.context, "Search", -1, null);
        this.searchButton = customButton;
        customButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m198x637509af(view);
            }
        });
    }

    /* renamed from: lambda$createSearchButton$3$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m198x637509af(View view) {
        SingleSelectComponent singleSelectComponent;
        if (!this.sewaService.isOnline()) {
            showNotOnlineMessage(false);
            return;
        }
        showProcessDialog();
        clearMemberDetailsLayout();
        if (this.selectedRbId.intValue() == RADIOBUTTON_ID_CHILD && this.childEditText.getEditText() != null) {
            String upperCase = this.childEditText.getEditText().getText().toString().toUpperCase();
            if (upperCase.trim().isEmpty() || upperCase.trim().length() < 2) {
                SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.CHILD_ID_REQUIRED_ALERT));
                hideProcessDialog();
                return;
            } else {
                getMemberDataBeanFromServer(upperCase, "mob_rbsk_child_search_by_member_id", null);
                return;
            }
        }
        if (this.selectedRbId.intValue() == RADIOBUTTON_ID_FAMILY && this.familyEditText.getEditText() != null) {
            String upperCase2 = this.familyEditText.getEditText().getText().toString().toUpperCase();
            if (upperCase2.trim().isEmpty() || upperCase2.trim().length() < 10) {
                SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.FAMILY_ID_REQUIRED_ALERT));
                hideProcessDialog();
                return;
            } else {
                getFamilyDataBeanFromServer(upperCase2);
                return;
            }
        }
        if (this.selectedRbId.intValue() == RADIOBUTTON_ID_MOTHER && this.motherEditText.getEditText() != null) {
            String upperCase3 = this.motherEditText.getEditText().getText().toString().toUpperCase();
            if (upperCase3.trim().isEmpty() || upperCase3.trim().length() < 2) {
                SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.MOTHER_ID_REQUIRED_ALERT));
                hideProcessDialog();
                return;
            } else {
                getMemberDataBeanFromServer(upperCase3, "mob_rbsk_child_search_by_mother_id", null);
                return;
            }
        }
        if (this.selectedRbId.intValue() != RADIOBUTTON_ID_HEALTH_INFRA || (singleSelectComponent = this.infraSelectionSpinner) == null) {
            return;
        }
        if (!singleSelectComponent.getAnswerString().equalsIgnoreCase("-1")) {
            getMemberDataBeanFromServer(null, "mob_rbsk_child_search_by_assigned_health_infra", this.infraSelectionSpinner.getAnswerString());
        } else {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.HEALTH_INFRASTRUCTURE_SELECTION_REQUIRED_ALERT));
        }
    }

    private void clearMemberDetailsLayout() {
        LinearLayout linearLayout = this.memberDetailsLayout;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        this.bodyLayoutContainer.removeView(this.memberDetailsLayout);
        this.memberDataBean = null;
        this.familyDataBean = null;
    }

    public void getMemberDataBeanFromServer(String str, String str2, String str3) {
        try {
            this.isFromHealthInfra = false;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(FieldNameConstants.USER_ID, SewaTransformer.loginBean.getUserID());
            if (str3 != null) {
                linkedHashMap.put("infraId", str3);
                this.isFromHealthInfra = true;
            }
            if (str != null) {
                linkedHashMap.put("health_id", str);
            }
            QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean(str2, null, linkedHashMap, 0));
            if (queryMobDataBeanExecuteQuery != null && queryMobDataBeanExecuteQuery.getResult() != null && !queryMobDataBeanExecuteQuery.getResult().isEmpty()) {
                List<LinkedHashMap<String, Object>> result = queryMobDataBeanExecuteQuery.getResult();
                LinkedHashMap<String, Object> linkedHashMap2 = new LinkedHashMap<>();
                this.familyDataBean = linkedHashMap2;
                linkedHashMap2.put("familyId", result.get(0).get("family_health_id"));
                this.familyDataBean.put(MEMBERS_KEY, result);
            } else {
                this.familyDataBean = null;
                Log.d(getClass().getSimpleName(), NULL_QUERY_RESPONSE);
            }
            showFamilyDetails();
        } catch (RestHttpException e) {
            hideProcessDialog();
            Log.e(getClass().getSimpleName(), e.getMessage());
        }
    }

    public void getFamilyDataBeanFromServer(String str) {
        try {
            this.isFromHealthInfra = false;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("family_id", str);
            linkedHashMap.put(FieldNameConstants.USER_ID, SewaTransformer.loginBean.getUserID());
            QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("mob_rbsk_child_search_by_family_id", null, linkedHashMap, 0));
            if (queryMobDataBeanExecuteQuery != null && queryMobDataBeanExecuteQuery.getResult() != null && !queryMobDataBeanExecuteQuery.getResult().isEmpty()) {
                List<LinkedHashMap<String, Object>> result = queryMobDataBeanExecuteQuery.getResult();
                LinkedHashMap<String, Object> linkedHashMap2 = new LinkedHashMap<>();
                this.familyDataBean = linkedHashMap2;
                linkedHashMap2.put("familyId", str);
                this.familyDataBean.put(MEMBERS_KEY, result);
            } else {
                this.familyDataBean = null;
            }
            showFamilyDetails();
        } catch (RestHttpException e) {
            hideProcessDialog();
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    public void showFamilyDetails() {
        if (this.familyDataBean != null) {
            LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, 105, 1, new LinearLayout.LayoutParams(-2, -2));
            this.memberDetailsLayout = linearLayout;
            if (!this.isSearchByHealthInfra) {
                linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
                this.memberDetailsLayout.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.familyDataBean.get("familyId"))));
            }
            this.memberDetailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.MEMBER_LIST)));
            ArrayList arrayList = new ArrayList();
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda12
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m206xabe3181(adapterView, view, i, j);
                }
            };
            ArrayList arrayList2 = (ArrayList) this.familyDataBean.get(MEMBERS_KEY);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    LinkedHashMap linkedHashMap = (LinkedHashMap) it.next();
                    Object obj = linkedHashMap.get("unique_health_id");
                    Object obj2 = linkedHashMap.get(CHILD_NAME);
                    Object obj3 = linkedHashMap.get(MOTHER_NAME);
                    Object obj4 = linkedHashMap.get(FATHER_NAME);
                    StringBuilder sb = new StringBuilder("Mother : ");
                    if (obj3 != null) {
                        sb.append(obj3);
                    } else {
                        sb.append(UtilBean.getMyLabel("Not available"));
                    }
                    sb.append("\nFather : ");
                    if (obj4 != null && !obj4.toString().trim().isEmpty()) {
                        sb.append(obj4);
                    } else {
                        sb.append(UtilBean.getMyLabel("Not available"));
                    }
                    ListItemDataBean listItemDataBean = new ListItemDataBean(obj.toString(), obj2.toString(), sb.toString());
                    if (linkedHashMap.containsKey("additional_info") && linkedHashMap.get("additional_info") != null) {
                        listItemDataBean.setVerified(Boolean.TRUE.equals(((MemberAdditionalInfoDataBean) new Gson().fromJson(linkedHashMap.get("additional_info").toString(), MemberAdditionalInfoDataBean.class)).getIsHeadToScreeningDone()));
                    }
                    arrayList.add(listItemDataBean);
                }
            }
            this.memberDetailsLayout.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_info, onItemClickListener, null));
            this.bodyLayoutContainer.addView(this.memberDetailsLayout);
        } else if (this.isSearchByHealthInfra) {
            SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.NO_MEMBER_FOUND_IN_YOUR_ASSIGNED_HEALTH_INFRA));
        } else {
            SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.NO_MEMBER_FOUND_FOR_GIVEN_ID));
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$showFamilyDetails$4$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m206xabe3181(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberIndex = i;
    }

    private void initializeQuestionView() {
        this.apgar1MinRadioGroup = initializeApgarRadioGroup();
        this.apgar5MinRadioGroup = initializeApgarRadioGroup();
        this.heightText = MyStaticComponents.getEditText(this.context, LabelConstants.CHILD_HEIGHT, -1, 3, 2);
        this.headCircumferenceText = MyStaticComponents.getEditText(this.context, LabelConstants.HEAD_CIRCUMFERENCE, -1, 3, 2);
        this.toneOfTheBabyRadioGroup = new RadioGroup(this.context);
        MaterialRadioButton radioButton = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(LabelConstants.HYPERTONIA), 1);
        this.tmpRadioButton = radioButton;
        this.toneOfTheBabyRadioGroup.addView(radioButton);
        MaterialRadioButton radioButton2 = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(LabelConstants.HYPOTONIA), 2);
        this.tmpRadioButton = radioButton2;
        this.toneOfTheBabyRadioGroup.addView(radioButton2);
        MaterialRadioButton radioButton3 = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel("Normal"), 3);
        this.tmpRadioButton = radioButton3;
        this.toneOfTheBabyRadioGroup.addView(radioButton3);
        this.moroReflexRadioGroup = initializeRadioGroup();
        this.stepReflexRadioGroup = initializeRadioGroup();
        this.plantarReflexRadioGroup = initializeRadioGroup();
        this.rootReflexRadioGroup = initializeRadioGroup();
        this.asymmetricalTonicRadioGroup = initializeRadioGroup();
        this.suckingReflexRadioGroup = initializeRadioGroup();
        this.graspReflexRadioGroup = initializeRadioGroup();
        RadioGroup radioGroup = new RadioGroup(this.context);
        this.referralConformationRadioGroup = radioGroup;
        addRadioButtonsYesAndNoToGroup(radioGroup);
        QueFormBean queFormBean = new QueFormBean();
        this.healthInfraQueFormBean = queFormBean;
        queFormBean.setIsmandatory("T");
        this.healthInfraQueFormBean.setMandatorymessage(LabelConstants.SEARCH_AND_SELECT_HEALTH_INFRASTRUCTURE);
        setMemberDetailsView();
    }

    private RadioGroup initializeApgarRadioGroup() {
        RadioGroup radioGroup = new RadioGroup(this.context);
        MaterialRadioButton radioButton = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(RbskConstants.APGAR_O_TO_3), 1);
        this.tmpRadioButton = radioButton;
        radioGroup.addView(radioButton);
        MaterialRadioButton radioButton2 = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(RbskConstants.APGAR_4_TO_7), 2);
        this.tmpRadioButton = radioButton2;
        radioGroup.addView(radioButton2);
        MaterialRadioButton radioButton3 = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(RbskConstants.APGAR_7_PLUS), 3);
        this.tmpRadioButton = radioButton3;
        radioGroup.addView(radioButton3);
        return radioGroup;
    }

    private RadioGroup initializeRadioGroup() {
        RadioGroup radioGroup = new RadioGroup(this.context);
        addRadioButtonsYesAndNoToGroup(radioGroup);
        MaterialRadioButton radioButton = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(LabelConstants.NOT_KNOWN), 3);
        this.tmpRadioButton = radioButton;
        radioGroup.addView(radioButton);
        return radioGroup;
    }

    private void addRadioButtonsYesAndNoToGroup(RadioGroup radioGroup) {
        MaterialRadioButton radioButton = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel("Yes"), 1);
        this.tmpRadioButton = radioButton;
        radioGroup.addView(radioButton);
        MaterialRadioButton radioButton2 = MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel("No"), 2);
        this.tmpRadioButton = radioButton2;
        radioGroup.addView(radioButton2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setMemberDetailsView() {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity.setMemberDetailsView():void");
    }

    public void setChildBodyMeasurementScreen() {
        this.screen = CHILD_BODY_MEASUREMENT_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.CHILD_HEIGHT_IN_CMS)));
        this.bodyLayoutContainer.addView(this.heightText);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.HEAD_CIRCUMFERENCE_IN_CMS)));
        this.bodyLayoutContainer.addView(this.headCircumferenceText);
    }

    public void setApgarQuestionView() {
        this.screen = APGAR_QUESTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.APGAR_STANDS_FOR_APPROPRIATES));
        ImageView imageView = MyStaticComponents.getImageView(this.context, -1, R.drawable.apgar_scoring_system, new LinearLayout.LayoutParams(-1, -2));
        imageView.setAdjustViewBounds(true);
        this.bodyLayoutContainer.addView(imageView);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.APGAR_1_MIN)));
        this.bodyLayoutContainer.addView(this.apgar1MinRadioGroup);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.APGAR_5_MIN)));
        this.bodyLayoutContainer.addView(this.apgar5MinRadioGroup);
    }

    public void setCommonDefectsScreen1() {
        this.screen = COMMON_DEFECTS_SCREEN_1;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Tone of the Baby:")));
        this.bodyLayoutContainer.addView(this.toneOfTheBabyRadioGroup);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Moro Reflex:")));
        this.bodyLayoutContainer.addView(this.moroReflexRadioGroup);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Step Reflex:")));
        this.bodyLayoutContainer.addView(this.stepReflexRadioGroup);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Plantar Reflex:")));
        this.bodyLayoutContainer.addView(this.plantarReflexRadioGroup);
    }

    public void setCommonDefectsScreen2() {
        this.screen = COMMON_DEFECTS_SCREEN_2;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Root Reflex:")));
        this.bodyLayoutContainer.addView(this.rootReflexRadioGroup);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Asymmetrical Tonic:")));
        this.bodyLayoutContainer.addView(this.asymmetricalTonicRadioGroup);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Sucking Reflex:")));
        this.bodyLayoutContainer.addView(this.suckingReflexRadioGroup);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Grasp Reflex:")));
        this.bodyLayoutContainer.addView(this.graspReflexRadioGroup);
    }

    public void setScreeningConfirmationScreen() {
        this.screen = SCREENING_CONFIRMATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.isReferralRequired = checkForReferralRequirement();
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, LabelConstants.EXAMINE_BABY_AND_SCHOOSE_FOR_DEFECTS);
        materialTextViewGenerateInstructionView.setPadding(0, 0, 0, 30);
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.DOES_CHILD_HAVE_VISIBLE_DEFECTS));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(20, 20, 20, 20);
        MaterialButton customButton = MyStaticComponents.getCustomButton(this.context, LabelConstants.ENTER_VISUAL_DEFECTS, -1, layoutParams);
        customButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m203x87fa1df0(view);
            }
        });
        this.bodyLayoutContainer.addView(customButton);
        MaterialButton customButton2 = MyStaticComponents.getCustomButton(this.context, LabelConstants.NO_DEFECTS, -1, layoutParams);
        customButton2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m204x63bb99b1(view);
            }
        });
        this.bodyLayoutContainer.addView(customButton2);
        this.nextButton.setVisibility(8);
    }

    /* renamed from: lambda$setScreeningConfirmationScreen$5$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m203x87fa1df0(View view) {
        this.nextButton.setVisibility(0);
        this.visibleDefectsPresent = true;
        setScreeningScreen();
    }

    /* renamed from: lambda$setScreeningConfirmationScreen$6$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m204x63bb99b1(View view) {
        this.nextButton.setVisibility(0);
        this.visibleDefectsPresent = false;
        if (this.isReferralRequired) {
            viewReferralConformationScreen();
        } else {
            setScreeningCompletionScreen();
        }
    }

    private void setScreeningScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = SCREENING_SCREEN;
        if (this.childBodyLayout == null) {
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.child_body_layout, (ViewGroup) null);
            this.childBodyLayout = linearLayout;
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) linearLayout.findViewById(R.id.bodyPartViewSelector);
            materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.OnButtonCheckedListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda10
                @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
                public final void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup2, int i, boolean z) {
                    this.f$0.m205xe31dc4dd(materialButtonToggleGroup2, i, z);
                }
            });
            this.frontPartSelectionButton = (MaterialButton) materialButtonToggleGroup.findViewById(R.id.frontBody);
            this.backPartSelectionButton = (MaterialButton) materialButtonToggleGroup.findViewById(R.id.backBody);
            RelativeLayout relativeLayout = (RelativeLayout) this.childBodyLayout.findViewById(R.id.frontBodyLayout);
            this.childFrontBodyLayout = relativeLayout;
            addEventHandler(relativeLayout, null);
            RelativeLayout relativeLayout2 = (RelativeLayout) this.childBodyLayout.findViewById(R.id.backBodyLayout);
            this.childBackBodyLayout = relativeLayout2;
            addEventHandler(null, relativeLayout2);
            setPrimaryButton(R.id.frontBody);
        }
        this.bodyLayoutContainer.addView(this.childBodyLayout);
    }

    /* renamed from: lambda$setScreeningScreen$7$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m205xe31dc4dd(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
        setPrimaryButton(i);
    }

    private void setPrimaryButton(int i) {
        this.frontPartSelectionButton.setTextColor(ContextCompat.getColorStateList(this.context, R.color.toggle_button_text_color_selector));
        this.frontPartSelectionButton.setStrokeColor(ColorStateList.valueOf(ContextCompat.getColor(this.context, R.color.colorPrimary)));
        this.frontPartSelectionButton.setStrokeWidth(2);
        this.backPartSelectionButton.setTextColor(ContextCompat.getColorStateList(this.context, R.color.toggle_button_text_color_selector));
        this.backPartSelectionButton.setStrokeColor(ColorStateList.valueOf(ContextCompat.getColor(this.context, R.color.colorPrimary)));
        this.backPartSelectionButton.setStrokeWidth(2);
        if (i == R.id.frontBody) {
            this.childBackBodyLayout.setVisibility(8);
            this.childFrontBodyLayout.setVisibility(0);
            this.frontPartSelectionButton.setBackgroundTintList(ContextCompat.getColorStateList(this.context, R.color.colorAccent));
            this.frontPartSelectionButton.setTextColor(ContextCompat.getColor(this.context, R.color.white));
            this.backPartSelectionButton.setBackgroundTintList(ContextCompat.getColorStateList(this.context, R.color.white));
            return;
        }
        if (i == R.id.backBody) {
            this.childBackBodyLayout.setVisibility(0);
            this.childFrontBodyLayout.setVisibility(8);
            this.frontPartSelectionButton.setBackgroundTintList(ContextCompat.getColorStateList(this.context, R.color.white));
            this.backPartSelectionButton.setTextColor(ContextCompat.getColor(this.context, R.color.white));
            this.backPartSelectionButton.setBackgroundTintList(ContextCompat.getColorStateList(this.context, R.color.colorAccent));
        }
    }

    public void addEventHandler(RelativeLayout relativeLayout, RelativeLayout relativeLayout2) {
        if (relativeLayout == null) {
            if (relativeLayout2 != null) {
                bindEventListenerOnClick(relativeLayout2, R.id.back, RbskConstants.BODY_PART_BACK);
                bindEventListenerOnClick(relativeLayout2, R.id.genitaliaBack, RbskConstants.BODY_PART_GENITALIA);
                return;
            }
            return;
        }
        bindEventListenerOnClick(relativeLayout, R.id.head, RbskConstants.BODY_PART_HEAD);
        bindEventListenerOnClick(relativeLayout, R.id.foreHead, RbskConstants.BODY_PART_HEAD);
        bindEventListenerOnClick(relativeLayout, R.id.leftEye, RbskConstants.BODY_PART_EYE);
        bindEventListenerOnClick(relativeLayout, R.id.rightEye, RbskConstants.BODY_PART_EYE);
        bindEventListenerOnClick(relativeLayout, R.id.leftEar, RbskConstants.BODY_PART_EAR);
        bindEventListenerOnClick(relativeLayout, R.id.rightEar, RbskConstants.BODY_PART_EAR);
        bindEventListenerOnClick(relativeLayout, R.id.leftCheek, RbskConstants.BODY_PART_CHEEKS);
        bindEventListenerOnClick(relativeLayout, R.id.rightCheek, RbskConstants.BODY_PART_CHEEKS);
        bindEventListenerOnClick(relativeLayout, R.id.nose, "NOSE");
        bindEventListenerOnClick(relativeLayout, R.id.mouth, "MOUTH");
        bindEventListenerOnClick(relativeLayout, R.id.neck, RbskConstants.BODY_PART_NECK);
        bindEventListenerOnClick(relativeLayout, R.id.leftHand, RbskConstants.BODY_PART_HAND);
        bindEventListenerOnClick(relativeLayout, R.id.leftPalm, RbskConstants.BODY_PART_HAND);
        bindEventListenerOnClick(relativeLayout, R.id.rightHand, RbskConstants.BODY_PART_HAND);
        bindEventListenerOnClick(relativeLayout, R.id.rightPalm, RbskConstants.BODY_PART_HAND);
        bindEventListenerOnClick(relativeLayout, R.id.chest, RbskConstants.BODY_PART_CHEST);
        bindEventListenerOnClick(relativeLayout, R.id.stomach, RbskConstants.BODY_PART_STOMACH);
        bindEventListenerOnClick(relativeLayout, R.id.leftThigh, RbskConstants.BODY_PART_LEG);
        bindEventListenerOnClick(relativeLayout, R.id.leftFibula, RbskConstants.BODY_PART_LEG);
        bindEventListenerOnClick(relativeLayout, R.id.leftFoot, RbskConstants.BODY_PART_LEG);
        bindEventListenerOnClick(relativeLayout, R.id.rightThigh, RbskConstants.BODY_PART_LEG);
        bindEventListenerOnClick(relativeLayout, R.id.rightFibula, RbskConstants.BODY_PART_LEG);
        bindEventListenerOnClick(relativeLayout, R.id.rightFoot, RbskConstants.BODY_PART_LEG);
        bindEventListenerOnClick(relativeLayout, R.id.genitaliaFront, RbskConstants.BODY_PART_GENITALIA);
    }

    private void bindEventListenerOnClick(RelativeLayout relativeLayout, int i, final String str) {
        ((Button) relativeLayout.findViewById(i)).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m197xd3a5ed16(str, view);
            }
        });
    }

    /* renamed from: lambda$bindEventListenerOnClick$8$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m197xd3a5ed16(String str, View view) {
        showProcessDialog();
        this.bodyPart = str;
        setDefectSelectionScreen();
    }

    public void setDefectSelectionScreen() {
        if (this.bodyPart != null) {
            try {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("bodyPart", this.bodyPart + "','SKIN");
                QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("mob_rbsk_defect_list_by_body_part", null, linkedHashMap, 0));
                if (queryMobDataBeanExecuteQuery != null && queryMobDataBeanExecuteQuery.getResult() != null && !queryMobDataBeanExecuteQuery.getResult().isEmpty()) {
                    this.defects = queryMobDataBeanExecuteQuery.getResult();
                    viewDefectSelectionScreen();
                } else {
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m202xcce69904();
                        }
                    });
                    hideProcessDialog();
                }
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), e.getMessage());
                hideProcessDialog();
            }
        }
    }

    /* renamed from: lambda$setDefectSelectionScreen$9$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m202xcce69904() {
        SewaUtil.generateToast(this.context, LabelConstants.NO_DEFECTS_FOUND_FOR_THE_BODY_PART);
    }

    public void viewDefectSelectionScreen() throws IOException {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = DISEASE_SELECTION_SCREEN;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(150, 20, 150, 20);
        ImageView imageView = MyStaticComponents.getImageView(this.context, -1, -1, layoutParams);
        imageView.setAdjustViewBounds(true);
        Integer num = RbskConstants.BODY_PART_IMAGE_IDS.get(this.bodyPart);
        if (num != null) {
            imageView.setImageResource(num.intValue());
        }
        this.bodyLayoutContainer.addView(imageView);
        MaterialTextView materialTextViewGenerateTitleView = MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel(RbskConstants.BODY_PART_FULL_NAME.get(this.bodyPart)) + " Defects");
        materialTextViewGenerateTitleView.setPadding(0, 0, 0, 30);
        this.bodyLayoutContainer.addView(materialTextViewGenerateTitleView);
        for (LinkedHashMap<String, Object> linkedHashMap : this.defects) {
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.rbsk_defect_list_layout, (ViewGroup) null);
            Object obj = linkedHashMap.get("id");
            if (obj != null) {
                int iIntValue = Double.valueOf(obj.toString()).intValue();
                ((TextView) linearLayout.findViewById(R.id.defect_name)).setText(UtilBean.getNotAvailableIfNull(linkedHashMap.get(DEFECT_NAME)));
                ((TextView) linearLayout.findViewById(R.id.defect_desc)).setText(UtilBean.getNotAvailableIfNull(linkedHashMap.get(DESCRIPTION)));
                Object obj2 = linkedHashMap.get("photo_required");
                if (obj2 != null && Boolean.valueOf(obj2.toString()).equals(Boolean.TRUE)) {
                    ImageView imageView2 = (ImageView) linearLayout.findViewById(R.id.capture_pic);
                    imageView2.setVisibility(0);
                    imageView2.setLabelFor(iIntValue);
                    imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda14
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.m210x6fdd34cb(view);
                        }
                    });
                }
                if (linkedHashMap.get("defect_image") != null) {
                    getImageFromServer(linkedHashMap, linearLayout);
                } else {
                    setDefaultImage(linearLayout);
                    addDefectDescriptionPopUp(linearLayout, null, linkedHashMap);
                }
                CheckBox checkBox = (CheckBox) linearLayout.findViewById(R.id.defect_checkbox);
                checkBox.setId(iIntValue);
                checkBox.setChecked(this.selectedDefects.contains(Integer.valueOf(iIntValue)));
                checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda15
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        this.f$0.m211x4b9eb08c(compoundButton, z);
                    }
                });
                this.bodyLayoutContainer.addView(linearLayout);
            }
        }
        MaterialButton customButton = MyStaticComponents.getCustomButton(this.context, LabelConstants.MORE_DEFECTS, -1, new LinearLayout.LayoutParams(-1, -2));
        customButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m212x27602c4d(view);
            }
        });
        this.bodyLayoutContainer.addView(customButton);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        hideProcessDialog();
    }

    /* renamed from: lambda$viewDefectSelectionScreen$10$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m210x6fdd34cb(View view) {
        if (this.selectedDefects.contains(Integer.valueOf(view.getLabelFor()))) {
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            this.selectedDefect = view.getLabelFor();
            startActivityForResult(intent, GlobalTypes.PHOTO_CAPTURE_ACTIVITY);
            return;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.DEFECT_SELECTION_REQUIRED_TO_CAPTURE_IMAGE));
    }

    /* renamed from: lambda$viewDefectSelectionScreen$11$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m211x4b9eb08c(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.selectedDefects.add(Integer.valueOf(compoundButton.getId()));
        } else {
            this.selectedDefects.remove(Integer.valueOf(compoundButton.getId()));
        }
    }

    /* renamed from: lambda$viewDefectSelectionScreen$12$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m212x27602c4d(View view) {
        setPrimaryButton(R.id.frontBody);
        setScreeningScreen();
    }

    public void getImageFromServer(Map<String, Object> map, LinearLayout linearLayout) throws IOException {
        try {
            Object obj = map.get("defect_image");
            if (obj != null) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new URL(WSConstants.REST_TECHO_SERVICE_URL + "getfileById?id=" + ((Double) obj).longValue()).openConnection().getInputStream());
                ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(50);
                while (true) {
                    int i = bufferedInputStream.read();
                    if (i == -1) {
                        break;
                    } else {
                        byteArrayBuffer.append((byte) i);
                    }
                }
                if (!byteArrayBuffer.isEmpty()) {
                    byte[] byteArray = byteArrayBuffer.toByteArray();
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                    setImage(linearLayout, bitmapDecodeByteArray);
                    addDefectDescriptionPopUp(linearLayout, bitmapDecodeByteArray, map);
                    return;
                }
                setDefaultImage(linearLayout);
                addDefectDescriptionPopUp(linearLayout, null, map);
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
            setDefaultImage(linearLayout);
            addDefectDescriptionPopUp(linearLayout, null, map);
        }
    }

    public void addDefectDescriptionPopUp(LinearLayout linearLayout, Bitmap bitmap, Map<String, Object> map) {
        final PopupWindow popupWindow = new PopupWindow((View) linearLayout, -1, -1, true);
        final LinearLayout linearLayout2 = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.defect_pop_window, (ViewGroup) null);
        MaterialTextView materialTextView = (MaterialTextView) linearLayout2.findViewById(R.id.toolbar_title);
        materialTextView.setTextAppearance(this.context, R.style.ToolbarTitle);
        materialTextView.setText(UtilBean.getTitleText(LabelConstants.HEAD_TO_TOE_SCREENING_TITLE));
        Object obj = this.memberDataBean.get(CHILD_NAME);
        MaterialTextView materialTextView2 = (MaterialTextView) linearLayout2.findViewById(R.id.toolbar_subtitle);
        if (obj != null) {
            materialTextView2.setVisibility(0);
            materialTextView2.setText(UtilBean.getMyLabel(obj.toString()));
            materialTextView2.setTextAppearance(this.context, R.style.ToolbarSubtitle);
        } else {
            materialTextView2.setVisibility(8);
        }
        ((TextView) linearLayout2.findViewById(R.id.defect_title)).setText(UtilBean.getNotAvailableIfNull(map.get(DEFECT_NAME)));
        ((TextView) linearLayout2.findViewById(R.id.defect_description)).setText(UtilBean.getNotAvailableIfNull(map.get(DESCRIPTION)));
        ImageView imageView = (ImageView) linearLayout2.findViewById(R.id.defect_image);
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        } else {
            imageView.setImageResource(R.drawable.no_image_available);
        }
        Button button = (Button) linearLayout2.findViewById(R.id.defect_close_button);
        button.setTypeface(SharedStructureData.typeface, 1);
        button.setText(UtilBean.getMyLabel(GlobalTypes.EVENT_BACK));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                popupWindow.dismiss();
            }
        });
        popupWindow.setContentView(linearLayout2);
        ((TextView) linearLayout.findViewById(R.id.defect_name)).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                popupWindow.showAtLocation(linearLayout2, 17, 0, 0);
            }
        });
        ImageView imageView2 = (ImageView) linearLayout.findViewById(R.id.defect_info);
        imageView2.setVisibility(0);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                popupWindow.showAtLocation(linearLayout2, 17, 0, 0);
            }
        });
    }

    public void setImage(LinearLayout linearLayout, Bitmap bitmap) {
        ((ImageView) linearLayout.findViewById(R.id.defect_image)).setImageBitmap(bitmap);
    }

    public void setDefaultImage(LinearLayout linearLayout) {
        ((ImageView) linearLayout.findViewById(R.id.defect_image)).setImageResource(R.drawable.no_image_available);
    }

    public void retrieveSelectedDefectDetails() {
        Set<Integer> set = this.selectedDefects;
        if (set != null && !set.isEmpty()) {
            showProcessDialog();
            try {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                StringBuilder sb = new StringBuilder("(");
                sb.append(this.selectedDefects.isEmpty() ? null : this.selectedDefects.toString().substring(1, this.selectedDefects.toString().length() - 1));
                sb.append(")");
                linkedHashMap.put("ids", sb.toString());
                setSelectedDefectsScreen(this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("mob_rbsk_defect_by_id", null, linkedHashMap, 0)).getResult());
                return;
            } catch (RestHttpException e) {
                Log.e(getClass().getSimpleName(), null, e);
                generateToaster(LabelConstants.ERROR_OCCURRED_SO_TRY_AGAIN);
                return;
            }
        }
        generateToaster(LabelConstants.DEFECT_SELECTION_REQUIRED);
    }

    public void setSelectedDefectsScreen(List<LinkedHashMap<String, Object>> list) {
        this.screen = SELECTED_DEFECT_LIST_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.SELECTED_DEFECT_FOR_CHILD)));
        for (LinkedHashMap<String, Object> linkedHashMap : list) {
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.rbsk_selected_defect_list_layout, (ViewGroup) null);
            TextView textView = (TextView) linearLayout.findViewById(R.id.defect_name);
            Object obj = linkedHashMap.get(DEFECT_NAME);
            if (obj != null) {
                textView.setText(obj.toString());
            }
            Object obj2 = linkedHashMap.get("id");
            int iIntValue = obj2 != null ? Double.valueOf(obj2.toString()).intValue() : -1;
            byte[] bArr = this.images.get(Integer.valueOf(iIntValue));
            ImageView imageView = (ImageView) linearLayout.findViewById(R.id.defect_image);
            if (bArr != null) {
                imageView.setImageBitmap(BitmapFactory.decodeByteArray(this.images.get(Integer.valueOf(iIntValue)), 0, bArr.length));
            } else {
                imageView.setImageResource(R.drawable.no_image_available);
            }
            Object obj3 = linkedHashMap.get("referral_required");
            if (obj3 != null && Boolean.valueOf(obj3.toString()).equals(Boolean.TRUE)) {
                this.isReferralRequired = true;
            }
            this.bodyLayoutContainer.addView(linearLayout);
        }
        hideProcessDialog();
    }

    public void getStabilizationInfoForDefects() {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            StringBuilder sb = new StringBuilder("(");
            sb.append(this.selectedDefects.isEmpty() ? null : this.selectedDefects.toString().substring(1, this.selectedDefects.toString().length() - 1));
            sb.append(")");
            linkedHashMap.put("defectIds", sb.toString());
            QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("mob_rbsk_defect_stabilization_info", null, linkedHashMap, 0));
            if (queryMobDataBeanExecuteQuery != null && queryMobDataBeanExecuteQuery.getResult() != null) {
                viewStabilizationInfoForDefects(queryMobDataBeanExecuteQuery.getResult());
            } else {
                Log.d(getClass().getSimpleName(), NULL_QUERY_RESPONSE);
                hideProcessDialog();
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getMessage());
        }
    }

    public void viewStabilizationInfoForDefects(List<LinkedHashMap<String, Object>> list) {
        if (!list.isEmpty()) {
            this.screen = STABILIZATION_INFO_SCREEN;
            this.bodyLayoutContainer.removeAllViews();
            this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel("Instructions to stabilize defects:")));
            Iterator<LinkedHashMap<String, Object>> it = list.iterator();
            int i = 1;
            while (it.hasNext()) {
                Object obj = it.next().get(DESCRIPTION);
                if (obj != null) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, i + ". " + obj.toString()));
                    i++;
                }
            }
        } else if (this.screen.equals(SCREENING_COMPLETION_SCREEN) || this.screen.equals(REFERRAL_CONFORMATION_SCREEN)) {
            retrieveSelectedDefectDetails();
        } else if (this.isReferralRequired) {
            viewReferralConformationScreen();
        } else {
            setScreeningCompletionScreen();
        }
        hideProcessDialog();
    }

    public void viewReferralConformationScreen() {
        this.screen = REFERRAL_CONFORMATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.BENEFICIARY_READY_FOR_REFERRAL)));
        this.bodyLayoutContainer.addView(this.referralConformationRadioGroup);
    }

    public void viewHealthInfrastructureScreen() {
        this.screen = HEALTH_INFRASTRUCTURE_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.healthInfraComponent == null) {
            this.healthInfraComponent = MyDynamicComponents.getHealthInfrastructureComponent(this.context, this.healthInfraQueFormBean, "RBSK");
        }
        this.bodyLayoutContainer.addView(this.healthInfraComponent);
    }

    public void storeScreeningDetails() {
        RbskScreeningDetailDto rbskScreeningDetailDto = new RbskScreeningDetailDto();
        rbskScreeningDetailDto.setToken(SewaTransformer.loginBean.getUserToken());
        rbskScreeningDetailDto.setMemberId(Integer.valueOf(Double.valueOf(Objects.requireNonNull(this.memberDataBean.get("child_id")).toString()).intValue()));
        rbskScreeningDetailDto.setFamilyId(Integer.valueOf(Double.valueOf(Objects.requireNonNull(this.memberDataBean.get("family_id")).toString()).intValue()));
        rbskScreeningDetailDto.setLocationId(Integer.valueOf(Double.valueOf(Objects.requireNonNull(this.memberDataBean.get(FirebaseAnalytics.Param.LOCATION_ID)).toString()).intValue()));
        if (this.isFromHealthInfra.booleanValue()) {
            rbskScreeningDetailDto.setDeliveryInfraId(Integer.valueOf(Double.valueOf(this.infraSelectionSpinner.getAnswerString()).intValue()));
        } else {
            Object obj = this.familyDataBean.get("delivery_infra_id");
            if (obj != null) {
                rbskScreeningDetailDto.setDeliveryInfraId(Integer.valueOf(Double.valueOf(obj.toString()).intValue()));
            } else {
                rbskScreeningDetailDto.setDeliveryInfraId(-1);
            }
        }
        rbskScreeningDetailDto.setScreeningDate(new Date());
        rbskScreeningDetailDto.setDoneFrom(LabelConstants.DONE_FROM_SCREENING);
        Set<Integer> set = this.selectedDefects;
        if (set != null) {
            for (Integer num : set) {
                num.intValue();
                RbskDefectDetailDto rbskDefectDetailDto = new RbskDefectDetailDto();
                rbskDefectDetailDto.setDefectId(num);
                rbskDefectDetailDto.setMemberId(Integer.valueOf(Double.valueOf(Objects.requireNonNull(this.memberDataBean.get("child_id")).toString()).intValue()));
                if (this.images.get(num) != null) {
                    rbskDefectDetailDto.setPhotoData(this.images.get(num));
                }
                if (rbskScreeningDetailDto.getRbskScreeningDefectDto() == null) {
                    rbskScreeningDetailDto.setRbskScreeningDefectDto(new ArrayList());
                }
                rbskScreeningDetailDto.getRbskScreeningDefectDto().add(rbskDefectDetailDto);
            }
        }
        if (this.heightText.getEditText() != null) {
            rbskScreeningDetailDto.setLength(Integer.valueOf(this.heightText.getEditText().getText().toString()));
        }
        if (this.headCircumferenceText.getEditText() != null) {
            rbskScreeningDetailDto.setHeadCircumference(Integer.valueOf(this.headCircumferenceText.getEditText().getText().toString()));
        }
        rbskScreeningDetailDto.setApgar1(RbskConstants.APGARS.get(Integer.valueOf(this.apgar1MinRadioGroup.getCheckedRadioButtonId())));
        rbskScreeningDetailDto.setApgar5(RbskConstants.APGARS.get(Integer.valueOf(this.apgar5MinRadioGroup.getCheckedRadioButtonId())));
        rbskScreeningDetailDto.setBabyTone(RbskConstants.TONE_OF_BODY_DEFECT_VALUE.get(Integer.valueOf(this.toneOfTheBabyRadioGroup.getCheckedRadioButtonId())));
        rbskScreeningDetailDto.setMoroReflex(RbskConstants.COMMON_DEFECT_SELECTION_VALUES.get(Integer.valueOf(this.moroReflexRadioGroup.getCheckedRadioButtonId())));
        rbskScreeningDetailDto.setStepReflex(RbskConstants.COMMON_DEFECT_SELECTION_VALUES.get(Integer.valueOf(this.stepReflexRadioGroup.getCheckedRadioButtonId())));
        rbskScreeningDetailDto.setPlantarReflex(RbskConstants.COMMON_DEFECT_SELECTION_VALUES.get(Integer.valueOf(this.plantarReflexRadioGroup.getCheckedRadioButtonId())));
        rbskScreeningDetailDto.setRootReflex(RbskConstants.COMMON_DEFECT_SELECTION_VALUES.get(Integer.valueOf(this.rootReflexRadioGroup.getCheckedRadioButtonId())));
        rbskScreeningDetailDto.setAssymetricalTonic(RbskConstants.COMMON_DEFECT_SELECTION_VALUES.get(Integer.valueOf(this.asymmetricalTonicRadioGroup.getCheckedRadioButtonId())));
        rbskScreeningDetailDto.setSuckingReflex(RbskConstants.COMMON_DEFECT_SELECTION_VALUES.get(Integer.valueOf(this.suckingReflexRadioGroup.getCheckedRadioButtonId())));
        rbskScreeningDetailDto.setGraspReflex(RbskConstants.COMMON_DEFECT_SELECTION_VALUES.get(Integer.valueOf(this.graspReflexRadioGroup.getCheckedRadioButtonId())));
        rbskScreeningDetailDto.setVisibleDefects(Boolean.valueOf(this.visibleDefectsPresent));
        RadioGroup radioGroup = this.referralConformationRadioGroup;
        if (radioGroup != null && radioGroup.getCheckedRadioButtonId() == 1) {
            rbskScreeningDetailDto.setReferralDone(true);
            rbskScreeningDetailDto.setReferralPlace(Integer.valueOf(Integer.parseInt(this.healthInfraQueFormBean.getAnswer().toString())));
        } else {
            rbskScreeningDetailDto.setReferralDone(false);
        }
        try {
            this.sewaServiceRestClient.storeRbskScreeningDetails(rbskScreeningDetailDto);
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m209xb9009a06();
                }
            });
            navigateToHomeScreen(false);
        } catch (Exception unused) {
            generateToaster(LabelConstants.ERROR_OCCURRED_SO_TRY_AFTER_SOME_TIME);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$storeScreeningDetails$16$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m209xb9009a06() {
        SewaUtil.generateToast(this.context, LabelConstants.HEAD_TO_TOE_SCREENING_FORM_SUBMITTED_SUCCESSFULLY);
    }

    public void setScreeningCompletionScreen() {
        this.screen = SCREENING_COMPLETION_SCREEN;
        this.nextButton.setText(GlobalTypes.EVENT_SUBMIT);
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.YOUR_FORM_IS_COMPLETE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.SUCCESSFULLY_COMPLTED_SCREENING_FOR_CHILD)));
    }

    private void showNotOnlineMessage(final boolean z) {
        if (this.sewaService.isOnline()) {
            return;
        }
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m207x1dbe7bfc(z, view);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
        this.myAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.m208xf97ff7bd(z, dialogInterface);
            }
        });
    }

    /* renamed from: lambda$showNotOnlineMessage$17$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m207x1dbe7bfc(boolean z, View view) {
        this.myAlertDialog.dismiss();
        if (z) {
            navigateToHomeScreen(false);
        }
    }

    /* renamed from: lambda$showNotOnlineMessage$18$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity, reason: not valid java name */
    /* synthetic */ void m208xf97ff7bd(boolean z, DialogInterface dialogInterface) {
        this.myAlertDialog.dismiss();
        if (z) {
            navigateToHomeScreen(false);
        }
    }

    public void generateToaster(String str) {
        SewaUtil.generateToast(this, str);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 15555) {
            if (i == 111) {
                setGps();
            }
        } else {
            if (i2 == -1) {
                SewaUtil.generateToast(this, LabelConstants.PHOTO_CAPTURED);
                if (intent.getExtras() != null) {
                    Bitmap bitmap = (Bitmap) intent.getExtras().get(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    if (bitmap != null) {
                        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                        this.images.put(Integer.valueOf(this.selectedDefect), byteArrayOutputStream.toByteArray());
                        return;
                    }
                    return;
                }
                return;
            }
            SewaUtil.generateToast(this, LabelConstants.FAILED_TO_TAKE_PHOTO);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r7) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }
}
