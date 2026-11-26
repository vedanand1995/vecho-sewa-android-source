package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.beans.BeneficiaryMorbidityDetails;
import com.argusoft.sewa.android.app.morbidities.beans.IdentifiedMorbidityDetails;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.staticform.DisplayMorbiditiesFormUtil;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DisplayMorbiditiesActivity extends MenuActivity implements View.OnClickListener {
    private String beneficiaryWithRed;
    private LinearLayout bodyLayoutContainer;
    private boolean displayNextScreen;
    private String familyUnderstandMorbidity;
    private LinearLayout globalPanel;
    private boolean isMorbidityFound;
    private MyAlertDialog myDialog;
    private MaterialButton nextButton;
    private String overAllStatus;
    private String overAllStatusForPNC;
    private String morbidityType = MorbiditiesConstant.nextEntity;
    private Context activity = this;
    private int noOfChild = 0;
    private List<BeneficiaryMorbidityDetails> beneficiaryMorbidityDetailsList = MorbiditiesConstant.morbidities;

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        initView();
        if (SharedStructureData.isLogin) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
        intent.setFlags(335544320);
        startActivity(intent);
        finish();
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (MaterialButton) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setViewAsMorbidityScreen();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        setViewAsMorbidityScreen();
        return true;
    }

    private void setTitle(boolean z) {
        MaterialTextView materialTextView = (MaterialTextView) this.globalPanel.findViewById(R.id.toolbar_title);
        if (materialTextView != null) {
            materialTextView.setText(UtilBean.getMyLabel(LabelConstants.DIAGNOSIS));
            materialTextView.setTextAppearance(this.activity, R.style.ToolbarTitle);
        }
        setSubTitle(null);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            if (z) {
                supportActionBar.setHomeAsUpIndicator(R.drawable.ic_menu_back);
                supportActionBar.setDisplayHomeAsUpEnabled(true);
            } else {
                supportActionBar.setDisplayHomeAsUpEnabled(false);
            }
            supportActionBar.setDisplayShowCustomEnabled(false);
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, GlobalTypes.MSG_CANCEL_FORM, this, DynamicUtils.BUTTON_YES_NO);
        this.myDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == -1) {
            this.myDialog.dismiss();
            finish();
        } else if (id == -2) {
            this.myDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadDynamicForm() {
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        intent.putExtra(SewaConstants.ALLOW_SECOND_FORM_SAME_MEMBER_OFFLINE, true);
        if (this.morbidityType.equalsIgnoreCase(FormConstants.ANC_MORBIDITY)) {
            prepareHashTableForANCMorbidity();
            intent.putExtra("entity", FormConstants.ANC_MORBIDITY);
            intent.putExtra(SewaConstants.ALLOW_SECOND_FORM_SAME_MEMBER_OFFLINE, true);
            startActivity(intent);
            finish();
            return;
        }
        if (this.morbidityType.equalsIgnoreCase(FormConstants.CHILD_CARE_MORBIDITY)) {
            prepareHashTableForCCMorbidity();
            intent.putExtra("entity", FormConstants.CHILD_CARE_MORBIDITY);
            intent.putExtra(SewaConstants.ALLOW_SECOND_FORM_SAME_MEMBER_OFFLINE, true);
            startActivity(intent);
            finish();
            return;
        }
        if (this.morbidityType.equalsIgnoreCase(FormConstants.PNC_MORBIDITY)) {
            prepareHashTableForPNCHVMorbidity();
            intent.putExtra("entity", FormConstants.PNC_MORBIDITY);
            intent.putExtra(SewaConstants.ALLOW_SECOND_FORM_SAME_MEMBER_OFFLINE, true);
            startActivity(intent);
            finish();
        }
    }

    private void setViewAsMorbidityScreen() {
        showProcessDialog();
        buildMorbidityScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setViewAsDiagnosticScreen() {
        showProcessDialog();
        buildDiseasesExplanationScreen();
    }

    private void buildMorbidityScreen() {
        String str;
        this.bodyLayoutContainer.removeAllViews();
        setTitle(false);
        this.isMorbidityFound = false;
        List<BeneficiaryMorbidityDetails> list = this.beneficiaryMorbidityDetailsList;
        if (list != null && !list.isEmpty()) {
            Log.i(getClass().getSimpleName(), "We got beneficiary morbidity detail");
            Collections.sort(this.beneficiaryMorbidityDetailsList, DisplayMorbiditiesFormUtil.sortBeneficiaryMorbidityDetailsByBeneficiaryType);
            for (BeneficiaryMorbidityDetails beneficiaryMorbidityDetails : this.beneficiaryMorbidityDetailsList) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this.activity, "Name of beneficiary:"));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.activity, UtilBean.getMyLabel(beneficiaryMorbidityDetails.getBeneficiaryName())));
                int i = 1;
                if (this.beneficiaryMorbidityDetailsList.size() > 1) {
                    if (beneficiaryMorbidityDetails.getBeneficiaryType().equalsIgnoreCase("M")) {
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this.activity, "Mother:"));
                    } else if (beneficiaryMorbidityDetails.getBeneficiaryType().equalsIgnoreCase("C")) {
                        this.noOfChild++;
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this.activity, "Child:"));
                    }
                }
                this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this.activity, "Overall status:"));
                List<IdentifiedMorbidityDetails> identifiedMorbidities = beneficiaryMorbidityDetails.getIdentifiedMorbidities();
                if (identifiedMorbidities != null) {
                    Collections.sort(identifiedMorbidities, DisplayMorbiditiesFormUtil.sortIdentifiedMorbiditiesByRiskFactor);
                    String myLabel = UtilBean.getMyLabel(LabelConstants.NO_MORBIDITY_FOUND);
                    this.overAllStatus = "NMF";
                    if (!identifiedMorbidities.isEmpty()) {
                        if (identifiedMorbidities.get(0).getRiskFactorOfIdentifiedMorbidities().equalsIgnoreCase(MorbiditiesConstant.RED_COLOR)) {
                            this.overAllStatus = MorbiditiesConstant.RED_COLOR;
                            this.displayNextScreen = true;
                            myLabel = "Red";
                        } else if (identifiedMorbidities.get(0).getRiskFactorOfIdentifiedMorbidities().equalsIgnoreCase(MorbiditiesConstant.YELLOW_COLOR)) {
                            this.overAllStatus = MorbiditiesConstant.YELLOW_COLOR;
                            myLabel = "Yellow";
                        } else if (identifiedMorbidities.get(0).getRiskFactorOfIdentifiedMorbidities().equalsIgnoreCase(MorbiditiesConstant.GREEN_COLOR)) {
                            this.overAllStatus = MorbiditiesConstant.GREEN_COLOR;
                            myLabel = "Green";
                        }
                    }
                    MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.activity, myLabel);
                    SewaUtil.setColor(materialTextViewGenerateAnswerView, myLabel);
                    this.bodyLayoutContainer.addView(materialTextViewGenerateAnswerView);
                    if (this.overAllStatusForPNC == null || DisplayMorbiditiesFormUtil.riskValueOf(this.overAllStatus) < DisplayMorbiditiesFormUtil.riskValueOf(this.overAllStatusForPNC)) {
                        this.overAllStatusForPNC = this.overAllStatus;
                    }
                    if (!identifiedMorbidities.isEmpty()) {
                        this.isMorbidityFound = true;
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this.activity, LabelConstants.EXHIBITS_SIGN_OF));
                        int i2 = 1;
                        for (IdentifiedMorbidityDetails identifiedMorbidityDetails : identifiedMorbidities) {
                            StringBuilder sb = new StringBuilder(String.valueOf(i2));
                            sb.append(". ");
                            String[] strArrSplit = UtilBean.split(identifiedMorbidityDetails.getMorbidityCode(), GlobalTypes.KEY_VALUE_SEPARATOR);
                            if (strArrSplit.length > 0 && (str = strArrSplit[0]) != null) {
                                identifiedMorbidityDetails.setMorbidityCode(str);
                            }
                            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getMorbidityCodeAsKEYandMorbidityNameAsVALUE(identifiedMorbidityDetails.getMorbidityCode())));
                            MaterialTextView materialTextViewGenerateAnswerView2 = MyStaticComponents.generateAnswerView(this.activity, sb.toString());
                            SewaUtil.setColor(materialTextViewGenerateAnswerView2, identifiedMorbidityDetails.getRiskFactorOfIdentifiedMorbidities());
                            this.bodyLayoutContainer.addView(materialTextViewGenerateAnswerView2);
                            i2++;
                        }
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this.activity, LabelConstants.MAIN_SYMPTOMS));
                        StringBuilder sb2 = new StringBuilder();
                        ArrayList arrayList = new ArrayList();
                        Iterator<IdentifiedMorbidityDetails> it = identifiedMorbidities.iterator();
                        while (it.hasNext()) {
                            for (String str2 : it.next().getIdentifiedSymptoms()) {
                                if (!arrayList.contains(str2)) {
                                    arrayList.add(str2);
                                    sb2.append(i);
                                    sb2.append(". ");
                                    sb2.append(UtilBean.getMyLabel(str2));
                                    sb2.append(LabelConstants.NEW_LINE);
                                    i++;
                                }
                            }
                        }
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.activity, sb2.toString()));
                    }
                }
            }
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.DisplayMorbiditiesActivity.1
                /* JADX WARN: Type inference failed for: r1v8, types: [com.argusoft.sewa.android.app.activity.DisplayMorbiditiesActivity$1$1] */
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (DisplayMorbiditiesActivity.this.isMorbidityFound) {
                        if (DisplayMorbiditiesActivity.this.displayNextScreen) {
                            DisplayMorbiditiesActivity.this.setViewAsDiagnosticScreen();
                            return;
                        }
                        SewaUtil.familyUnderstandInMorbidity = DisplayMorbiditiesActivity.this.familyUnderstandMorbidity;
                        DisplayMorbiditiesActivity.this.showProcessDialog();
                        new Thread() { // from class: com.argusoft.sewa.android.app.activity.DisplayMorbiditiesActivity.1.1
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                DisplayMorbiditiesActivity.this.loadDynamicForm();
                                DisplayMorbiditiesActivity.this.hideProcessDialog();
                            }
                        }.start();
                        return;
                    }
                    DisplayMorbiditiesActivity.this.finish();
                }
            });
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this.activity, LabelConstants.NO_MORBIDITY_FOUND));
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.DisplayMorbiditiesActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    DisplayMorbiditiesActivity.this.finish();
                }
            });
        }
        hideProcessDialog();
    }

    private void buildDiseasesExplanationScreen() {
        this.bodyLayoutContainer.removeAllViews();
        setTitle(true);
        for (BeneficiaryMorbidityDetails beneficiaryMorbidityDetails : this.beneficiaryMorbidityDetailsList) {
            List<IdentifiedMorbidityDetails> identifiedMorbidities = beneficiaryMorbidityDetails.getIdentifiedMorbidities();
            if (identifiedMorbidities != null) {
                Collections.sort(identifiedMorbidities, DisplayMorbiditiesFormUtil.sortIdentifiedMorbiditiesByRiskFactor);
                if (!identifiedMorbidities.isEmpty()) {
                    if (identifiedMorbidities.get(0).getRiskFactorOfIdentifiedMorbidities().equalsIgnoreCase(MorbiditiesConstant.RED_COLOR)) {
                        if (beneficiaryMorbidityDetails.getBeneficiaryType().equalsIgnoreCase("M")) {
                            this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this.activity, UtilBean.getMyLabel(LabelConstants.EXPLAIN_THE_FAMILY_THAT_MOTHER_IS_AT_HIGH_RISK_DUE_TO)));
                        } else if (beneficiaryMorbidityDetails.getBeneficiaryType().equalsIgnoreCase("C")) {
                            this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this.activity, UtilBean.getMyLabel(LabelConstants.EXPLAIN_THE_FAMILY_THAT_CHILD_IS_AT_HIGH_RISK_DUE_TO)));
                        }
                    }
                    for (IdentifiedMorbidityDetails identifiedMorbidityDetails : identifiedMorbidities) {
                        if (identifiedMorbidityDetails.getRiskFactorOfIdentifiedMorbidities().equalsIgnoreCase(MorbiditiesConstant.RED_COLOR)) {
                            String str = this.beneficiaryWithRed;
                            if (str == null) {
                                if (beneficiaryMorbidityDetails.getBeneficiaryType().equalsIgnoreCase("M")) {
                                    this.beneficiaryWithRed = "MR";
                                } else {
                                    this.beneficiaryWithRed = MorbiditiesConstant.ONLY_CHILD_RED;
                                }
                            } else if (str.equalsIgnoreCase("MR") && beneficiaryMorbidityDetails.getBeneficiaryType().equalsIgnoreCase("C")) {
                                this.beneficiaryWithRed = "MCR";
                            }
                            MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.activity, MorbiditiesConstant.getMorbidityCodeAsKEYandMorbidityNameAsVALUE(identifiedMorbidityDetails.getMorbidityCode()));
                            SewaUtil.setColor(materialTextViewGenerateAnswerView, MorbiditiesConstant.RED_COLOR);
                            this.bodyLayoutContainer.addView(materialTextViewGenerateAnswerView);
                        }
                    }
                }
            }
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.activity, LabelConstants.DOES_MOTHER_OR_FAMILY_UNDERSTAND));
        RadioGroup radioGroup = new RadioGroup(this.activity);
        radioGroup.setOrientation(1);
        RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-1, -2, 1.0f);
        radioGroup.addView(MyStaticComponents.getRadioButton(this.activity, UtilBean.getMyLabel("Yes"), 1), layoutParams);
        radioGroup.addView(MyStaticComponents.getRadioButton(this.activity, UtilBean.getMyLabel("No"), 2), layoutParams);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.DisplayMorbiditiesActivity.3
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i) {
                if (i == 1) {
                    DisplayMorbiditiesActivity.this.familyUnderstandMorbidity = "T";
                } else {
                    DisplayMorbiditiesActivity.this.familyUnderstandMorbidity = "F";
                }
            }
        });
        this.bodyLayoutContainer.addView(radioGroup);
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.DisplayMorbiditiesActivity.4
            /* JADX WARN: Type inference failed for: r2v9, types: [com.argusoft.sewa.android.app.activity.DisplayMorbiditiesActivity$4$1] */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
                    if (DisplayMorbiditiesActivity.this.familyUnderstandMorbidity != null) {
                        SewaUtil.familyUnderstandInMorbidity = DisplayMorbiditiesActivity.this.familyUnderstandMorbidity;
                        DisplayMorbiditiesActivity.this.showProcessDialog();
                        new Thread() { // from class: com.argusoft.sewa.android.app.activity.DisplayMorbiditiesActivity.4.1
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                DisplayMorbiditiesActivity.this.loadDynamicForm();
                                DisplayMorbiditiesActivity.this.hideProcessDialog();
                            }
                        }.start();
                        return;
                    }
                    SewaUtil.generateToast(DisplayMorbiditiesActivity.this.activity, LabelConstants.DOES_MOTHER_OR_FAMILY_UNDERSTAND);
                }
            }
        });
        hideProcessDialog();
    }

    private void prepareHashTableForANCMorbidity() {
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.OVERALL_STATUS, this.overAllStatus);
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CALL_HOSPITAL, "108");
        Iterator<BeneficiaryMorbidityDetails> it = this.beneficiaryMorbidityDetailsList.iterator();
        while (it.hasNext()) {
            List<IdentifiedMorbidityDetails> identifiedMorbidities = it.next().getIdentifiedMorbidities();
            if (identifiedMorbidities != null) {
                Collections.sort(identifiedMorbidities, DisplayMorbiditiesFormUtil.sortIdentifiedMorbiditiesByRiskFactor);
                int i = 0;
                int i2 = 0;
                for (IdentifiedMorbidityDetails identifiedMorbidityDetails : identifiedMorbidities) {
                    String morbidityCode = identifiedMorbidityDetails.getMorbidityCode();
                    if (i2 == 0) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DISEASE_NAME, morbidityCode);
                    } else {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DISEASE_NAME + i2, morbidityCode);
                    }
                    if (identifiedMorbidityDetails.getRiskFactorOfIdentifiedMorbidities().equalsIgnoreCase(MorbiditiesConstant.RED_COLOR)) {
                        i++;
                    }
                    i2++;
                }
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.REMAINING_DISEASE, String.valueOf(identifiedMorbidities.size()));
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.REMAINING_RED_DISEASE, String.valueOf(i));
            }
        }
    }

    private void prepareHashTableForCCMorbidity() {
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.OVERALL_STATUS, this.overAllStatus);
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CALL_HOSPITAL, "108");
        Iterator<BeneficiaryMorbidityDetails> it = this.beneficiaryMorbidityDetailsList.iterator();
        while (it.hasNext()) {
            List<IdentifiedMorbidityDetails> identifiedMorbidities = it.next().getIdentifiedMorbidities();
            if (identifiedMorbidities != null) {
                Collections.sort(identifiedMorbidities, DisplayMorbiditiesFormUtil.sortIdentifiedMorbiditiesByRiskFactor);
                int iIntValue = 0;
                int i = 0;
                int i2 = 0;
                for (IdentifiedMorbidityDetails identifiedMorbidityDetails : identifiedMorbidities) {
                    String morbidityCode = identifiedMorbidityDetails.getMorbidityCode();
                    if (i2 == 0) {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DISEASE_NAME, morbidityCode);
                    } else {
                        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DISEASE_NAME + i2, morbidityCode);
                    }
                    if (identifiedMorbidityDetails.getRiskFactorOfIdentifiedMorbidities().equalsIgnoreCase(MorbiditiesConstant.RED_COLOR)) {
                        i++;
                    }
                    i2++;
                }
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.REMAINING_DISEASE, String.valueOf(identifiedMorbidities.size()));
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.REMAINING_RED_DISEASE, String.valueOf(i));
                String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.AGE);
                Integer numValueOf = str != null ? Integer.valueOf(Integer.parseInt(str)) : null;
                String str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.AGE_FROM_ECR);
                String str3 = SharedStructureData.relatedPropertyHashTable.get("dob");
                if (str2 != null) {
                    SharedStructureData.relatedPropertyHashTable.put("childCurrentAge", str2);
                } else if (str3 != null) {
                    int[] iArrCalculateAgeYearMonthDay = UtilBean.calculateAgeYearMonthDay(Long.parseLong(str3));
                    str2 = iArrCalculateAgeYearMonthDay[0] + GlobalTypes.KEY_VALUE_SEPARATOR + iArrCalculateAgeYearMonthDay[1] + GlobalTypes.KEY_VALUE_SEPARATOR + iArrCalculateAgeYearMonthDay[2];
                    SharedStructureData.relatedPropertyHashTable.put("childCurrentAge", str2);
                }
                if (str2 != null) {
                    String[] strArrSplit = UtilBean.split(str2, GlobalTypes.KEY_VALUE_SEPARATOR);
                    if (strArrSplit.length > 1) {
                        iIntValue = (Integer.parseInt(strArrSplit[0]) * 12) + Integer.parseInt(strArrSplit[1]);
                    }
                }
                if (numValueOf != null) {
                    iIntValue = numValueOf.intValue();
                }
                String ironFolicAcidTablet = UtilBean.getIronFolicAcidTablet(iIntValue);
                if (ironFolicAcidTablet != null) {
                    SharedStructureData.relatedPropertyHashTable.put("ironFolicAcidTabletDosage", ironFolicAcidTablet);
                }
                SharedStructureData.relatedPropertyHashTable.put("chloroquineDosage", UtilBean.getChloroquineTabletDosage(iIntValue));
                String pCMTabletDosage = UtilBean.getPCMTabletDosage(iIntValue);
                if (pCMTabletDosage != null) {
                    SharedStructureData.relatedPropertyHashTable.put("pcmDosage", pCMTabletDosage);
                }
                String vitaminADosage = UtilBean.getVitaminADosage(iIntValue);
                if (vitaminADosage != null) {
                    SharedStructureData.relatedPropertyHashTable.put("vitaminADosage", vitaminADosage);
                }
                String dosageForDiarrhoeaWithoutDehydration = UtilBean.getDosageForDiarrhoeaWithoutDehydration(iIntValue);
                if (dosageForDiarrhoeaWithoutDehydration != null) {
                    SharedStructureData.relatedPropertyHashTable.put("orsnoDosage", dosageForDiarrhoeaWithoutDehydration);
                }
                String dosageForDiarrhoeaWithDehydration = UtilBean.getDosageForDiarrhoeaWithDehydration(iIntValue);
                if (dosageForDiarrhoeaWithDehydration != null) {
                    SharedStructureData.relatedPropertyHashTable.put("orssomeDosage", dosageForDiarrhoeaWithDehydration);
                }
            }
        }
    }

    private void prepareHashTableForPNCHVMorbidity() {
        if (this.overAllStatusForPNC != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.OVERALL_STATUS, this.overAllStatusForPNC);
        }
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CALL_HOSPITAL, "108");
        ArrayList<IdentifiedMorbidityDetails> arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        for (BeneficiaryMorbidityDetails beneficiaryMorbidityDetails : this.beneficiaryMorbidityDetailsList) {
            if (beneficiaryMorbidityDetails != null && beneficiaryMorbidityDetails.getIdentifiedMorbidities() != null && !beneficiaryMorbidityDetails.getIdentifiedMorbidities().isEmpty()) {
                List<IdentifiedMorbidityDetails> identifiedMorbidities = beneficiaryMorbidityDetails.getIdentifiedMorbidities();
                if (beneficiaryMorbidityDetails.getBeneficiaryType().equalsIgnoreCase("C") && this.noOfChild > 1) {
                    i2++;
                    for (IdentifiedMorbidityDetails identifiedMorbidityDetails : identifiedMorbidities) {
                        identifiedMorbidityDetails.setMorbidityCode(identifiedMorbidityDetails.getMorbidityCode() + GlobalTypes.KEY_VALUE_SEPARATOR + i2);
                        arrayList.add(identifiedMorbidityDetails);
                    }
                } else {
                    arrayList.addAll(identifiedMorbidities);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Collections.sort(arrayList, new Comparator<IdentifiedMorbidityDetails>() { // from class: com.argusoft.sewa.android.app.activity.DisplayMorbiditiesActivity.5
            @Override // java.util.Comparator
            public int compare(IdentifiedMorbidityDetails identifiedMorbidityDetails2, IdentifiedMorbidityDetails identifiedMorbidityDetails3) {
                return identifiedMorbidityDetails2.getMorbidityCode().compareToIgnoreCase(identifiedMorbidityDetails3.getMorbidityCode()) * (-1);
            }
        });
        Collections.sort(arrayList, DisplayMorbiditiesFormUtil.sortIdentifiedMorbiditiesByRiskFactor);
        int i3 = 0;
        for (IdentifiedMorbidityDetails identifiedMorbidityDetails2 : arrayList) {
            if (identifiedMorbidityDetails2.getRiskFactorOfIdentifiedMorbidities().equalsIgnoreCase(MorbiditiesConstant.RED_COLOR)) {
                i++;
            }
            String morbidityCode = identifiedMorbidityDetails2.getMorbidityCode();
            if (i3 == 0) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DISEASE_NAME, morbidityCode);
            } else {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DISEASE_NAME + i3, morbidityCode);
            }
            i3++;
        }
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.REMAINING_DISEASE, String.valueOf(arrayList.size()));
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.REMAINING_RED_DISEASE, String.valueOf(i));
        if (this.beneficiaryWithRed != null) {
            SharedStructureData.relatedPropertyHashTable.put("beneficiaryWithRed", this.beneficiaryWithRed);
        }
    }
}
