package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.FullFormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Locale;

/* loaded from: classes.dex */
public class CbacDetailsActivity extends MenuActivity implements View.OnClickListener {
    private static final String ADDRESS = "address";
    private static final String CBAC_EDIT_DETAILS = "cbacEditDetails";
    private static final String DIAGNOSED_FOR_ASTHAMA = "diagnosed_for_asthama";
    private static final String DIAGNOSED_FOR_BREAST_CANCER = "diagnosed_for_breast_cancer";
    private static final String DIAGNOSED_FOR_CERVICAL_CANCER = "diagnosed_for_cervical_cancer";
    private static final String DIAGNOSED_FOR_COPD = "diagnosed_for_copd";
    private static final String DIAGNOSED_FOR_DIABETES = "diagnosed_for_diabetes";
    private static final String DIAGNOSED_FOR_HEART_DISEASES = "diagnosed_for_heart_diseases";
    private static final String DIAGNOSED_FOR_HYPERTENSION = "diagnosed_for_hypertension";
    private static final String DIAGNOSED_FOR_KIDNEY_FAILURE = "diagnosed_for_kidney_failure";
    private static final String DIAGNOSED_FOR_NON_HEALING_WOUND = "diagnosed_for_non_healing_wound";
    private static final String DIAGNOSED_FOR_ORAL_CANCER = "diagnosed_for_oral_cancer";
    private static final String DIAGNOSED_FOR_STROKE = "diagnosed_for_stroke";
    private static final String EARLY_DETECTION_1 = "earlyDetection1";
    private static final String EARLY_DETECTION_2 = "earlyDetection2";
    private static final String EARLY_DETECTION_3 = "earlyDetection3";
    private static final String GENDER = "gender";
    private static final String HEIGHT = "height";
    private static final String MEMBER_DETAILS_SCREEN = "memberDetailsScreen";
    private static final String MEMBER_ID = "memberId";
    private static final String MEMBER_NAME = "memberName";
    private static final String MOBILE_NUMBER = "mobileNumber";
    private static final String PERSONAL_EXAMINATION = "personalExamination";
    private static final String PERSONAL_HISTORY_1 = "personalHistory1";
    private static final String PERSONAL_HISTORY_2 = "personalHistory2";
    private static final String PERSONAL_HISTORY_3 = "personalHistory3";
    private static final String RISK_ASSESSMENT = "riskAssessment";
    private static final String SMOKE_OR_CONSUME_GUTKA = "smoke_or_consume_gutka";
    private static final String UNIQUE_HEALTH_ID = "uniqueHealthId";
    private static final String WAIST = "waist";
    private static final String WEIGHT = "weight";
    private LinearLayout bodyLayoutContainer;
    private LinearLayout globalPanel;
    private boolean isSelectedMemberFemale;
    private boolean isSelectedMemberMale;
    private RadioGroup radioGroup;
    public SewaServiceRestClientImpl restClient;
    private LinkedHashMap<String, Object> selectedMemberCbacDetails;
    private Long selectedMemberId;
    private String selectedScreen = MEMBER_DETAILS_SCREEN;
    public SewaServiceImpl sewaService;
    private static final Integer RADIO_BUTTON_ID_YES = 501;
    private static final Integer RADIO_BUTTON_ID_NO = 502;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        String stringExtra = getIntent().getStringExtra("memberId");
        if (stringExtra != null) {
            this.selectedMemberId = Long.valueOf(Long.parseLong(stringExtra));
        }
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
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.NCD_CBAC_DETAILS_ACTIVITY));
        setSubTitle(null);
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        setBodyDetail();
    }

    public void setBodyDetail() {
        if (this.selectedMemberId != null) {
            if (this.sewaService.isOnline()) {
                retrieveCbacDetailFromServer();
                return;
            } else {
                showNotOnlineMessage();
                return;
            }
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.ERROR_OCCURRED_SO_TRY_AGAIN));
        hideProcessDialog();
    }

    private void showNotOnlineMessage() {
        if (this.sewaService.isOnline()) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.CbacDetailsActivity.1
            @Override // java.lang.Runnable
            public void run() {
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CbacDetailsActivity.1.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        CbacDetailsActivity.this.alertDialog.dismiss();
                        CbacDetailsActivity.this.setResult(0);
                        CbacDetailsActivity.this.finish();
                    }
                };
                CbacDetailsActivity.this.alertDialog = new MyAlertDialog(CbacDetailsActivity.this.context, false, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), onClickListener, DynamicUtils.BUTTON_OK);
                CbacDetailsActivity.this.alertDialog.show();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void retrieveCbacDetailFromServer() {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.CbacDetailsActivity.retrieveCbacDetailFromServer():void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0015  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r3) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.CbacDetailsActivity.onClick(android.view.View):void");
    }

    public void setMemberDetailsScreen() {
        this.selectedScreen = MEMBER_DETAILS_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.PERSONAL_INFORMATION));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNIQUE_HEALTH_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get("uniqueHealthId"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get("familyId"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get("memberName"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.AGE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get(RelatedPropertyNameConstants.AGE))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.GENDER)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get("gender"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.ADDRESS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get("address"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get("mobileNumber"))));
        hideProcessDialog();
    }

    public void setRiskAssessmentScreen() {
        this.selectedScreen = RISK_ASSESSMENT;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.RISK_ASSESSMENT));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.HAVING_ANY_ADDICTION_OR_SMOKING)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, FullFormConstants.getFullFormOfCBACConstants(UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get(SMOKE_OR_CONSUME_GUTKA)))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.CONSUME_ALCOHOL_DAILY)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("consume_alcohol_daily"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.MEASUREMENT_OF_WAIST)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, FullFormConstants.getFullFormOfCBACConstants(UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get(WAIST)))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.TAKING_PART_IN_ANY_PHYSICAL_ACTIVITY_150_MINUTS_IN_A_WEEK)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, FullFormConstants.getFullFormOfCBACConstants(UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get(SMOKE_OR_CONSUME_GUTKA)))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.HAVE_A_FAMILY_HISTORY_WITH_BP_DIABETES_OR_HEART_DISEASES)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("bp_diabetes_heart_history"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.CBAC_SCORE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get(FirebaseAnalytics.Param.SCORE))));
        hideProcessDialog();
    }

    public void setEarlyDetection1Screen() {
        this.selectedScreen = EARLY_DETECTION_1;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.EARLY_DETECTION));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SORTNESS_OF_BREATH));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("shortness_of_breath"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.COUGHING_MORE_THAN_2_WEEKS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("two_weeks_coughing"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.BLOOD_IN_SPUTUM)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("blood_in_sputum"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.FEVER_GT_2_WEEKS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("two_weeks_fever"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.LOSS_OF_WEIGHT)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("loss_of_weight"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.NIGHT_SWEETS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("night_sweats"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.TAKING_ANY_ANTI_TB_DRUGS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("taking_anti_tb_drugs"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.ANYONE_IN_FAMILY_SUFFERING_FROM_TB)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("family_member_suffering_from_tb"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.HISTORY_OF_TB)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("history_of_tb"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.HISTORY_OF_FITS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("fits_history"))));
        hideProcessDialog();
    }

    public void setEarlyDetection2Screen() {
        this.selectedScreen = EARLY_DETECTION_2;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.EARLY_DETECTION));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.DIFFICULTY_IN_OPENING_MOUTH)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("mouth_opening_difficulty"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.GROWTH_IN_MOUTH_NOT_HEALDED_IN_2_WEEKS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("two_weeks_ulcers_in_mouth"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.ANY_CHANGES_IN_TONE_OF_VOICE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("change_in_tone_of_voice"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.ANY_PATCH_ON_SKIN)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("patch_on_skin"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.DIFFICULTY_IN_HOLDING_OBJECTS_WITH_FINGURES)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("difficulty_holding_objects"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.LOSS_OF_SENSATION_IN_PALM)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("sensation_loss_palm"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.OCCUPATIONAL_EXPOSURE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, FullFormConstants.getFullFormOfCBACConstants(UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get("occupational_exposure")))));
        hideProcessDialog();
    }

    public void setEarlyDetection3Screen() {
        this.selectedScreen = EARLY_DETECTION_3;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.EARLY_DETECTION));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.LUMP_IN_BREAST));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("lump_in_breast"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.NIPPLE_BLOOD_STAINED_DISCHARGE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("nipple_blood_stained_discharge"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.CHANGE_IN_SIZE_OF_BREAST)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("change_in_size_of_breast"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.BLEEDING_BETWEEN_PERIODS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("bleeding_between_periods"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.BLEEDING_AFTER_MENOPAUSE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("bleeding_after_menopause"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.BLEEDING_AFTER_INTERCOURSE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("bleeding_after_intercourse"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.FOUL_VAGINAL_DISCHARGE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("foul_vaginal_discharge"))));
        hideProcessDialog();
    }

    public void setPersonalHistory1Screen() {
        this.selectedScreen = PERSONAL_HISTORY_1;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.PERSONAL_HISTORY));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_HYPERTENSION));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_HYPERTENSION))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_HYPERTENSION))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_FOR_HYPERTENSION));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_hypertension"))));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_DIABETES));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_DIABETES))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_DIABETES))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_FOR_DIABETES));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_diabetes"))));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_HEART_DISEASES));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_HEART_DISEASES))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_HEART_DISEASES))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_FOR_HEART_DISEASES));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_heart_diseases"))));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_STROKE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_STROKE))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_STROKE))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_FOR_STROKE));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_stroke"))));
        }
        hideProcessDialog();
    }

    public void setPersonalHistory2Screen() {
        this.selectedScreen = PERSONAL_HISTORY_2;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.PERSONAL_HISTORY));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_KIDNEY_FAILURE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_KIDNEY_FAILURE))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_KIDNEY_FAILURE))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_KIDNEY_FAILURE));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_kidney_failure"))));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_NON_HEALING_WOUND));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_NON_HEALING_WOUND))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_NON_HEALING_WOUND))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_FOR_NON_HEALING_WOUND));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_non_healing_wound"))));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_COPD));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_COPD))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_COPD))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_FOR_COPD));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_copd"))));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_ASTHAMA));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_ASTHAMA))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_ASTHAMA))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_FOR_ASTHAMA));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_asthama"))));
        }
        hideProcessDialog();
    }

    public void setPersonalHistory3Screen() {
        this.selectedScreen = PERSONAL_HISTORY_3;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.PERSONAL_HISTORY));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_ORAL_CANCER));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_ORAL_CANCER))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_ORAL_CANCER))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_FOR_ORAL_CANCER));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_oral_cancer"))));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_BREAST_CANCER));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_BREAST_CANCER))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_BREAST_CANCER))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_FOR_BREAST_CANCER));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_breast_cancer"))));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DIAGNOSED_FOR_CERVICAL_CANCER));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_CERVICAL_CANCER))));
        if (Boolean.TRUE.equals(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_CERVICAL_CANCER))) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.UNDER_TREATMENT_FOR_CERVICAL_CANCER));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_cervical_cancer"))));
        }
        hideProcessDialog();
    }

    public void setPersonalExaminationScreen() {
        this.selectedScreen = PERSONAL_EXAMINATION;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.PERSONAL_EXAMINATION));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.HEIGHT_IN_CMS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get("height"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.WEIGHT_IN_KGS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get("weight"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.BODY_MASS_INDEX));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(this.selectedMemberCbacDetails.get("bmi"))));
        hideProcessDialog();
    }

    public void setCbacEditDetailsScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.selectedScreen = CBAC_EDIT_DETAILS;
        RadioGroup radioGroup = this.radioGroup;
        if (radioGroup != null) {
            radioGroup.removeAllViews();
            this.radioGroup.clearCheck();
        } else {
            this.radioGroup = new RadioGroup(this);
        }
        this.radioGroup.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.CONFORMATION_TO_EDIT_CBAC_DETAILS)));
        this.radioGroup.addView(MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel("Yes"), RADIO_BUTTON_ID_YES.intValue()));
        this.radioGroup.addView(MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel("No"), RADIO_BUTTON_ID_NO.intValue()));
        this.bodyLayoutContainer.addView(this.radioGroup);
        hideProcessDialog();
    }

    private void setSharedStructureData() {
        Date date;
        showProcessDialog();
        SharedStructureData.relatedPropertyHashTable.clear();
        Object obj = this.selectedMemberCbacDetails.get("memberId");
        if (obj != null) {
            SharedStructureData.relatedPropertyHashTable.put("memberId", obj.toString());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, obj.toString());
        }
        Object obj2 = this.selectedMemberCbacDetails.get("uniqueHealthId");
        if (obj2 != null) {
            SharedStructureData.relatedPropertyHashTable.put("uniqueHealthId", obj2.toString());
        }
        Object obj3 = this.selectedMemberCbacDetails.get("memberName");
        if (obj3 != null) {
            SharedStructureData.relatedPropertyHashTable.put("memberName", obj3.toString());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, obj3.toString());
        }
        if (this.isSelectedMemberFemale) {
            SharedStructureData.relatedPropertyHashTable.put("gender", LabelConstants.FEMALE);
        } else if (this.isSelectedMemberMale) {
            SharedStructureData.relatedPropertyHashTable.put("gender", LabelConstants.MALE);
        }
        setSharedStructureData("mobileNumber", this.selectedMemberCbacDetails.get("mobileNumber"));
        Object obj4 = this.selectedMemberCbacDetails.get("dob");
        if (obj4 != null) {
            try {
                date = new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4, Locale.getDefault()).parse(obj4.toString());
            } catch (ParseException e) {
                Log.e("CbacDetailsActivity", null, e);
                date = null;
            }
            if (date != null) {
                int[] iArrCalculateAgeYearMonthDay = UtilBean.calculateAgeYearMonthDay(date.getTime());
                setSharedStructureData(RelatedPropertyNameConstants.AGE_DISPLAY, UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay[0], iArrCalculateAgeYearMonthDay[1], iArrCalculateAgeYearMonthDay[2]));
            }
        }
        setSharedStructureData(RelatedPropertyNameConstants.FAMILY_ACTUAL_ID, this.selectedMemberCbacDetails.get("fid"));
        setSharedStructureData("address", this.selectedMemberCbacDetails.get("address"));
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ANY_MEMBER_CBAC_DONE, MorbiditiesConstant.ONE_PLUS);
        setSharedStructureData("smokeOrConsumeGutka", this.selectedMemberCbacDetails.get(SMOKE_OR_CONSUME_GUTKA));
        setSharedStructureData("consumeAlcoholDaily", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("consume_alcohol_daily")));
        setSharedStructureData(WAIST, this.selectedMemberCbacDetails.get(WAIST));
        setSharedStructureData("physicalActivity150Min", this.selectedMemberCbacDetails.get("physical_activity_150_min"));
        setSharedStructureData("bpDiabetesHeartHistory", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("bp_diabetes_heart_history")));
        setSharedStructureData("shortnessOfBreathe", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("shortness_of_breath")));
        setSharedStructureData("coughingMoreThan2Weeks", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("two_weeks_coughing")));
        setSharedStructureData("bloodInSputum", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("blood_in_sputum")));
        setSharedStructureData("fever2weeks", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("two_weeks_fever")));
        setSharedStructureData("weightLoss", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("loss_of_weight")));
        setSharedStructureData("nightSweats", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("night_sweats")));
        setSharedStructureData("currentlyTakingAntiTBDrugs", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("taking_anti_tb_drugs")));
        setSharedStructureData("AnyoneInFamilyCurrentTB", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("family_member_suffering_from_tb")));
        setSharedStructureData("historyOfTb", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("history_of_tb")));
        setSharedStructureData("fitsHistory", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("fits_history")));
        setSharedStructureData("difficultyInOpeningMouth", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("mouth_opening_difficulty")));
        setSharedStructureData("ulcerPatchGrowth", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("two_weeks_ulcers_in_mouth")));
        setSharedStructureData("voiceToneChange", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("change_in_tone_of_voice")));
        setSharedStructureData("skinDiscoloration", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("patch_on_skin")));
        setSharedStructureData("difficultyHoldingObjects", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("difficulty_holding_objects")));
        setSharedStructureData("sensationLossPalm", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("sensation_loss_palm")));
        setSharedStructureData("lumpInBreast", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("lump_in_breast")));
        setSharedStructureData("nippleBloodStainedDischarge", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("nipple_blood_stained_discharge")));
        setSharedStructureData("changeInSizeOfBreast", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("change_in_size_of_breast")));
        setSharedStructureData("bleedingBetweenPeriods", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("bleeding_between_periods")));
        setSharedStructureData("bleedingAfterMenopause", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("bleeding_after_menopause")));
        setSharedStructureData("bleedingAfterIntercourse", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("bleeding_after_intercourse")));
        setSharedStructureData("foulVaginalDischarge", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("foul_vaginal_discharge")));
        setSharedStructureData("occupationalExposure", this.selectedMemberCbacDetails.get("occupational_exposure"));
        setSharedStructureData("ageAtMenarche", this.selectedMemberCbacDetails.get("age_at_menarche"));
        setSharedStructureData("menopauseArrived", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("menopause_arrived")));
        setSharedStructureData("durationOfMenopause", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("duration_of_menopause")));
        setSharedStructureData("pregnant", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("pregnant")));
        setSharedStructureData("lactating", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("lactating")));
        setSharedStructureData("regularPeriods", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("regular_periods")));
        setSharedStructureData("bleeding", this.selectedMemberCbacDetails.get("bleeding"));
        setSharedStructureData("associatedWith", this.selectedMemberCbacDetails.get("associated_with"));
        setSharedStructureData("remarks", this.selectedMemberCbacDetails.get("remarks"));
        setSharedStructureData("diagnosedForHypertension", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_HYPERTENSION)));
        setSharedStructureData("underTreatmentForHypertension", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_hypertension")));
        setSharedStructureData("diagnosedForDiabetes", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_DIABETES)));
        setSharedStructureData("underTreatmentForDiabetes", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_diabetes")));
        setSharedStructureData("diagnosedForHeartDisease", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_HEART_DISEASES)));
        setSharedStructureData("underTreatmentForHeartDisease", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_heart_diseases")));
        setSharedStructureData("diagnosedForStroke", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_STROKE)));
        setSharedStructureData("underTreatmentForStroke", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_stroke")));
        setSharedStructureData("diagnosedForKidneyFailure", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_KIDNEY_FAILURE)));
        setSharedStructureData("underTreatmentForKidneyFailure", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_kidney_failure")));
        setSharedStructureData("diagnosedForNonHealingWound", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_NON_HEALING_WOUND)));
        setSharedStructureData("underTreatmentForNonHealingWound", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_non_healing_wound")));
        setSharedStructureData("diagnosedForCopd", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_COPD)));
        setSharedStructureData("underTreatmentForCopd", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_copd")));
        setSharedStructureData("diagnosedForAsthama", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_ASTHAMA)));
        setSharedStructureData("underTreatmentForAsthama", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_asthama")));
        setSharedStructureData("diagnosedForOralCancer", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_ORAL_CANCER)));
        setSharedStructureData("underTreatmentForOralCancer", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_oral_cancer")));
        setSharedStructureData("diagnosedForBreastCancer", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_BREAST_CANCER)));
        setSharedStructureData("underTreatmentForBreastCancer", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_breast_cancer")));
        setSharedStructureData("diagnosedForCervicalCancer", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get(DIAGNOSED_FOR_CERVICAL_CANCER)));
        setSharedStructureData("underTreatmentForCervicalCancer", UtilBean.returnKeyFromBoolean(this.selectedMemberCbacDetails.get("under_treatement_for_cervical_cancer")));
        setSharedStructureData("height", this.selectedMemberCbacDetails.get("height"));
        setSharedStructureData("weight", this.selectedMemberCbacDetails.get("weight"));
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        intent.putExtra("entity", FormConstants.NCD_ASHA_CBAC);
        startActivityForResult(intent, 200);
        hideProcessDialog();
    }

    private void setSharedStructureData(String str, Object obj) {
        if (obj != null) {
            SharedStructureData.relatedPropertyHashTable.put(str, obj.toString());
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.CONFORMATION_TO_CANCEL_VIEWING_CBAC_DETAILS, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CbacDetailsActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    CbacDetailsActivity.this.alertDialog.dismiss();
                    CbacDetailsActivity.this.finish();
                } else {
                    CbacDetailsActivity.this.alertDialog.dismiss();
                }
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 200) {
            setResult(-1);
            finish();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.selectedScreen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        String str2 = this.selectedScreen;
        str2.hashCode();
        switch (str2) {
            case "cbacEditDetails":
                setPersonalExaminationScreen();
                return true;
            case "earlyDetection1":
                setRiskAssessmentScreen();
                return true;
            case "earlyDetection2":
                setEarlyDetection1Screen();
                return true;
            case "earlyDetection3":
                setEarlyDetection2Screen();
                return true;
            case "personalExamination":
                setPersonalHistory3Screen();
                return true;
            case "personalHistory1":
                if (this.isSelectedMemberFemale) {
                    setEarlyDetection3Screen();
                } else {
                    setEarlyDetection2Screen();
                }
                return true;
            case "personalHistory2":
                setPersonalHistory1Screen();
                return true;
            case "personalHistory3":
                setPersonalHistory2Screen();
                return true;
            case "riskAssessment":
                setMemberDetailsScreen();
                return true;
            case "memberDetailsScreen":
                setResult(0);
                finish();
                return true;
            default:
                return true;
        }
    }
}
