package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RIInventoryConstants;
import com.argusoft.sewa.android.app.core.impl.CampaignSessionServiceImpl;
import com.argusoft.sewa.android.app.core.impl.HealthInfrastructureServiceImpl;
import com.argusoft.sewa.android.app.core.impl.RoutineImmunisationServiceImpl;
import com.argusoft.sewa.android.app.model.CampaignMasterBean;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class RIInventoryReturnActivity extends MenuActivity implements View.OnClickListener {
    private CampaignMasterBean campaignMasterBean;
    CampaignSessionServiceImpl campaignSessionService;
    HealthInfrastructureServiceImpl healthInfrastructureService;
    private Map<String, LinearLayout> immReturnMap;
    private RISessionInventoryBean inventoryBean;
    private boolean isOnline;
    RoutineImmunisationServiceImpl routineImmunisationService;
    private CampaignSessionBean session;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent().hasExtra("SESSION_ID")) {
            String stringExtra = getIntent().getStringExtra("SESSION_ID");
            this.isOnline = getIntent().getBooleanExtra("isOnline", false);
            this.inventoryBean = this.campaignSessionService.getRiInventoryByCampaignSessionId(stringExtra);
            this.session = (CampaignSessionBean) getIntent().getSerializableExtra("currentSession");
            this.campaignMasterBean = (CampaignMasterBean) getIntent().getSerializableExtra("currentCampaignMaster");
            if (this.inventoryBean == null) {
                finish();
                return;
            } else {
                initView();
                return;
            }
        }
        finish();
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        LinearLayout linearLayout = (LinearLayout) linearLayoutGenerateDynamicScreenTemplate.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        ((Button) linearLayoutGenerateDynamicScreenTemplate.findViewById(DynamicUtils.ID_NEXT_BUTTON)).setText(UtilBean.getMyLabel(GlobalTypes.EVENT_SUBMIT));
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setTitle(UtilBean.getTitleText(LabelConstants.TALLY_SHEET_TITLE));
        linearLayout.removeAllViews();
        linearLayout.addView(addRiTallySheetDetails());
    }

    public LinearLayout addRiTallySheetDetails() {
        this.immReturnMap = new LinkedHashMap();
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(this.context, -1, 0, new LinearLayout.LayoutParams(-2, 70));
        ImageView imageView = MyStaticComponents.getImageView(this.context, -1, R.drawable.ic_info, null);
        imageView.setColorFilter(R.color.labelTextColor);
        imageView.setPadding(0, 0, 8, 0);
        TextView textView = new TextView(this.context);
        textView.setText(R.string.click_to_see_available_vaccine_details);
        textView.setPadding(0, 0, 0, 0);
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RIInventoryReturnActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m479x53491f0d(view);
            }
        });
        linearLayout2.addView(imageView);
        linearLayout2.addView(textView);
        linearLayout.addView(linearLayout2);
        linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, "Select the vials returned for each vaccine"));
        addImmunisationRows(linearLayout);
        return linearLayout;
    }

    /* renamed from: lambda$addRiTallySheetDetails$0$com-argusoft-sewa-android-app-activity-RIInventoryReturnActivity, reason: not valid java name */
    /* synthetic */ void m479x53491f0d(View view) {
        Intent intent = new Intent(this.context, (Class<?>) RiInventoryDetailsActivity_.class);
        intent.putExtra("SESSION_ID", this.session.getSessionId());
        startActivity(intent);
    }

    private void addImmunisationRows(LinearLayout linearLayout) {
        if (this.inventoryBean == null) {
            return;
        }
        linearLayout.addView(getInventoryVialLayout("BCG"));
        linearLayout.addView(getInventoryVialLayout("MR"));
        linearLayout.addView(getInventoryVialLayout(RIInventoryConstants.DPT));
        linearLayout.addView(getInventoryVialLayout(RIInventoryConstants.TD));
        linearLayout.addView(getInventoryVialLayout(RIInventoryConstants.PENTAVALENT));
        linearLayout.addView(getInventoryVialLayout(RIInventoryConstants.FIPV));
        linearLayout.addView(getInventoryVialLayout(RIInventoryConstants.PCV));
        linearLayout.addView(getInventoryVialLayout(RIInventoryConstants.OPV));
        linearLayout.addView(getInventoryVialLayout(RIInventoryConstants.ROTA_VIRUS));
        linearLayout.addView(getInventoryVialLayout(RIInventoryConstants.HEP_B));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private LinearLayout getInventoryVialLayout(String str) {
        LinearLayout linearLayout;
        TextView textView;
        RadioGroup radioGroup;
        RadioGroup radioGroup2;
        RadioGroup radioGroup3;
        linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.ri_inventory_immunisation_return_layout, (ViewGroup) null);
        this.immReturnMap.put(str, linearLayout);
        ((TextView) linearLayout.findViewById(R.id.vaccineName)).setText(UtilBean.getMyLabel(RIInventoryConstants.getFullFormOfInventoryVaccines(str)));
        ((TextView) linearLayout.findViewById(R.id.newVialsText)).setText(UtilBean.getMyLabel("New Vials"));
        textView = (TextView) linearLayout.findViewById(R.id.openVialsText);
        textView.setText(UtilBean.getMyLabel("Open Vials"));
        radioGroup = (RadioGroup) linearLayout.findViewById(R.id.newVials);
        radioGroup2 = (RadioGroup) linearLayout.findViewById(R.id.openVials);
        radioGroup3 = (RadioGroup) linearLayout.findViewById(R.id.emptyVials);
        str.hashCode();
        switch (str) {
            case "PENTAVALENT":
                hideVialRadioButton(this.inventoryBean.getPentaNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getPentaNew().intValue() + this.inventoryBean.getPentaOpen().intValue(), radioGroup2);
                hideVialRadioButton(this.inventoryBean.getPentaNew().intValue() + this.inventoryBean.getPentaOpen().intValue(), radioGroup3);
                return linearLayout;
            case "JE":
                hideVialRadioButton(this.inventoryBean.getJeNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getJeNew().intValue() + this.inventoryBean.getJeOpen().intValue(), radioGroup2);
                hideVialRadioButton(this.inventoryBean.getJeNew().intValue() + this.inventoryBean.getJeOpen().intValue(), radioGroup3);
                return linearLayout;
            case "MR":
                textView.setText(UtilBean.getMyLabel("Not usable/Empty Vials"));
                hideVialRadioButton(this.inventoryBean.getMrNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getMrNew().intValue(), radioGroup2);
                linearLayout.findViewById(R.id.emptyVialsLayout).setVisibility(8);
                return linearLayout;
            case "TD":
                hideVialRadioButton(this.inventoryBean.getTdNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getTdNew().intValue() + this.inventoryBean.getTdOpen().intValue(), radioGroup2);
                hideVialRadioButton(this.inventoryBean.getTdNew().intValue() + this.inventoryBean.getTdOpen().intValue(), radioGroup3);
                return linearLayout;
            case "BCG":
                textView.setText(UtilBean.getMyLabel("Not usable/Empty Vials"));
                hideVialRadioButton(this.inventoryBean.getBcgNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getBcgNew().intValue(), radioGroup2);
                linearLayout.findViewById(R.id.emptyVialsLayout).setVisibility(8);
                return linearLayout;
            case "DPT":
                hideVialRadioButton(this.inventoryBean.getDptNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getDptNew().intValue() + this.inventoryBean.getDptOpen().intValue(), radioGroup2);
                hideVialRadioButton(this.inventoryBean.getDptNew().intValue() + this.inventoryBean.getDptOpen().intValue(), radioGroup3);
                return linearLayout;
            case "OPV":
                hideVialRadioButton(this.inventoryBean.getOpvNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getOpvNew().intValue() + this.inventoryBean.getOpvOpen().intValue(), radioGroup2);
                hideVialRadioButton(this.inventoryBean.getOpvNew().intValue() + this.inventoryBean.getOpvOpen().intValue(), radioGroup3);
                return linearLayout;
            case "PCV":
                hideVialRadioButton(this.inventoryBean.getPcvNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getPcvNew().intValue() + this.inventoryBean.getPcvOpen().intValue(), radioGroup2);
                hideVialRadioButton(this.inventoryBean.getPcvNew().intValue() + this.inventoryBean.getPcvOpen().intValue(), radioGroup3);
                return linearLayout;
            case "FIPV":
                hideVialRadioButton(this.inventoryBean.getFipvNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getFipvNew().intValue() + this.inventoryBean.getFipvOpen().intValue(), radioGroup2);
                hideVialRadioButton(this.inventoryBean.getFipvNew().intValue() + this.inventoryBean.getFipvOpen().intValue(), radioGroup3);
                return linearLayout;
            case "HEP_B":
                hideVialRadioButton(this.inventoryBean.getHepNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getHepNew().intValue() + this.inventoryBean.getHepOpen().intValue(), radioGroup2);
                hideVialRadioButton(this.inventoryBean.getHepNew().intValue() + this.inventoryBean.getHepOpen().intValue(), radioGroup3);
                return linearLayout;
            case "ROTA_VIRUS":
                hideVialRadioButton(this.inventoryBean.getRotaNew().intValue(), radioGroup);
                hideVialRadioButton(this.inventoryBean.getRotaNew().intValue() + this.inventoryBean.getRotaOpen().intValue(), radioGroup2);
                hideVialRadioButton(this.inventoryBean.getRotaNew().intValue() + this.inventoryBean.getRotaOpen().intValue(), radioGroup3);
                return linearLayout;
            default:
                return linearLayout;
        }
    }

    private void hideVialRadioButton(int i, RadioGroup radioGroup) {
        if (i < 10) {
            radioGroup.getChildAt(10).setVisibility(8);
        }
        if (i < 9) {
            radioGroup.getChildAt(9).setVisibility(8);
        }
        if (i < 8) {
            radioGroup.getChildAt(8).setVisibility(8);
        }
        if (i < 7) {
            radioGroup.getChildAt(7).setVisibility(8);
        }
        if (i < 6) {
            radioGroup.getChildAt(6).setVisibility(8);
        }
        if (i < 5) {
            radioGroup.getChildAt(5).setVisibility(8);
        }
        if (i < 4) {
            radioGroup.getChildAt(4).setVisibility(8);
        }
        if (i < 3) {
            radioGroup.getChildAt(3).setVisibility(8);
        }
        if (i < 2) {
            radioGroup.getChildAt(2).setVisibility(8);
        }
        if (i < 1) {
            radioGroup.getChildAt(1).setVisibility(8);
            radioGroup.check(radioGroup.getChildAt(0).getId());
        }
    }

    private void validateAndStoreReturnedImmunisations() throws NumberFormatException {
        for (Map.Entry<String, LinearLayout> entry : this.immReturnMap.entrySet()) {
            RadioGroup radioGroup = (RadioGroup) entry.getValue().findViewById(R.id.newVials);
            RadioGroup radioGroup2 = (RadioGroup) entry.getValue().findViewById(R.id.openVials);
            RadioGroup radioGroup3 = (RadioGroup) entry.getValue().findViewById(R.id.emptyVials);
            if (radioGroup.getCheckedRadioButtonId() == -1) {
                SewaUtil.generateToast(this.context, "Please select " + entry.getKey() + " new vial return value");
                return;
            }
            if (radioGroup2.getCheckedRadioButtonId() == -1) {
                if (entry.getKey().equalsIgnoreCase("BCG") || entry.getKey().equalsIgnoreCase("MR")) {
                    SewaUtil.generateToast(this.context, "Please select " + entry.getKey() + " Not usable/Empty Vial return value");
                    return;
                }
                SewaUtil.generateToast(this.context, "Please select " + entry.getKey() + " open vial return value");
                return;
            }
            if (!entry.getKey().equalsIgnoreCase("BCG") && !entry.getKey().equalsIgnoreCase("MR") && radioGroup3.getCheckedRadioButtonId() == -1) {
                SewaUtil.generateToast(this.context, "Please select " + entry.getKey() + " empty vial return value");
                return;
            }
            String key = entry.getKey();
            key.hashCode();
            switch (key) {
                case "PENTAVALENT":
                    int i = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i2 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    int i3 = Integer.parseInt(((RadioButton) radioGroup3.findViewById(radioGroup3.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i > this.inventoryBean.getPentaNew().intValue()) {
                        SewaUtil.generateToast(this.context, "Pentavalent new vial return value is not valid");
                        return;
                    }
                    int i4 = i + i2;
                    if (i4 > this.inventoryBean.getPentaOpen().intValue() + this.inventoryBean.getPentaNew().intValue()) {
                        SewaUtil.generateToast(this.context, "Pentavalent open vial return value is not valid");
                        return;
                    } else {
                        if (i4 + i3 != this.inventoryBean.getPentaOpen().intValue() + this.inventoryBean.getPentaNew().intValue()) {
                            SewaUtil.generateToast(this.context, "Pentavalent empty vial return value is not valid");
                            return;
                        }
                        this.inventoryBean.setPentaNewRet(Integer.valueOf(i));
                        this.inventoryBean.setPentaOpenRet(Integer.valueOf(i2));
                        this.inventoryBean.setPentaEmptyRet(Integer.valueOf(i3));
                        break;
                    }
                case "JE":
                    int i5 = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i6 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    int i7 = Integer.parseInt(((RadioButton) radioGroup3.findViewById(radioGroup3.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i5 > this.inventoryBean.getJeNew().intValue()) {
                        SewaUtil.generateToast(this.context, "JE new vial return value is not valid");
                        return;
                    }
                    int i8 = i5 + i6;
                    if (i8 > this.inventoryBean.getJeOpen().intValue() + this.inventoryBean.getJeNew().intValue()) {
                        SewaUtil.generateToast(this.context, "JE open vial return value is not valid");
                        return;
                    } else {
                        if (i8 + i7 != this.inventoryBean.getJeOpen().intValue() + this.inventoryBean.getJeNew().intValue()) {
                            SewaUtil.generateToast(this.context, "JE empty vial return value is not valid");
                            return;
                        }
                        this.inventoryBean.setJeNewRet(Integer.valueOf(i5));
                        this.inventoryBean.setJeOpenRet(Integer.valueOf(i6));
                        this.inventoryBean.setJeEmptyRet(Integer.valueOf(i7));
                        break;
                    }
                case "MR":
                    int i9 = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i10 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i9 > this.inventoryBean.getMrNew().intValue()) {
                        SewaUtil.generateToast(this.context, "MR vial return value is not valid");
                        return;
                    } else if (i9 + i10 != this.inventoryBean.getMrNew().intValue()) {
                        SewaUtil.generateToast(this.context, "MR Not usable/Empty vial return value is not valid");
                        return;
                    } else {
                        this.inventoryBean.setMrNewRet(Integer.valueOf(i9));
                        this.inventoryBean.setMrOpenRet(Integer.valueOf(i10));
                        break;
                    }
                case "TD":
                    int i11 = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i12 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    int i13 = Integer.parseInt(((RadioButton) radioGroup3.findViewById(radioGroup3.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i11 > this.inventoryBean.getTdNew().intValue()) {
                        SewaUtil.generateToast(this.context, "TD new vial return value is not valid");
                        return;
                    }
                    int i14 = i11 + i12;
                    if (i14 > this.inventoryBean.getTdOpen().intValue() + this.inventoryBean.getTdNew().intValue()) {
                        SewaUtil.generateToast(this.context, "TD open vial return value is not valid");
                        return;
                    } else {
                        if (i14 + i13 != this.inventoryBean.getTdOpen().intValue() + this.inventoryBean.getTdNew().intValue()) {
                            SewaUtil.generateToast(this.context, "TD empty vial return value is not valid");
                            return;
                        }
                        this.inventoryBean.setTdNewRet(Integer.valueOf(i11));
                        this.inventoryBean.setTdOpenRet(Integer.valueOf(i12));
                        this.inventoryBean.setTdEmptyRet(Integer.valueOf(i13));
                        break;
                    }
                case "BCG":
                    int i15 = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i16 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i15 > this.inventoryBean.getBcgNew().intValue()) {
                        SewaUtil.generateToast(this.context, "BCG vial return value is not valid");
                        return;
                    } else if (i15 + i16 != this.inventoryBean.getBcgNew().intValue()) {
                        SewaUtil.generateToast(this.context, "BCG Not usable/Empty Vials return value is not valid");
                        return;
                    } else {
                        this.inventoryBean.setBcgNewRet(Integer.valueOf(i15));
                        this.inventoryBean.setBcgOpenRet(Integer.valueOf(i16));
                        break;
                    }
                case "DPT":
                    int i17 = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i18 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    int i19 = Integer.parseInt(((RadioButton) radioGroup3.findViewById(radioGroup3.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i17 > this.inventoryBean.getDptNew().intValue()) {
                        SewaUtil.generateToast(this.context, "DPT new vial return value is not valid");
                        return;
                    }
                    int i20 = i17 + i18;
                    if (i20 > this.inventoryBean.getDptNew().intValue() + this.inventoryBean.getDptOpen().intValue()) {
                        SewaUtil.generateToast(this.context, "DPT open vial return value is not valid");
                        return;
                    } else {
                        if (i20 + i19 != this.inventoryBean.getDptNew().intValue() + this.inventoryBean.getDptOpen().intValue()) {
                            SewaUtil.generateToast(this.context, "DPT empty vial return value is not valid");
                            return;
                        }
                        this.inventoryBean.setDptNewRet(Integer.valueOf(i17));
                        this.inventoryBean.setDptOpenRet(Integer.valueOf(i18));
                        this.inventoryBean.setDptEmptyRet(Integer.valueOf(i19));
                        break;
                    }
                case "OPV":
                    int i21 = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i22 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    int i23 = Integer.parseInt(((RadioButton) radioGroup3.findViewById(radioGroup3.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i21 > this.inventoryBean.getOpvNew().intValue()) {
                        SewaUtil.generateToast(this.context, "OPV new vial return value is not valid");
                        return;
                    }
                    int i24 = i21 + i22;
                    if (i24 > this.inventoryBean.getOpvOpen().intValue() + this.inventoryBean.getOpvNew().intValue()) {
                        SewaUtil.generateToast(this.context, "OPV open vial return value is not valid");
                        return;
                    } else {
                        if (i24 + i23 != this.inventoryBean.getOpvOpen().intValue() + this.inventoryBean.getOpvNew().intValue()) {
                            SewaUtil.generateToast(this.context, "OPV empty vial return value is not valid");
                            return;
                        }
                        this.inventoryBean.setOpvNewRet(Integer.valueOf(i21));
                        this.inventoryBean.setOpvOpenRet(Integer.valueOf(i22));
                        this.inventoryBean.setOpvEmptyRet(Integer.valueOf(i23));
                        break;
                    }
                case "PCV":
                    int i25 = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i26 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    int i27 = Integer.parseInt(((RadioButton) radioGroup3.findViewById(radioGroup3.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i25 > this.inventoryBean.getPcvNew().intValue()) {
                        SewaUtil.generateToast(this.context, "PCV new vial return value is not valid");
                        return;
                    }
                    int i28 = i25 + i26;
                    if (i28 > this.inventoryBean.getPcvOpen().intValue() + this.inventoryBean.getPcvNew().intValue()) {
                        SewaUtil.generateToast(this.context, "PCV open vial return value is not valid");
                        return;
                    } else {
                        if (i28 + i27 != this.inventoryBean.getPcvOpen().intValue() + this.inventoryBean.getPcvNew().intValue()) {
                            SewaUtil.generateToast(this.context, "PCV empty vial return value is not valid");
                            return;
                        }
                        this.inventoryBean.setPcvNewRet(Integer.valueOf(i25));
                        this.inventoryBean.setPcvOpenRet(Integer.valueOf(i26));
                        this.inventoryBean.setPcvEmptyRet(Integer.valueOf(i27));
                        break;
                    }
                case "FIPV":
                    int i29 = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i30 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    int i31 = Integer.parseInt(((RadioButton) radioGroup3.findViewById(radioGroup3.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i29 > this.inventoryBean.getFipvNew().intValue()) {
                        SewaUtil.generateToast(this.context, "FIPV new vial return value is not valid");
                        return;
                    }
                    int i32 = i29 + i30;
                    if (i32 > this.inventoryBean.getFipvOpen().intValue() + this.inventoryBean.getFipvNew().intValue()) {
                        SewaUtil.generateToast(this.context, "FIPV open vial return value is not valid");
                        return;
                    } else {
                        if (i32 + i31 != this.inventoryBean.getFipvOpen().intValue() + this.inventoryBean.getFipvNew().intValue()) {
                            SewaUtil.generateToast(this.context, "FIPV empty vial return value is not valid");
                            return;
                        }
                        this.inventoryBean.setFipvNewRet(Integer.valueOf(i29));
                        this.inventoryBean.setFipvOpenRet(Integer.valueOf(i30));
                        this.inventoryBean.setFipvEmptyRet(Integer.valueOf(i31));
                        break;
                    }
                case "HEP_B":
                    int i33 = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i34 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    int i35 = Integer.parseInt(((RadioButton) radioGroup3.findViewById(radioGroup3.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i33 > this.inventoryBean.getHepNew().intValue()) {
                        SewaUtil.generateToast(this.context, "Hepatitis B new vial return value is not valid");
                        return;
                    }
                    int i36 = i33 + i34;
                    if (i36 > this.inventoryBean.getHepOpen().intValue() + this.inventoryBean.getHepNew().intValue()) {
                        SewaUtil.generateToast(this.context, "Hepatitis B open vial return value is not valid");
                        return;
                    } else {
                        if (i36 + i35 != this.inventoryBean.getHepOpen().intValue() + this.inventoryBean.getHepNew().intValue()) {
                            SewaUtil.generateToast(this.context, "Hepatitis B empty vial return value is not valid");
                            return;
                        }
                        this.inventoryBean.setHepNewRet(Integer.valueOf(i33));
                        this.inventoryBean.setHepOpenRet(Integer.valueOf(i34));
                        this.inventoryBean.setHepEmptyRet(Integer.valueOf(i35));
                        break;
                    }
                case "ROTA_VIRUS":
                    int i37 = Integer.parseInt(((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString().trim());
                    int i38 = Integer.parseInt(((RadioButton) radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())).getText().toString().trim());
                    int i39 = Integer.parseInt(((RadioButton) radioGroup3.findViewById(radioGroup3.getCheckedRadioButtonId())).getText().toString().trim());
                    if (i37 > this.inventoryBean.getRotaNew().intValue()) {
                        SewaUtil.generateToast(this.context, "Rota Virus new vial return value is not valid");
                        return;
                    }
                    int i40 = i37 + i38;
                    if (i40 > this.inventoryBean.getRotaOpen().intValue() + this.inventoryBean.getRotaNew().intValue()) {
                        SewaUtil.generateToast(this.context, "Rota Virus open vial return value is not valid");
                        return;
                    } else {
                        if (i40 + i39 != this.inventoryBean.getRotaOpen().intValue() + this.inventoryBean.getRotaNew().intValue()) {
                            SewaUtil.generateToast(this.context, "Rota Virus empty vial return value is not valid");
                            return;
                        }
                        this.inventoryBean.setRotaNewRet(Integer.valueOf(i37));
                        this.inventoryBean.setRotaOpenRet(Integer.valueOf(i38));
                        this.inventoryBean.setRotaEmptyRet(Integer.valueOf(i39));
                        break;
                    }
            }
        }
        this.alertDialog = new MyAlertDialog(this.context, false, "Are you sure you want to submit the vials return form?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RIInventoryReturnActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m480x2d4b2962(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* renamed from: lambda$validateAndStoreReturnedImmunisations$1$com-argusoft-sewa-android-app-activity-RIInventoryReturnActivity, reason: not valid java name */
    /* synthetic */ void m480x2d4b2962(View view) {
        this.alertDialog.dismiss();
        if (view.getId() != -1 || this.isOnline) {
            return;
        }
        this.campaignSessionService.submitCampaignInventoryReturnForm(this.inventoryBean);
        this.campaignSessionService.endSessionBySessionId(this.inventoryBean.getSessionId());
        showFormSubmitMessage(this.session);
    }

    private void showFormSubmitMessage(CampaignSessionBean campaignSessionBean) {
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Inventory return form submitted. ") + UtilBean.getMyLabel("Session for ") + UtilBean.getDayNameFromNumber(this.campaignMasterBean.getDayNumber().intValue()) + UtilBean.getMyLabel(" has ended"));
        finish();
        hideProcessDialog();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws NumberFormatException {
        validateAndStoreReturnedImmunisations();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        SewaUtil.generateToast(this.context, "Please submit the vials returned");
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        SewaUtil.generateToast(this.context, "Please submit the vials returned");
    }
}
