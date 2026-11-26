package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.MigrationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.FamilyMigrationOutDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.firebase.messaging.ServiceStarter;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class FamilyMigrationOutActivity extends MenuActivity implements View.OnClickListener {
    private static final String CONFIRMATION_SCREEN = "confirmationScreen";
    private static final String FAMILY_INFO_SCREEN = "familyInfoScreen";
    private static final String FINAL_SCREEN = "finalScreen";
    private static final String HIERARCHY_SCREEN = "hierarchyScreen";
    private static final String HIERARCHY_SEARCH_SCREEN = "hierarchySearchScreen";
    private static final String OTHER_INFO_SCREEN = "otherInfoScreen";
    private static final String SEARCH_OPTION_SCREEN = "searchOptionScreen";
    private static final String VILLAGE_SEARCH_SCREEN = "villageSearchScreen";
    private Spinner blockSpinner;
    private LinearLayout bodyLayoutContainer;
    private RadioGroup confirmationRadioGroup;
    private Spinner districtSpinner;
    private boolean existingHeadSelected;
    private FamilyDataBean familyDataBean;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    private Map<Integer, String> hierarcyMapWithLevelAndName;
    private MaterialTextView listTitleView;
    private ListView listView;
    LocationMasterServiceImpl locationMasterService;
    MigrationServiceImpl migrationService;
    private MaterialTextView noVillageTextView;
    private TextInputLayout otherInfoEditText;
    private CheckBox outOfStateCheckBox;
    private Spinner phcSpinner;
    private Map<String, String> relWithHofMap;
    private String screenName;
    private RadioGroup searchOptionRadioGroup;
    private TextView searchOptionTextView;
    private Button searchVillageButton;
    private TextInputLayout searchVillageEditText;
    private TextView selectBlockQues;
    private TextView selectDistrictQues;
    private TextView selectPhcQues;
    private TextView selectSubCenterQues;
    private TextView selectVillageQues;
    private NotificationMobDataBean selectedNotification;
    private RadioGroup splitRadioGroup;
    private Spinner subCenterSpinner;
    private Spinner villageSpinner;
    private static final Integer RADIO_BUTTON_ID_YES = 1;
    private static final Integer RADIO_BUTTON_ID_NO = 2;
    private static final Integer RADIO_BUTTON_ID_NOT_KNOWN = 3;
    private List<LocationMasterBean> searchedVillageList = new ArrayList();
    private Map<String, Long> selectionMap = new HashMap();
    private LocationMasterBean selectedLocation = null;
    private List<Long> memberIds = new ArrayList();
    private int selectedVillageIndex = -1;
    private String newHeadId = null;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.familyDataBean = (FamilyDataBean) new Gson().fromJson(extras.getString("familyToMigrate", null), FamilyDataBean.class);
            String string = extras.getString(GlobalTypes.NOTIFICATION, null);
            if (string != null) {
                this.selectedNotification = (NotificationMobDataBean) new Gson().fromJson(string, NotificationMobDataBean.class);
            }
        }
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
            Intent intent = new Intent(this.context, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.FAMILY_MIGRATION_OUT_TITLE));
        setSubTitle(this.familyDataBean.getFamilyId());
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        setFamilyInfoScreen();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this.context, false, "Are you sure want to close Migration?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    FamilyMigrationOutActivity.this.alertDialog.dismiss();
                    FamilyMigrationOutActivity.this.setResult(0);
                    FamilyMigrationOutActivity.this.finish();
                    return;
                }
                FamilyMigrationOutActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1003) {
            if (i2 != -1) {
                if (i2 == 0) {
                    setFamilyInfoScreen();
                    return;
                }
                return;
            }
            this.newHeadId = intent.getStringExtra("newHead");
            this.existingHeadSelected = intent.getBooleanExtra("existingHeadSelected", false);
            this.relWithHofMap = (Map) intent.getSerializableExtra("relationWithHofMap");
            if (intent.getBooleanExtra("isCurrentLocation", false)) {
                setResult(-1);
                finish();
                return;
            }
            String stringExtra = intent.getStringExtra("memberIds");
            if (stringExtra != null) {
                this.memberIds = (List) new Gson().fromJson(stringExtra, new TypeToken<List<Long>>() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.2
                }.getType());
                setSearchOptionScreen(true);
            } else {
                this.memberIds = new ArrayList();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001a  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r9) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.onClick(android.view.View):void");
    }

    private void setFamilyInfoScreen() {
        this.screenName = FAMILY_INFO_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this, LabelConstants.FAMILY_DETAILS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.FAMILY_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.familyDataBean.getFamilyId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MEMBERS_INFO));
        this.bodyLayoutContainer.addView(UtilBean.getMembersListForDisplay(this, this.familyDataBean));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.DO_YOU_WANT_TO_MIGRATE_OR_SPLIT_THIS_FAMILY));
        if (this.splitRadioGroup == null) {
            RadioGroup radioGroup = new RadioGroup(this.context);
            this.splitRadioGroup = radioGroup;
            radioGroup.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel(LabelConstants.MIGRATE_THE_FAMILY), RADIO_BUTTON_ID_YES.intValue()));
            this.splitRadioGroup.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel(LabelConstants.SPLIT_THE_FAMILY), RADIO_BUTTON_ID_NO.intValue()));
        }
        this.bodyLayoutContainer.addView(this.splitRadioGroup);
    }

    private void setSearchOptionScreen(boolean z) {
        this.screenName = SEARCH_OPTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CHECK_IF_THE_FAMILY_HAS_BEEN_MIGRATED_TO_OUT_OF_STATE));
        if (this.searchOptionTextView == null) {
            this.searchOptionTextView = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CHOOSE_OPTION_TO_SEARCH);
        }
        if (this.searchOptionRadioGroup == null) {
            HashMap map = new HashMap();
            map.put(RADIO_BUTTON_ID_YES, LabelConstants.SELECT_LOCATION);
            map.put(RADIO_BUTTON_ID_NO, LabelConstants.TYPE_VILLAGE_NAME);
            if (!z) {
                map.put(RADIO_BUTTON_ID_NOT_KNOWN, LabelConstants.LOCATION_NOT_KNOWN);
            }
            this.searchOptionRadioGroup = MyStaticComponents.getRadioGroup(this, map, false);
        }
        if (this.outOfStateCheckBox == null) {
            MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, LabelConstants.OUT_OF_STATE, 255, false);
            this.outOfStateCheckBox = checkBox;
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.3
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                    if (z2) {
                        FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.searchOptionTextView);
                        FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.searchOptionRadioGroup);
                    } else {
                        FamilyMigrationOutActivity.this.bodyLayoutContainer.addView(FamilyMigrationOutActivity.this.searchOptionTextView);
                        FamilyMigrationOutActivity.this.bodyLayoutContainer.addView(FamilyMigrationOutActivity.this.searchOptionRadioGroup);
                    }
                }
            });
        }
        this.bodyLayoutContainer.addView(this.outOfStateCheckBox);
        if (this.outOfStateCheckBox.isChecked()) {
            return;
        }
        this.bodyLayoutContainer.addView(this.searchOptionTextView);
        this.bodyLayoutContainer.addView(this.searchOptionRadioGroup);
    }

    private void setVillageSearchScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screenName = VILLAGE_SEARCH_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.VILLAGE_OR_ANGANVADI_TO_BE_ENTERED_ALERT));
        if (this.searchVillageEditText == null) {
            this.searchVillageEditText = MyStaticComponents.getEditText(this.context, LabelConstants.VILLAGE_OR_ANGANVADI, 1001, 50, -1);
        }
        this.bodyLayoutContainer.addView(this.searchVillageEditText);
        if (this.searchVillageButton == null) {
            MaterialButton button = MyStaticComponents.getButton(this.context, UtilBean.getMyLabel("Search"), 104, new LinearLayout.LayoutParams(-1, -2));
            this.searchVillageButton = button;
            button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InputMethodManager inputMethodManager = (InputMethodManager) FamilyMigrationOutActivity.this.context.getSystemService("input_method");
                    if (inputMethodManager != null) {
                        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
                    }
                    FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.listView);
                    FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.listTitleView);
                    FamilyMigrationOutActivity.this.selectedVillageIndex = -1;
                    EditText editText = FamilyMigrationOutActivity.this.searchVillageEditText.getEditText();
                    if (editText == null || editText.getText().toString().trim().length() <= 0) {
                        FamilyMigrationOutActivity.this.searchedVillageList.clear();
                        FamilyMigrationOutActivity.this.selectedLocation = null;
                        SewaUtil.generateToast(FamilyMigrationOutActivity.this.context, UtilBean.getMyLabel(LabelConstants.VILLAGE_OR_ANGANVADI_SELECTION_REQUIRED_ALERT_FOR_SEARCH));
                    } else {
                        FamilyMigrationOutActivity.this.showProcessDialog();
                        FamilyMigrationOutActivity familyMigrationOutActivity = FamilyMigrationOutActivity.this;
                        familyMigrationOutActivity.retrieveSearchedVillageListFromDB(familyMigrationOutActivity.searchVillageEditText.getEditText().getText().toString().trim());
                    }
                }
            });
        }
        this.bodyLayoutContainer.addView(this.searchVillageButton);
    }

    public void retrieveSearchedVillageListFromDB(CharSequence charSequence) {
        this.searchedVillageList = this.migrationService.retrieveLocationMasterBeansBySearch(charSequence, 6);
        addSearchedVillageList();
    }

    public void addSearchedVillageList() {
        this.bodyLayoutContainer.removeView(this.listView);
        this.bodyLayoutContainer.removeView(this.listTitleView);
        this.bodyLayoutContainer.removeView(this.noVillageTextView);
        MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
        this.listTitleView = listTitleView;
        this.bodyLayoutContainer.addView(listTitleView);
        List<LocationMasterBean> list = this.searchedVillageList;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator<LocationMasterBean> it = this.searchedVillageList.iterator();
            while (it.hasNext()) {
                Map<Integer, String> mapRetrieveHierarchyOfVillage = this.migrationService.retrieveHierarchyOfVillage(it.next());
                arrayList.add(String.format("%s > %s > %s > %s > %s > %s", mapRetrieveHierarchyOfVillage.get(1), mapRetrieveHierarchyOfVillage.get(2), mapRetrieveHierarchyOfVillage.get(3), mapRetrieveHierarchyOfVillage.get(4), mapRetrieveHierarchyOfVillage.get(5), mapRetrieveHierarchyOfVillage.get(6)));
            }
            ListView listView = MyStaticComponents.getListView(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.5
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    FamilyMigrationOutActivity.this.selectedVillageIndex = i;
                }
            }, -1);
            this.listView = listView;
            this.bodyLayoutContainer.addView(listView);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, LabelConstants.NO_VILLAGE_OR_ANGANVADI_FOUND_WITH_THE_GIVEN_NAME);
            this.noVillageTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        }
        hideProcessDialog();
    }

    private void addSearchedVillageHierarchyScreen(LocationMasterBean locationMasterBean) {
        this.hierarcyMapWithLevelAndName = this.migrationService.retrieveHierarchyOfVillage(locationMasterBean);
        addRegionSpinner(true);
    }

    private void setConfirmationScreen(boolean z) {
        this.screenName = CONFIRMATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.outOfStateCheckBox.isChecked()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SURE_THIS_FAMILY_HAS_MIGRATED_OUT_OF_STATE));
        } else {
            RadioGroup radioGroup = this.searchOptionRadioGroup;
            if (radioGroup != null && radioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NOT_KNOWN.intValue()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SURE_YOU_DON_T_KNOW_WHERE_THIS_FAMILY_HAS_BEEN_MIGRATED));
            }
        }
        if (this.confirmationRadioGroup == null) {
            HashMap map = new HashMap();
            map.put(RADIO_BUTTON_ID_YES, "Yes");
            map.put(RADIO_BUTTON_ID_NO, "No");
            this.confirmationRadioGroup = MyStaticComponents.getRadioGroup(this, map, true);
        }
        if (!z) {
            this.confirmationRadioGroup.clearCheck();
        }
        this.bodyLayoutContainer.addView(this.confirmationRadioGroup);
    }

    private void setOtherInfoScreen() {
        this.screenName = OTHER_INFO_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.selectedLocation != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.LOCATION_MIGRATED_TO));
            Map<Integer, String> mapRetrieveHierarchyOfVillage = this.migrationService.retrieveHierarchyOfVillage(this.selectedLocation);
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, String.format("%s > %s > %s > %s > %s > %s", mapRetrieveHierarchyOfVillage.get(1), mapRetrieveHierarchyOfVillage.get(2), mapRetrieveHierarchyOfVillage.get(3), mapRetrieveHierarchyOfVillage.get(4), mapRetrieveHierarchyOfVillage.get(5), mapRetrieveHierarchyOfVillage.get(6))));
            String fhwDetailString = this.selectedLocation.getFhwDetailString();
            if (fhwDetailString != null) {
                Map map = (Map) ((List) new Gson().fromJson(fhwDetailString, new TypeToken<List<Map<String, String>>>() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.6
                }.getType())).get(0);
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.FHW_NAME));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, (String) map.get("name")));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.FHW_MOBILE_NUMBER));
                String str = (String) map.get("mobileNumber");
                if (str != null && !str.trim().isEmpty()) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, (String) map.get("mobileNumber")));
                } else {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, "Not available"));
                }
            }
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.OTHER_INFORMATION));
        if (this.otherInfoEditText == null) {
            this.otherInfoEditText = MyStaticComponents.getEditText(this.context, LabelConstants.OTHER_INFORMATION, 1000, ServiceStarter.ERROR_UNKNOWN, -1);
        }
        this.bodyLayoutContainer.addView(this.otherInfoEditText);
    }

    private void setFinalScreen() {
        this.screenName = FINAL_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.FORM_ENTRY_COMPLETED)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.FORM_ENTRY_COMPLETED_SUCCESSFULLY)));
    }

    private void finishActivity() {
        this.alertDialog = new MyAlertDialog(this.context, LabelConstants.ON_MIGRATION_FORM_SUBMISSION_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    FamilyMigrationOutActivity.this.alertDialog.dismiss();
                    FamilyMigrationOutActivity.this.saveFamilyMigrationOut();
                    FamilyMigrationOutActivity.this.setResult(-1);
                    FamilyMigrationOutActivity.this.finish();
                    return;
                }
                FamilyMigrationOutActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveFamilyMigrationOut() {
        FamilyMigrationOutDataBean familyMigrationOutDataBean = new FamilyMigrationOutDataBean();
        familyMigrationOutDataBean.setFamilyId(Long.valueOf(this.familyDataBean.getId()));
        familyMigrationOutDataBean.setFromLocationId(Long.valueOf(this.familyDataBean.getLocationId()));
        List<Long> list = this.memberIds;
        if (list != null && !list.isEmpty()) {
            familyMigrationOutDataBean.setSplit(true);
            familyMigrationOutDataBean.setMemberIds(this.memberIds);
        }
        String str = this.newHeadId;
        if (str != null) {
            familyMigrationOutDataBean.setNewHead(Long.valueOf(Long.parseLong(str)));
        }
        familyMigrationOutDataBean.setExistingHeadSelected(Boolean.valueOf(this.existingHeadSelected));
        Map<String, String> map = this.relWithHofMap;
        if (map != null && !map.isEmpty()) {
            familyMigrationOutDataBean.setRelationWithHofMap(this.relWithHofMap);
        }
        if (this.outOfStateCheckBox.isChecked()) {
            familyMigrationOutDataBean.setOutOfState(true);
        } else {
            familyMigrationOutDataBean.setOutOfState(false);
            if (this.searchOptionRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NOT_KNOWN.intValue()) {
                familyMigrationOutDataBean.setLocationKnown(false);
            } else {
                familyMigrationOutDataBean.setLocationKnown(true);
                familyMigrationOutDataBean.setToLocationId(this.selectionMap.get("6"));
            }
        }
        EditText editText = this.otherInfoEditText.getEditText();
        if (editText != null && editText.getText().toString().trim().length() > 0) {
            familyMigrationOutDataBean.setOtherInfo(editText.getText().toString().trim());
        }
        familyMigrationOutDataBean.setReportedOn(Long.valueOf(new Date().getTime()));
        this.migrationService.createFamilyMigrationOut(familyMigrationOutDataBean, this.familyDataBean, this.selectedNotification);
    }

    private void addRegionSpinner(final boolean z) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = this.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(1, 2L);
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        int i = 0;
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (z && locationMasterBean.getName().equals(this.hierarcyMapWithLevelAndName.get(1))) {
                    i = i2;
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, i, 1);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.8
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                FamilyMigrationOutActivity.this.selectionMap.remove(MorbiditiesConstant.TWO_PLUS);
                FamilyMigrationOutActivity.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                FamilyMigrationOutActivity.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                FamilyMigrationOutActivity.this.selectionMap.remove("5");
                FamilyMigrationOutActivity.this.selectionMap.remove("6");
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectDistrictQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.districtSpinner);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectBlockQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.blockSpinner);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectPhcQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.phcSpinner);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectSubCenterQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.subCenterSpinner);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectVillageQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    FamilyMigrationOutActivity.this.selectionMap.put(MorbiditiesConstant.ONE_PLUS, locationMasterBean2.getActualID());
                    FamilyMigrationOutActivity.this.addDistrictSpinner(locationMasterBean2.getActualID(), z);
                }
            }
        });
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_REGION));
        this.bodyLayoutContainer.addView(spinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addDistrictSpinner(Long l, final boolean z) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = this.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(2, l);
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        int i2 = 0;
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i] = locationMasterBean.getName();
                if (z && locationMasterBean.getName().equals(this.hierarcyMapWithLevelAndName.get(2))) {
                    i2 = i;
                }
                i++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, i2, 2);
        this.districtSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                FamilyMigrationOutActivity.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                FamilyMigrationOutActivity.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                FamilyMigrationOutActivity.this.selectionMap.remove("5");
                FamilyMigrationOutActivity.this.selectionMap.remove("6");
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectBlockQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.blockSpinner);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectPhcQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.phcSpinner);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectSubCenterQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.subCenterSpinner);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectVillageQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    FamilyMigrationOutActivity.this.selectionMap.put(MorbiditiesConstant.TWO_PLUS, locationMasterBean2.getActualID());
                    FamilyMigrationOutActivity.this.addBlockSpinner(locationMasterBean2.getActualID(), z);
                }
            }
        });
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_DISTRICT_OR_CORPORATION));
        this.selectDistrictQues = materialTextViewGenerateQuestionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        this.bodyLayoutContainer.addView(this.districtSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBlockSpinner(Long l, final boolean z) {
        int i;
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = this.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(3, l);
        ArrayList<String> arrayList = new ArrayList();
        int i2 = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            i = 0;
            int i3 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i3] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                if (z && locationMasterBean.getName().equals(this.hierarcyMapWithLevelAndName.get(3))) {
                    i = i3;
                }
                i3++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
            i = 0;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, i, 3);
        this.blockSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                FamilyMigrationOutActivity.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                FamilyMigrationOutActivity.this.selectionMap.remove("5");
                FamilyMigrationOutActivity.this.selectionMap.remove("6");
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectPhcQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.phcSpinner);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectSubCenterQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.subCenterSpinner);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectVillageQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.villageSpinner);
                if (i4 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i4 - 1);
                    FamilyMigrationOutActivity.this.selectionMap.put(MorbiditiesConstant.THREE_PLUS, locationMasterBean2.getActualID());
                    FamilyMigrationOutActivity.this.addPhcSpinner(locationMasterBean2.getActualID(), z);
                }
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals(LocationConstants.LocationType.TALUKA)) {
                    sb.append(LabelConstants.BLOCK);
                }
                if (str.equals(LocationConstants.LocationType.ZONE)) {
                    sb.append(LabelConstants.ZONE);
                }
                if (i2 != arrayList.size()) {
                    sb.append("/");
                }
                i2++;
            }
            this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select " + sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.TALUKA)) {
                this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_BLOCK));
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.ZONE)) {
                this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_ZONE));
            }
        } else {
            this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_BLOCK));
        }
        this.bodyLayoutContainer.addView(this.selectBlockQues);
        this.bodyLayoutContainer.addView(this.blockSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPhcSpinner(Long l, final boolean z) {
        int i;
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = this.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(4, l);
        ArrayList<String> arrayList = new ArrayList();
        int i2 = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            i = 0;
            int i3 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i3] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                if (z && locationMasterBean.getName().equals(this.hierarcyMapWithLevelAndName.get(4))) {
                    i = i3;
                }
                i3++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
            i = 0;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, i, 4);
        this.phcSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.11
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                FamilyMigrationOutActivity.this.selectionMap.remove("5");
                FamilyMigrationOutActivity.this.selectionMap.remove("6");
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectSubCenterQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.subCenterSpinner);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectVillageQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.villageSpinner);
                if (i4 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i4 - 1);
                    FamilyMigrationOutActivity.this.selectionMap.put(MorbiditiesConstant.FOUR_PLUS, locationMasterBean2.getActualID());
                    FamilyMigrationOutActivity.this.addSubCenterSpinner(locationMasterBean2.getActualID(), z);
                }
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals("U")) {
                    sb.append(LabelConstants.UHC);
                }
                if (str.equals("P")) {
                    sb.append(LabelConstants.PHC);
                }
                if (i2 != arrayList.size()) {
                    sb.append("/");
                }
                i2++;
            }
            this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select " + sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("U")) {
                this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select UHC"));
            }
            if (((String) arrayList.get(0)).equals("P")) {
                this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select PHC"));
            }
        } else {
            this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select PHC"));
        }
        this.bodyLayoutContainer.addView(this.selectPhcQues);
        this.bodyLayoutContainer.addView(this.phcSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSubCenterSpinner(Long l, final boolean z) {
        int i;
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = this.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(5, l);
        ArrayList<String> arrayList = new ArrayList();
        int i2 = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            i = 0;
            int i3 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i3] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                if (z && locationMasterBean.getName().equals(this.hierarcyMapWithLevelAndName.get(5))) {
                    i = i3;
                }
                i3++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
            i = 0;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, i, 5);
        this.subCenterSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.12
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                FamilyMigrationOutActivity.this.selectionMap.remove("6");
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.selectVillageQues);
                FamilyMigrationOutActivity.this.bodyLayoutContainer.removeView(FamilyMigrationOutActivity.this.villageSpinner);
                if (i4 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i4 - 1);
                    FamilyMigrationOutActivity.this.selectionMap.put("5", locationMasterBean2.getActualID());
                    FamilyMigrationOutActivity.this.addVillageSpinner(locationMasterBean2.getActualID(), z);
                }
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals("ANM")) {
                    sb.append(LabelConstants.ANM_AREA);
                }
                if (str.equals("SC")) {
                    sb.append(LabelConstants.SUB_CENTER);
                }
                if (i2 != arrayList.size()) {
                    sb.append("/");
                }
                i2++;
            }
            this.selectSubCenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select " + sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("ANM")) {
                this.selectSubCenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select ANM Area"));
            }
            if (((String) arrayList.get(0)).equals("SC")) {
                this.selectSubCenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select Subcenter"));
            }
        } else {
            this.selectSubCenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select Subcenter"));
        }
        this.bodyLayoutContainer.addView(this.selectSubCenterQues);
        this.bodyLayoutContainer.addView(this.subCenterSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addVillageSpinner(Long l, boolean z) {
        int i;
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = this.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(6, l);
        ArrayList<String> arrayList = new ArrayList();
        int i2 = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            i = 0;
            int i3 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i3] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                if (z && locationMasterBean.getName().equals(this.hierarcyMapWithLevelAndName.get(6))) {
                    i = i3;
                }
                i3++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
            i = 0;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, i, 6);
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationOutActivity.13
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                if (i4 == 0) {
                    FamilyMigrationOutActivity.this.selectionMap.remove("6");
                    return;
                }
                FamilyMigrationOutActivity.this.selectedLocation = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i4 - 1);
                FamilyMigrationOutActivity.this.selectionMap.put("6", FamilyMigrationOutActivity.this.selectedLocation.getActualID());
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals(LabelConstants.UA)) {
                    sb.append(LabelConstants.URBAN_AREA);
                }
                if (str.equals(LocationConstants.LocationType.VILLAGE)) {
                    sb.append("Village");
                }
                if (str.equals("ANG")) {
                    sb.append(LabelConstants.ANGANWADI_AREA);
                }
                if (i2 != arrayList.size()) {
                    sb.append("/");
                }
                i2++;
            }
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select " + sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LabelConstants.UA)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select Urban Area"));
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.VILLAGE)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE));
            }
            if (((String) arrayList.get(0)).equals("ANG")) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select Anganwadi Area"));
            }
        } else {
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE));
        }
        this.bodyLayoutContainer.addView(this.selectVillageQues);
        this.bodyLayoutContainer.addView(this.villageSpinner);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        LocationMasterBean locationMasterBean;
        super.onOptionsItemSelected(menuItem);
        String str = this.screenName;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() == 16908332) {
            this.selectedVillageIndex = -1;
            String str2 = this.screenName;
            str2.hashCode();
            switch (str2) {
                case "villageSearchScreen":
                    this.bodyLayoutContainer.removeAllViews();
                    setSearchOptionScreen(false);
                    List<LocationMasterBean> list = this.searchedVillageList;
                    if (list != null && !list.isEmpty()) {
                        this.searchedVillageList.clear();
                        break;
                    }
                    break;
                case "familyInfoScreen":
                    setResult(0);
                    finish();
                    break;
                case "otherInfoScreen":
                    this.bodyLayoutContainer.removeAllViews();
                    CheckBox checkBox = this.outOfStateCheckBox;
                    if (checkBox != null && checkBox.isChecked()) {
                        setConfirmationScreen(true);
                        break;
                    } else if (this.searchOptionRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue() && (locationMasterBean = this.selectedLocation) != null) {
                        this.screenName = HIERARCHY_SEARCH_SCREEN;
                        addSearchedVillageHierarchyScreen(locationMasterBean);
                        break;
                    } else if (this.searchOptionRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
                        this.screenName = HIERARCHY_SCREEN;
                        LocationMasterBean locationMasterBean2 = this.selectedLocation;
                        if (locationMasterBean2 != null) {
                            addSearchedVillageHierarchyScreen(locationMasterBean2);
                            break;
                        } else {
                            addRegionSpinner(false);
                            break;
                        }
                    } else if (this.searchOptionRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NOT_KNOWN.intValue()) {
                        setConfirmationScreen(true);
                        break;
                    }
                    break;
                case "hierarchyScreen":
                    this.bodyLayoutContainer.removeAllViews();
                    setSearchOptionScreen(false);
                    break;
                case "hierarchySearchScreen":
                    this.bodyLayoutContainer.removeAllViews();
                    showProcessDialog();
                    setVillageSearchScreen();
                    EditText editText = this.searchVillageEditText.getEditText();
                    if (editText != null && editText.getText().toString().trim().length() > 0) {
                        retrieveSearchedVillageListFromDB(editText.getText().toString().trim());
                        break;
                    }
                    break;
                case "confirmationScreen":
                    setSearchOptionScreen(false);
                    break;
                case "searchOptionScreen":
                    List<Long> list2 = this.memberIds;
                    if (list2 != null && !list2.isEmpty()) {
                        Intent intent = new Intent(this.context, (Class<?>) FamilySplitActivity_.class);
                        intent.putExtra("familyToSplit", new Gson().toJson(this.familyDataBean));
                        intent.putExtra("memberIds", new Gson().toJson(this.memberIds));
                        if (this.selectedNotification != null) {
                            intent.putExtra(GlobalTypes.NOTIFICATION, new Gson().toJson(this.selectedNotification));
                        }
                        startActivityForResult(intent, 1003);
                        break;
                    } else {
                        setFamilyInfoScreen();
                        break;
                    }
                    break;
                case "finalScreen":
                    setOtherInfoScreen();
                    break;
                default:
                    onBackPressed();
                    break;
            }
        }
        return true;
    }
}
