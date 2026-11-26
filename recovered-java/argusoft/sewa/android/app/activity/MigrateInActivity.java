package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentTransaction;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyArrayAdapter;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.listeners.DateChangeListenerStatic;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.MigrationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MigrationInDataBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class MigrateInActivity extends MenuActivity implements View.OnClickListener {
    private static final long DELAY = 1000;
    private static final String FAMILY_QUESTION_SCREEN = "familyQuestionScreen";
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final String FINAL_SCREEN = "finalScreen";
    private static final String FIRST_QUESTION_SCREEN = "firstQuestionScreen";
    private static final String LOCATION_QUESTION_SCREEN = "locationQuestionScreen";
    private static final String MEMBER_QUESTION_SCREEN = "memberQuestionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private List<LocationBean> ashaAreaList;
    private Spinner ashaAreaSpinner;
    private TextView ashaAreaTextView;
    private TextInputLayout bankAccountEditText;
    private Spinner blockSpinner;
    private List<LocationMasterBean> blocks;
    private LinearLayout bodyLayoutContainer;
    private Spinner districtSpinner;
    private List<LocationMasterBean> districts;
    private DateChangeListenerStatic dobDateListener;
    private LinearLayout dobDatePicker;
    SewaFhsServiceImpl fhsService;
    private TextInputLayout fhwNameEditText;
    private TextInputLayout fhwPhoneEditText;
    private TextInputLayout firstNameEditText;
    private RadioGroup genderRadioGroup;
    private LinearLayout globalPanel;
    private TextInputLayout healthIdEditText;
    private TextInputLayout ifscEditText;
    private TextInputLayout lastNameEditText;
    private MaterialTextView listTitleView;
    private ListView listView;
    private DateChangeListenerStatic lmpDateListener;
    private LinearLayout lmpDatePicker;
    private MaterialTextView lmpQuestionView;
    LocationMasterServiceImpl locationMasterService;
    private TextInputLayout middleNameEditText;
    private RadioGroup migratedFromGujaratRadioGroup;
    MigrationServiceImpl migrationService;
    private MyAlertDialog myAlertDialog;
    private MaterialButton nextButton;
    private MaterialTextView noFamilyTextView;
    private TextInputLayout phoneEditText;
    private MaterialTextView pregnantQuestionView;
    private RadioGroup pregnantRadioGroup;
    private Spinner regionSpinner;
    private List<LocationMasterBean> regions;
    private String screenName;
    private TextInputLayout searchFamilyEditText;
    private List<FamilyDataBean> searchedFamily;
    SewaServiceImpl sewaService;
    private RadioGroup stayingWithFamilyRadioGroup;
    private List<LocationBean> villageList;
    private TextInputLayout villageNameEditText;
    private Spinner villageSpinner;
    private TextView villageTextView;
    private static final Integer RADIO_BUTTON_ID_YES = 1;
    private static final Integer RADIO_BUTTON_ID_NO = 2;
    private static final Integer RADIO_BUTTON_ID_NILL = 0;
    private Long selectedRegion = null;
    private Long selectedDistrict = null;
    private Timer timer = new Timer();
    private int selectedFamilyindex = -1;
    private int selectedAshaAreaIndex = -1;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        getWindow().setSoftInputMode(16);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
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
        setTitle(UtilBean.getTitleText(LabelConstants.MIGRATION_TITLE));
        setSubTitle(null);
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (MaterialButton) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    private void setBodyDetail() {
        try {
            setMemberQuestionsScreen();
        } finally {
            setContentView(this.globalPanel);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, "Are you sure want to close Migration?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MigrateInActivity.this.myAlertDialog.dismiss();
                    MigrateInActivity.this.finish();
                } else {
                    MigrateInActivity.this.myAlertDialog.dismiss();
                }
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    private RadioGroup getRadioGroupYesNo() {
        HashMap map = new HashMap();
        map.put(RADIO_BUTTON_ID_YES, "Yes");
        map.put(RADIO_BUTTON_ID_NO, "No");
        return MyStaticComponents.getRadioGroup(this, map, true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01fe  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r17) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MigrateInActivity.onClick(android.view.View):void");
    }

    private void setFirstQuestionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screenName = FIRST_QUESTION_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this, LabelConstants.CONFORMATION_TO_MIGRATION_OUT_OF_GUJARAT_FOR_BENEFICIARY));
        if (this.migratedFromGujaratRadioGroup == null) {
            this.migratedFromGujaratRadioGroup = getRadioGroupYesNo();
        }
        this.bodyLayoutContainer.addView(this.migratedFromGujaratRadioGroup);
    }

    private void setLocationQuestionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screenName = LOCATION_QUESTION_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.ENTER_LOCATION_DETAILS_FOR_MIGRATED_BENEFICIARY));
        addRegionSpinner();
        addDistrictSpinner(this.selectedRegion);
        addBlockSpinner(this.selectedDistrict);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.VILLAGE_NAME));
        if (this.villageNameEditText == null) {
            this.villageNameEditText = MyStaticComponents.getEditText(this.context, LabelConstants.VILLAGE_NAME, 1001, 50, 1);
        }
        this.bodyLayoutContainer.addView(this.villageNameEditText);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.FHW_OR_ASHA_NAME));
        if (this.fhwNameEditText == null) {
            this.fhwNameEditText = MyStaticComponents.getEditText(this.context, LabelConstants.FHW_OR_ASHA_NAME, 1002, 100, 1);
        }
        this.bodyLayoutContainer.addView(this.fhwNameEditText);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.FHW_OR_ASHA_PHONE_NUMBER));
        if (this.fhwPhoneEditText == null) {
            this.fhwPhoneEditText = MyStaticComponents.getEditText(this.context, LabelConstants.FHW_OR_ASHA_PHONE_NUMBER, 1003, 10, 2);
        }
        this.bodyLayoutContainer.addView(this.fhwPhoneEditText);
    }

    private void addRegionSpinner() {
        if (this.regionSpinner == null) {
            List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = this.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(1, 2L);
            this.regions = listRetrieveLocationMasterBeansByLevelAndParent;
            String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
            if (!this.regions.isEmpty()) {
                strArr[0] = UtilBean.getMyLabel("-Select-");
                Iterator<LocationMasterBean> it = this.regions.iterator();
                int i = 1;
                while (it.hasNext()) {
                    strArr[i] = it.next().getName();
                    i++;
                }
            } else {
                strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
            }
            Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 1);
            this.regionSpinner = spinner;
            spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.2
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                    String[] strArr2;
                    if (i2 == 0) {
                        MigrateInActivity.this.selectedRegion = null;
                        strArr2 = new String[]{UtilBean.getMyLabel(LabelConstants.SELECT_REGION)};
                    } else {
                        MigrateInActivity migrateInActivity = MigrateInActivity.this;
                        migrateInActivity.selectedRegion = ((LocationMasterBean) migrateInActivity.regions.get(i2 - 1)).getActualID();
                        MigrateInActivity migrateInActivity2 = MigrateInActivity.this;
                        migrateInActivity2.districts = migrateInActivity2.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(2, MigrateInActivity.this.selectedRegion);
                        strArr2 = new String[MigrateInActivity.this.districts.size() + 1];
                        strArr2[0] = UtilBean.getMyLabel("-Select-");
                        Iterator it2 = MigrateInActivity.this.districts.iterator();
                        int i3 = 1;
                        while (it2.hasNext()) {
                            strArr2[i3] = ((LocationMasterBean) it2.next()).getName();
                            i3++;
                        }
                    }
                    MyArrayAdapter myArrayAdapter = new MyArrayAdapter(MigrateInActivity.this.context, R.layout.spinner_item_top, strArr2);
                    myArrayAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
                    myArrayAdapter.notifyDataSetChanged();
                    MigrateInActivity.this.districtSpinner.setAdapter((SpinnerAdapter) myArrayAdapter);
                }
            });
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.REGION));
        this.bodyLayoutContainer.addView(this.regionSpinner);
    }

    private void addDistrictSpinner(Long l) {
        if (this.districtSpinner == null) {
            List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = this.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(2, l);
            this.districts = listRetrieveLocationMasterBeansByLevelAndParent;
            String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
            if (!this.districts.isEmpty()) {
                strArr[0] = UtilBean.getMyLabel("-Select-");
                Iterator<LocationMasterBean> it = this.districts.iterator();
                int i = 1;
                while (it.hasNext()) {
                    strArr[i] = it.next().getName();
                    i++;
                }
            } else {
                strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
            }
            Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 1);
            this.districtSpinner = spinner;
            spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                    String[] strArr2;
                    if (i2 == 0) {
                        MigrateInActivity.this.selectedDistrict = null;
                        strArr2 = new String[]{UtilBean.getMyLabel(LabelConstants.SELECT_DISTRICT)};
                    } else {
                        MigrateInActivity migrateInActivity = MigrateInActivity.this;
                        migrateInActivity.selectedDistrict = ((LocationMasterBean) migrateInActivity.districts.get(i2 - 1)).getActualID();
                        MigrateInActivity migrateInActivity2 = MigrateInActivity.this;
                        migrateInActivity2.blocks = migrateInActivity2.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(3, MigrateInActivity.this.selectedDistrict);
                        strArr2 = new String[MigrateInActivity.this.blocks.size() + 1];
                        strArr2[0] = UtilBean.getMyLabel("-Select-");
                        Iterator it2 = MigrateInActivity.this.blocks.iterator();
                        int i3 = 1;
                        while (it2.hasNext()) {
                            strArr2[i3] = ((LocationMasterBean) it2.next()).getName();
                            i3++;
                        }
                    }
                    MyArrayAdapter myArrayAdapter = new MyArrayAdapter(MigrateInActivity.this.context, R.layout.spinner_item_top, strArr2);
                    myArrayAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
                    myArrayAdapter.notifyDataSetChanged();
                    MigrateInActivity.this.blockSpinner.setAdapter((SpinnerAdapter) myArrayAdapter);
                }
            });
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.DISTRICT));
        this.bodyLayoutContainer.addView(this.districtSpinner);
    }

    private void addBlockSpinner(Long l) {
        if (this.blockSpinner == null) {
            List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = this.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(3, l);
            this.blocks = listRetrieveLocationMasterBeansByLevelAndParent;
            String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
            if (!this.blocks.isEmpty()) {
                strArr[0] = UtilBean.getMyLabel("-Select-");
                Iterator<LocationMasterBean> it = this.blocks.iterator();
                int i = 1;
                while (it.hasNext()) {
                    strArr[i] = it.next().getName();
                    i++;
                }
            } else {
                strArr[0] = UtilBean.getMyLabel(LabelConstants.SELECT_DISTRICT);
            }
            this.blockSpinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 2);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.BLOCK));
        this.bodyLayoutContainer.addView(this.blockSpinner);
    }

    private void setMemberQuestionsScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screenName = MEMBER_QUESTION_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel(LabelConstants.MIGRATED_IN_BENEFICIARY)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, "Enter " + LabelConstants.FIRST_NAME.toLowerCase()));
        if (this.firstNameEditText == null) {
            this.firstNameEditText = MyStaticComponents.getEditText(this.context, LabelConstants.FIRST_NAME, 1004, 50, 1);
        }
        this.bodyLayoutContainer.addView(this.firstNameEditText);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Enter " + LabelConstants.MIDDLE_NAME.toLowerCase())));
        if (this.middleNameEditText == null) {
            this.middleNameEditText = MyStaticComponents.getEditText(this.context, LabelConstants.MIDDLE_NAME, 1005, 50, 1);
        }
        this.bodyLayoutContainer.addView(this.middleNameEditText);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, UtilBean.getMyLabel("Enter " + LabelConstants.LAST_NAME.toLowerCase())));
        if (this.lastNameEditText == null) {
            this.lastNameEditText = MyStaticComponents.getEditText(this.context, LabelConstants.LAST_NAME, 1006, 50, 1);
        }
        this.bodyLayoutContainer.addView(this.lastNameEditText);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, "Enter " + LabelConstants.GENDER.toLowerCase()));
        if (this.genderRadioGroup == null) {
            RadioGroup radioGroup = new RadioGroup(this.context);
            this.genderRadioGroup = radioGroup;
            radioGroup.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel(LabelConstants.MALE), RADIO_BUTTON_ID_YES.intValue()));
            this.genderRadioGroup.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel(LabelConstants.FEMALE), RADIO_BUTTON_ID_NO.intValue()));
            this.genderRadioGroup.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel(LabelConstants.TRANSGENDER), RADIO_BUTTON_ID_NILL.intValue()));
            this.genderRadioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.4
                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                public void onCheckedChanged(RadioGroup radioGroup2, int i) {
                    if (i == MigrateInActivity.RADIO_BUTTON_ID_YES.intValue() || i == MigrateInActivity.RADIO_BUTTON_ID_NILL.intValue()) {
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.pregnantQuestionView);
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.pregnantRadioGroup);
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.lmpQuestionView);
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.lmpDatePicker);
                    }
                    if (i == MigrateInActivity.RADIO_BUTTON_ID_NO.intValue()) {
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.pregnantQuestionView);
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.pregnantRadioGroup);
                        MigrateInActivity.this.bodyLayoutContainer.addView(MigrateInActivity.this.pregnantQuestionView);
                        MigrateInActivity.this.bodyLayoutContainer.addView(MigrateInActivity.this.pregnantRadioGroup);
                        if (MigrateInActivity.this.pregnantRadioGroup.getCheckedRadioButtonId() == MigrateInActivity.RADIO_BUTTON_ID_YES.intValue()) {
                            MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.lmpQuestionView);
                            MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.lmpDatePicker);
                            MigrateInActivity.this.bodyLayoutContainer.addView(MigrateInActivity.this.lmpQuestionView);
                            MigrateInActivity.this.bodyLayoutContainer.addView(MigrateInActivity.this.lmpDatePicker);
                        }
                    }
                }
            });
        }
        this.bodyLayoutContainer.addView(this.genderRadioGroup);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, "Enter " + LabelConstants.DATE_OF_BIRTH.toLowerCase()));
        if (this.dobDateListener == null) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(new ValidationTagBean(FormulaConstants.VALIDATION_IS_FUTURE_DATE, "Date of birth is not correct"));
            DateChangeListenerStatic dateChangeListenerStatic = new DateChangeListenerStatic(this.context, linkedList);
            this.dobDateListener = dateChangeListenerStatic;
            this.dobDatePicker = MyStaticComponents.getCustomDatePickerForStatic(this, dateChangeListenerStatic, 1010);
        }
        this.bodyLayoutContainer.addView(this.dobDatePicker);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Enter Health Id")));
        if (this.healthIdEditText == null) {
            this.healthIdEditText = MyStaticComponents.getEditText(this.context, LabelConstants.HEALTH_ID, 1007, 11, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        }
        this.bodyLayoutContainer.addView(this.healthIdEditText);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Enter Phone number")));
        if (this.phoneEditText == null) {
            this.phoneEditText = MyStaticComponents.getEditText(this.context, LabelConstants.PHONE_NUMBER, 1009, 10, 2);
        }
        this.bodyLayoutContainer.addView(this.phoneEditText);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Enter Bank account number")));
        if (this.bankAccountEditText == null) {
            this.bankAccountEditText = MyStaticComponents.getEditText(this.context, LabelConstants.BANK_ACCOUNT_NUMBER, 1012, 16, 2);
        }
        this.bodyLayoutContainer.addView(this.bankAccountEditText);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Enter IFSC code")));
        if (this.ifscEditText == null) {
            this.ifscEditText = MyStaticComponents.getEditText(this.context, LabelConstants.IFSC_CODE, 1013, 11, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        }
        this.bodyLayoutContainer.addView(this.ifscEditText);
        if (this.pregnantQuestionView == null) {
            this.pregnantQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CONFORMATION_TO_PREGNANCY_OF_BENEFICIARY);
        }
        if (this.pregnantRadioGroup == null) {
            RadioGroup radioGroupYesNo = getRadioGroupYesNo();
            this.pregnantRadioGroup = radioGroupYesNo;
            radioGroupYesNo.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.5
                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                public void onCheckedChanged(RadioGroup radioGroup2, int i) {
                    if (i == MigrateInActivity.RADIO_BUTTON_ID_YES.intValue()) {
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.lmpQuestionView);
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.lmpDatePicker);
                        MigrateInActivity.this.bodyLayoutContainer.addView(MigrateInActivity.this.lmpQuestionView);
                        MigrateInActivity.this.bodyLayoutContainer.addView(MigrateInActivity.this.lmpDatePicker);
                    }
                    if (i == MigrateInActivity.RADIO_BUTTON_ID_NO.intValue()) {
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.lmpQuestionView);
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.lmpDatePicker);
                    }
                }
            });
        }
        if (this.lmpQuestionView == null) {
            this.lmpQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Enter LMP date"));
        }
        if (this.lmpDateListener == null) {
            LinkedList linkedList2 = new LinkedList();
            linkedList2.add(new ValidationTagBean(FormulaConstants.VALIDATION_IS_FUTURE_DATE, "LMP date is not correct"));
            linkedList2.add(new ValidationTagBean("isDateIn-Sub-0-9-0", "LMP date is not correct"));
            linkedList2.add(new ValidationTagBean("isDateOut-Sub-0-0-28", LabelConstants.LMP_DATE_MUST_BE_WITHIN_28_DAYS_TO_9_MONTHS_OF_A_DAY));
            DateChangeListenerStatic dateChangeListenerStatic2 = new DateChangeListenerStatic(this.context, linkedList2);
            this.lmpDateListener = dateChangeListenerStatic2;
            this.lmpDatePicker = MyStaticComponents.getCustomDatePickerForStatic(this, dateChangeListenerStatic2, 1011);
        }
        setMemberDetails();
    }

    private void setMemberDetails() {
        int childCount = this.genderRadioGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((RadioButton) this.genderRadioGroup.getChildAt(i)).setEnabled(true);
        }
        this.dobDatePicker.setClickable(true);
        if (this.genderRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
            this.bodyLayoutContainer.removeView(this.pregnantQuestionView);
            this.bodyLayoutContainer.removeView(this.pregnantRadioGroup);
            this.bodyLayoutContainer.addView(this.pregnantQuestionView);
            this.bodyLayoutContainer.addView(this.pregnantRadioGroup);
            if (this.pregnantRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
                this.bodyLayoutContainer.removeView(this.lmpQuestionView);
                this.bodyLayoutContainer.removeView(this.lmpDatePicker);
                this.bodyLayoutContainer.addView(this.lmpQuestionView);
                this.bodyLayoutContainer.addView(this.lmpDatePicker);
            }
        }
    }

    private Boolean checkValidationForMemberQuestionScreen() {
        String strTrim = this.phoneEditText.getEditText() != null ? this.phoneEditText.getEditText().getText().toString().trim() : null;
        ValidationTagBean validationTagBean = new ValidationTagBean("mobileNumber", null);
        ArrayList arrayList = new ArrayList();
        arrayList.add(validationTagBean);
        String strCheckValidation = DynamicUtils.checkValidation(strTrim, 0, arrayList);
        if (this.firstNameEditText.getEditText() != null && this.firstNameEditText.getEditText().getText().toString().trim().length() == 0) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.FIRST_NAME_REQUIRED_ALERT));
            return false;
        }
        if (this.lastNameEditText.getEditText() != null && this.lastNameEditText.getEditText().getText().toString().trim().length() == 0) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.LAST_NAME_REQUIRED_ALERT));
            return false;
        }
        if (this.genderRadioGroup.getCheckedRadioButtonId() == -1) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.GENDER_REQUIRED_ALERT));
            return false;
        }
        if (this.dobDateListener.getDateSet() == null) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.DOB_REQUIRED_ALERT));
            return false;
        }
        if (this.bankAccountEditText.getEditText() != null && this.bankAccountEditText.getEditText().getText().length() != 0 && !Pattern.compile("^\\d{16}$").matcher(this.bankAccountEditText.getEditText().getText().toString().trim()).matches()) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.BANK_ACCOUNT_NOT_VALID));
            return false;
        }
        if (this.healthIdEditText.getEditText() != null && this.healthIdEditText.getEditText().getText().toString().trim().length() > 0 && !this.healthIdEditText.getEditText().getText().toString().trim().startsWith("A")) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.HEALTH_ID_MUST_START_WITH_A));
            return false;
        }
        if (this.healthIdEditText.getEditText() != null && this.healthIdEditText.getEditText().getText().toString().trim().length() > 0 && (this.healthIdEditText.getEditText().getText().toString().trim().length() < 10 || this.healthIdEditText.getEditText().getText().toString().trim().length() > 11)) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.HEALTH_ID_DIGIT_VALIDATION));
            return false;
        }
        if (strCheckValidation != null) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(strCheckValidation));
            return false;
        }
        if (this.ifscEditText.getEditText() != null && this.ifscEditText.getEditText().getText().toString().trim().length() > 0 && this.ifscEditText.getEditText().getText().toString().trim().length() < 11) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel("IFSC code is not correct"));
            return false;
        }
        if (this.genderRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -15);
            if (this.dobDateListener.getDateSet().before(calendar.getTime())) {
                if (this.pregnantRadioGroup.getCheckedRadioButtonId() == -1) {
                    SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.CONFORMATION_TO_PREGNANCY_OF_BENEFICIARY));
                    return false;
                }
                if (this.pregnantRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue() && this.lmpDateListener.getDateSet() == null) {
                    SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.LMP_DATE_REQUIRED_ALERT));
                    return false;
                }
            } else if (this.pregnantRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
                SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.GIRL_CAN_NOT_BE_MARKED_AS_PREGNANT_ALERT));
                return false;
            }
        }
        return true;
    }

    private void setFamilyQuestionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screenName = FAMILY_QUESTION_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.CONFORMATION_TO_BENEFICIARY_STAYING_WITH_FAMILY_IN_VILLAGE));
        if (this.stayingWithFamilyRadioGroup == null) {
            this.stayingWithFamilyRadioGroup = getRadioGroupYesNo();
        }
        this.bodyLayoutContainer.addView(this.stayingWithFamilyRadioGroup);
    }

    private void setFamilySelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screenName = FAMILY_SELECTION_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.SEARCH_AND_SELECT_FAMILY_FOR_BENEFICIARY));
        addSearchTextBoxForFamily();
        this.bodyLayoutContainer.addView(this.searchFamilyEditText);
        List<FamilyDataBean> list = this.searchedFamily;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.bodyLayoutContainer.addView(this.listTitleView);
        this.bodyLayoutContainer.addView(this.listView);
    }

    private void addSearchTextBoxForFamily() {
        if (this.searchFamilyEditText == null) {
            this.searchFamilyEditText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, -1, 1);
        }
        if (this.searchFamilyEditText.getEditText() != null) {
            this.searchFamilyEditText.getEditText().addTextChangedListener(new AnonymousClass6());
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.MigrateInActivity$6, reason: invalid class name */
    class AnonymousClass6 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass6() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            MigrateInActivity.this.timer.cancel();
            MigrateInActivity.this.timer = new Timer();
            MigrateInActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.6.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        MigrateInActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.6.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MigrateInActivity.this.showProcessDialog();
                                MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.listView);
                                MigrateInActivity.this.retrieveFamilyListFromDB(charSequence.toString());
                                MigrateInActivity.this.searchFamilyEditText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() != 0) {
                        return;
                    }
                    MigrateInActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.6.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MigrateInActivity.this.listView != null) {
                                MigrateInActivity.this.searchedFamily.clear();
                                MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.listView);
                            }
                        }
                    });
                }
            }, MigrateInActivity.DELAY);
        }
    }

    public void retrieveFamilyListFromDB(String str) {
        this.searchedFamily = this.migrationService.retrieveFamilyListBySearchForMigration(str);
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.7
            @Override // java.lang.Runnable
            public void run() {
                String strReplace;
                MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.listView);
                MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.noFamilyTextView);
                MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.listTitleView);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (MigrateInActivity.this.searchedFamily != null && !MigrateInActivity.this.searchedFamily.isEmpty()) {
                    MigrateInActivity migrateInActivity = MigrateInActivity.this;
                    migrateInActivity.listTitleView = MyStaticComponents.getListTitleView(migrateInActivity.context, LabelConstants.SELECT_FROM_LIST.toLowerCase());
                    MigrateInActivity.this.bodyLayoutContainer.addView(MigrateInActivity.this.listTitleView);
                    Iterator it = MigrateInActivity.this.searchedFamily.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((FamilyDataBean) it.next()).getFamilyId());
                    }
                    Map<String, MemberDataBean> mapRetrieveHeadMemberDataBeansByFamilyId = MigrateInActivity.this.fhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList);
                    for (FamilyDataBean familyDataBean : MigrateInActivity.this.searchedFamily) {
                        MemberDataBean memberDataBean = mapRetrieveHeadMemberDataBeansByFamilyId.get(familyDataBean.getFamilyId());
                        if (memberDataBean != null) {
                            familyDataBean.setHeadMemberName(memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName());
                            familyDataBean.setHeadMemberName(familyDataBean.getHeadMemberName().replace(LabelConstants.NULL, ""));
                            strReplace = (familyDataBean.getFamilyId() + " - " + memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName()).replace(" null", "").replace("null ", "");
                        } else {
                            strReplace = familyDataBean.getFamilyId() + " - " + UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
                        }
                        arrayList2.add(strReplace);
                    }
                    AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.7.1
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                            MigrateInActivity.this.selectedFamilyindex = i;
                        }
                    };
                    MigrateInActivity migrateInActivity2 = MigrateInActivity.this;
                    migrateInActivity2.listView = MyStaticComponents.getListView(migrateInActivity2.context, arrayList2, onItemClickListener, -1);
                    MigrateInActivity.this.bodyLayoutContainer.addView(MigrateInActivity.this.listView);
                } else {
                    MigrateInActivity migrateInActivity3 = MigrateInActivity.this;
                    migrateInActivity3.noFamilyTextView = MyStaticComponents.generateInstructionView(migrateInActivity3.context, LabelConstants.NO_FAMILIES_FOUND);
                    MigrateInActivity.this.bodyLayoutContainer.addView(MigrateInActivity.this.noFamilyTextView);
                }
                MigrateInActivity.this.hideProcessDialog();
            }
        });
    }

    private void setVillageSelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screenName = VILLAGE_SELECTION_SCREEN;
        addVillageSelectionSpinner();
    }

    private void addVillageSelectionSpinner() {
        if (this.villageTextView == null) {
            this.villageTextView = MyStaticComponents.generateMandatoryQuestionView(null, null, this, UtilBean.getMyLabel("Select Village for beneficiary"));
        }
        this.bodyLayoutContainer.addView(this.villageTextView);
        if (this.villageSpinner == null) {
            List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
            this.villageList = distinctLocationsAssignedToUser;
            String[] strArr = new String[distinctLocationsAssignedToUser.size() + 1];
            strArr[0] = "-Select-";
            Iterator<LocationBean> it = this.villageList.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
            Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
            this.villageSpinner = spinner;
            spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.8
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                    if (i2 == 0) {
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.ashaAreaTextView);
                        MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.ashaAreaSpinner);
                        return;
                    }
                    MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.ashaAreaTextView);
                    MigrateInActivity.this.bodyLayoutContainer.removeView(MigrateInActivity.this.ashaAreaSpinner);
                    MigrateInActivity migrateInActivity = MigrateInActivity.this;
                    migrateInActivity.ashaAreaList = migrateInActivity.fhsService.retrieveAshaAreaAssignedToUser(((LocationBean) MigrateInActivity.this.villageList.get(i2 - 1)).getActualID());
                    MigrateInActivity.this.addAshaAreaSelectionSpinner();
                }
            });
            this.selectedAshaAreaIndex = 0;
        }
        this.bodyLayoutContainer.addView(this.villageSpinner);
        if (this.villageSpinner.getSelectedItemPosition() != 0) {
            addAshaAreaSelectionSpinner();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAshaAreaSelectionSpinner() {
        if (this.ashaAreaTextView == null) {
            this.ashaAreaTextView = MyStaticComponents.generateMandatoryQuestionView(null, null, this, UtilBean.getMyLabel("Select Asha Area for beneficiary"));
        }
        this.bodyLayoutContainer.addView(this.ashaAreaTextView);
        String[] strArr = new String[this.ashaAreaList.size() + 1];
        strArr[0] = "-Select-";
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 1;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, this.selectedAshaAreaIndex, 3);
        this.ashaAreaSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                MigrateInActivity.this.selectedAshaAreaIndex = i2;
            }
        });
        this.bodyLayoutContainer.addView(this.ashaAreaSpinner);
    }

    private void setFinalScreen() {
        this.screenName = FINAL_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.nextButton.setText(GlobalTypes.EVENT_SUBMIT);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.FORM_ENTRY_COMPLETED)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.FORM_ENTRY_COMPLETED_SUCCESSFULLY)));
    }

    private void finishActivity() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, LabelConstants.ON_MIGRATION_FORM_SUBMISSION_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateInActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MigrateInActivity.this.myAlertDialog.dismiss();
                    MigrateInActivity.this.saveMigrationIn();
                    MigrateInActivity.this.finish();
                    return;
                }
                MigrateInActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveMigrationIn() {
        MigrationInDataBean migrationInDataBean = new MigrationInDataBean();
        migrationInDataBean.setFirstname(((EditText) Objects.requireNonNull(this.firstNameEditText.getEditText())).getText().toString().trim());
        if (this.middleNameEditText.getEditText() != null && this.middleNameEditText.getEditText().getText().toString().trim().length() > 0) {
            migrationInDataBean.setMiddleName(this.middleNameEditText.getEditText().getText().toString().trim());
        }
        migrationInDataBean.setLastName(((EditText) Objects.requireNonNull(this.lastNameEditText.getEditText())).getText().toString().trim());
        if (this.genderRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
            migrationInDataBean.setGender("F");
            if (this.pregnantRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
                migrationInDataBean.setPregnant(Boolean.TRUE);
                migrationInDataBean.setLmp(Long.valueOf(this.lmpDateListener.getDateSet().getTime()));
            } else {
                migrationInDataBean.setPregnant(Boolean.FALSE);
            }
        } else {
            migrationInDataBean.setGender("M");
        }
        migrationInDataBean.setDob(Long.valueOf(this.dobDateListener.getDateSet().getTime()));
        if (this.healthIdEditText.getEditText() != null && this.healthIdEditText.getEditText().getText().toString().trim().length() > 0) {
            migrationInDataBean.setHealthId(this.healthIdEditText.getEditText().getText().toString().trim().toUpperCase());
        }
        if (this.phoneEditText.getEditText() != null && this.phoneEditText.getEditText().getText().toString().trim().length() > 0) {
            migrationInDataBean.setPhoneNumber(this.phoneEditText.getEditText().getText().toString().trim());
        }
        if (this.bankAccountEditText.getEditText() != null && this.bankAccountEditText.getEditText().getText().toString().trim().length() > 0) {
            migrationInDataBean.setBankAccountNumber(this.bankAccountEditText.getEditText().getText().toString().trim());
        }
        if (this.ifscEditText.getEditText() != null && this.ifscEditText.getEditText().getText().toString().trim().length() > 0) {
            migrationInDataBean.setIfscCode(this.ifscEditText.getEditText().getText().toString().trim());
        }
        int checkedRadioButtonId = this.migratedFromGujaratRadioGroup.getCheckedRadioButtonId();
        Integer num = RADIO_BUTTON_ID_YES;
        if (checkedRadioButtonId == num.intValue()) {
            migrationInDataBean.setOutOfState(false);
            migrationInDataBean.setNearestLocId(this.blocks.get(this.blockSpinner.getSelectedItemPosition() - 1).getActualID());
            migrationInDataBean.setVillageName(((EditText) Objects.requireNonNull(this.villageNameEditText.getEditText())).getText().toString().trim());
            migrationInDataBean.setFhwOrAshaName(((EditText) Objects.requireNonNull(this.fhwNameEditText.getEditText())).getText().toString().trim());
            if (this.fhwPhoneEditText.getEditText() != null) {
                migrationInDataBean.setFhwOrAshaPhone(this.fhwPhoneEditText.getEditText().getText().toString().trim());
            }
        } else {
            migrationInDataBean.setOutOfState(true);
        }
        if (this.stayingWithFamilyRadioGroup.getCheckedRadioButtonId() == num.intValue()) {
            migrationInDataBean.setStayingWithFamily(true);
            migrationInDataBean.setFamilyId(Long.valueOf(this.searchedFamily.get(this.selectedFamilyindex).getId()));
        } else {
            migrationInDataBean.setStayingWithFamily(false);
            migrationInDataBean.setVillageId(Long.valueOf(this.villageList.get(this.villageSpinner.getSelectedItemPosition() - 1).getActualID().intValue()));
            migrationInDataBean.setAreaId(Long.valueOf(this.ashaAreaList.get(this.ashaAreaSpinner.getSelectedItemPosition() - 1).getActualID().intValue()));
        }
        migrationInDataBean.setReportedOn(Long.valueOf(new Date().getTime()));
        this.migrationService.createMigrationIn(migrationInDataBean);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r5) {
        /*
            r4 = this;
            super.onOptionsItemSelected(r5)
            java.lang.String r0 = r4.screenName
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lbb
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto Lbb
        L11:
            int r5 = r5.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r5 != r0) goto Lba
            java.lang.String r5 = r4.screenName
            r5.hashCode()
            int r0 = r5.hashCode()
            r3 = -1
            switch(r0) {
                case -1992020217: goto L6b;
                case -1734630100: goto L60;
                case -932901182: goto L55;
                case -517518218: goto L4a;
                case -329684276: goto L3f;
                case -169448172: goto L34;
                case 2070150530: goto L29;
                default: goto L27;
            }
        L27:
            r1 = -1
            goto L74
        L29:
            java.lang.String r0 = "finalScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L32
            goto L27
        L32:
            r1 = 6
            goto L74
        L34:
            java.lang.String r0 = "familySelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L3d
            goto L27
        L3d:
            r1 = 5
            goto L74
        L3f:
            java.lang.String r0 = "villageSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L48
            goto L27
        L48:
            r1 = 4
            goto L74
        L4a:
            java.lang.String r0 = "familyQuestionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L53
            goto L27
        L53:
            r1 = 3
            goto L74
        L55:
            java.lang.String r0 = "firstQuestionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L5e
            goto L27
        L5e:
            r1 = 2
            goto L74
        L60:
            java.lang.String r0 = "memberQuestionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L69
            goto L27
        L69:
            r1 = 1
            goto L74
        L6b:
            java.lang.String r0 = "locationQuestionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L74
            goto L27
        L74:
            switch(r1) {
                case 0: goto Lb7;
                case 1: goto Lb3;
                case 2: goto Laf;
                case 3: goto L99;
                case 4: goto L95;
                case 5: goto L95;
                case 6: goto L78;
                default: goto L77;
            }
        L77:
            goto Lba
        L78:
            com.google.android.material.button.MaterialButton r5 = r4.nextButton
            java.lang.String r0 = "Next"
            r5.setText(r0)
            android.widget.RadioGroup r5 = r4.stayingWithFamilyRadioGroup
            int r5 = r5.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.MigrateInActivity.RADIO_BUTTON_ID_YES
            int r0 = r0.intValue()
            if (r5 != r0) goto L91
            r4.setFamilySelectionScreen()
            goto Lba
        L91:
            r4.setVillageSelectionScreen()
            goto Lba
        L95:
            r4.setFamilyQuestionScreen()
            goto Lba
        L99:
            android.widget.RadioGroup r5 = r4.migratedFromGujaratRadioGroup
            int r5 = r5.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.MigrateInActivity.RADIO_BUTTON_ID_YES
            int r0 = r0.intValue()
            if (r5 != r0) goto Lab
            r4.setLocationQuestionScreen()
            goto Lba
        Lab:
            r4.setFirstQuestionScreen()
            goto Lba
        Laf:
            r4.setMemberQuestionsScreen()
            goto Lba
        Lb3:
            r4.onBackPressed()
            goto Lba
        Lb7:
            r4.setFirstQuestionScreen()
        Lba:
            return r2
        Lbb:
            r4.navigateToHomeScreen(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MigrateInActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }
}
