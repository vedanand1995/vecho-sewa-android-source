package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.MigrationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MigrationOutDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
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
public class MigrateOutActivity extends MenuActivity implements View.OnClickListener {
    private static final String CONFIRMATION_SCREEN = "confirmationScreen";
    private static final String FINAL_SCREEN = "finalScreen";
    private static final String HIERARCHY_SCREEN = "hierarchyScreen";
    private static final String HIERARCHY_SEARCH_SCREEN = "hierarchySearchScreen";
    private static final String MEMBER_INFO_SCREEN = "memberInfoScreen";
    private static final String OTHER_INFO_SCREEN = "otherInfoScreen";
    private static final String VILLAGE_SEARCH_SCREEN = "villageSearchScreen";
    private Spinner blockSpinner;
    private LinearLayout bodyLayoutContainer;
    private List<CheckBox> childCheckBoxes;
    private List<MemberBean> childrenUnder5Years;
    private RadioGroup confirmationRadioGroup;
    private Spinner districtSpinner;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    private Map<Integer, String> hierarcyMapWithLevelAndName;
    private MaterialTextView listTitleView;
    private ListView listView;
    LocationMasterServiceImpl locationMasterService;
    MigrationServiceImpl migrationService;
    private MyAlertDialog myAlertDialog;
    private MaterialTextView noVillageTextView;
    private TextInputLayout otherInfoEditText;
    private CheckBox outOfStateCheckBox;
    private Spinner phcSpinner;
    private String screenName;
    private RadioGroup searchOptionRadioGroup;
    private MaterialTextView searchOptionTextView;
    private Button searchVillageButton;
    private TextInputLayout searchVillageEditText;
    private MaterialTextView selectBlockQues;
    private MaterialTextView selectDistrictQues;
    private MaterialTextView selectPhcQues;
    private MaterialTextView selectSubcenterQues;
    private MaterialTextView selectVillageQues;
    SewaServiceImpl sewaService;
    private SharedPreferences sharedPref;
    private Spinner subcenterSpinner;
    private Spinner villageSpinner;
    private static final Integer RADIO_BUTTON_ID_YES = 1;
    private static final Integer RADIO_BUTTON_ID_NO = 2;
    private static final Integer RADIO_BUTTON_ID_NOT_KNOWN = 3;
    private NotificationBean notificationBean = null;
    private MemberDataBean memberDataBean = null;
    private FamilyDataBean familyDataBean = null;
    private List<LocationMasterBean> searchedVillageList = new ArrayList();
    private Map<String, Long> selectionMap = new HashMap();
    private LocationMasterBean selectedLocation = null;
    private int selectedVillageIndex = -1;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
        this.sharedPref = defaultSharedPreferences;
        String string = defaultSharedPreferences.getString(GlobalTypes.NOTIFICATION_BEAN, null);
        String string2 = this.sharedPref.getString("memberBean", null);
        String string3 = this.sharedPref.getString("familyDataBean", null);
        Gson gson = new Gson();
        if (string != null) {
            this.notificationBean = (NotificationBean) gson.fromJson(string, NotificationBean.class);
        }
        if (string2 != null) {
            this.memberDataBean = new MemberDataBean((MemberBean) gson.fromJson(string2, MemberBean.class));
        }
        if (string3 != null) {
            this.familyDataBean = (FamilyDataBean) gson.fromJson(string3, FamilyDataBean.class);
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
        setTitle(UtilBean.getTitleText(LabelConstants.MIGRATION_TITLE));
        setSubTitle(UtilBean.getMemberFullName(this.memberDataBean));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        setMemberInfoScreen();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001a  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r8) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MigrateOutActivity.onClick(android.view.View):void");
    }

    private void setMemberInfoScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screenName = MEMBER_INFO_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBER_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.memberDataBean.getUniqueHealthId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBER_NAME));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(this.memberDataBean)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.FAMILY_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.memberDataBean.getFamilyId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CHECK_TO_BENEFICIARY_MIGRATED_OUT_OF_STATE));
        if (this.searchOptionTextView == null) {
            this.searchOptionTextView = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CHOOSE_OPTION_TO_SEARCH);
        }
        if (this.searchOptionRadioGroup == null) {
            RadioGroup radioGroup = new RadioGroup(this.context);
            this.searchOptionRadioGroup = radioGroup;
            radioGroup.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel(LabelConstants.SELECT_LOCATION), RADIO_BUTTON_ID_YES.intValue()));
            this.searchOptionRadioGroup.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel(LabelConstants.TYPE_VILLAGE_NAME), RADIO_BUTTON_ID_NO.intValue()));
            this.searchOptionRadioGroup.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel(LabelConstants.LOCATION_NOT_KNOWN), RADIO_BUTTON_ID_NOT_KNOWN.intValue()));
        }
        if (this.outOfStateCheckBox == null) {
            MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, LabelConstants.OUT_OF_STATE, 255, false);
            this.outOfStateCheckBox = checkBox;
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (z) {
                        MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.searchOptionTextView);
                        MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.searchOptionRadioGroup);
                    } else {
                        MigrateOutActivity.this.bodyLayoutContainer.addView(MigrateOutActivity.this.searchOptionTextView);
                        MigrateOutActivity.this.bodyLayoutContainer.addView(MigrateOutActivity.this.searchOptionRadioGroup);
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
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.VILLAGE_OR_ANGANVADI_TO_BE_ENTERED_ALERT)));
        if (this.searchVillageEditText == null) {
            this.searchVillageEditText = MyStaticComponents.getEditText(this.context, LabelConstants.VILLAGE_OR_ANGANVADI, 1001, 50, -1);
        }
        this.bodyLayoutContainer.addView(this.searchVillageEditText);
        if (this.searchVillageButton == null) {
            MaterialButton button = MyStaticComponents.getButton(this.context, UtilBean.getMyLabel("Search"), 104, new LinearLayout.LayoutParams(-1, -2));
            this.searchVillageButton = button;
            button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InputMethodManager inputMethodManager = (InputMethodManager) MigrateOutActivity.this.context.getSystemService("input_method");
                    if (inputMethodManager != null) {
                        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
                    }
                    MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.listView);
                    MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.listTitleView);
                    MigrateOutActivity.this.selectedVillageIndex = -1;
                    if (MigrateOutActivity.this.searchVillageEditText.getEditText() == null || MigrateOutActivity.this.searchVillageEditText.getEditText().getText().toString().trim().length() <= 0) {
                        MigrateOutActivity.this.searchedVillageList.clear();
                        MigrateOutActivity.this.selectedLocation = null;
                        SewaUtil.generateToast(MigrateOutActivity.this.context, UtilBean.getMyLabel(LabelConstants.VILLAGE_OR_ANGANVADI_TO_BE_ENTERED_TO_SEARCH_ALERT));
                    } else {
                        MigrateOutActivity.this.showProcessDialog();
                        MigrateOutActivity migrateOutActivity = MigrateOutActivity.this;
                        migrateOutActivity.retrieveSearchedVillageListFromDB(migrateOutActivity.searchVillageEditText.getEditText().getText().toString().trim());
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
        this.bodyLayoutContainer.removeView(this.noVillageTextView);
        this.bodyLayoutContainer.removeView(this.listTitleView);
        this.bodyLayoutContainer.removeView(this.listView);
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
            ListView listView = MyStaticComponents.getListView(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MigrateOutActivity.this.selectedVillageIndex = i;
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
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.CONFORMATION_TO_MIGRATION_OUT_OF_STATE_FOR_MEMBER)));
        } else {
            RadioGroup radioGroup = this.searchOptionRadioGroup;
            if (radioGroup != null && radioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NOT_KNOWN.intValue()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.CONFORMATION_TO_UNKNOWN_MIGRATION_FOR_MEMBER)));
            }
        }
        if (this.confirmationRadioGroup == null) {
            RadioGroup radioGroup2 = new RadioGroup(this.context);
            this.confirmationRadioGroup = radioGroup2;
            radioGroup2.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel("Yes"), RADIO_BUTTON_ID_YES.intValue()));
            this.confirmationRadioGroup.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel("No"), RADIO_BUTTON_ID_NO.intValue()));
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
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.LOCATION_MIGRATED_TO)));
            Map<Integer, String> mapRetrieveHierarchyOfVillage = this.migrationService.retrieveHierarchyOfVillage(this.selectedLocation);
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, String.format("%s > %s > %s > %s > %s > %s", mapRetrieveHierarchyOfVillage.get(1), mapRetrieveHierarchyOfVillage.get(2), mapRetrieveHierarchyOfVillage.get(3), mapRetrieveHierarchyOfVillage.get(4), mapRetrieveHierarchyOfVillage.get(5), mapRetrieveHierarchyOfVillage.get(6))));
            String fhwDetailString = this.selectedLocation.getFhwDetailString();
            if (fhwDetailString != null) {
                Map map = (Map) ((List) new Gson().fromJson(fhwDetailString, new TypeToken<List<Map<String, String>>>() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.4
                }.getType())).get(0);
                if (map.get("name") != null) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.FHW_NAME)));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, (String) map.get("name")));
                }
                if (map.get("mobileNumber") != null) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.FHW_MOBILE_NUMBER)));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, (String) map.get("mobileNumber")));
                }
            }
        }
        if (this.childrenUnder5Years == null) {
            this.childrenUnder5Years = this.migrationService.retrieveChildrenUnder5YearsByMotherId(Long.valueOf(this.memberDataBean.getId()));
        }
        if (!this.childrenUnder5Years.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.WHICH_OF_THE_CHILDREN_MIGRATED_WITH_MOTHER) + "?"));
            this.childCheckBoxes = new ArrayList();
            Iterator<MemberBean> it = this.childrenUnder5Years.iterator();
            int i = 0;
            while (it.hasNext()) {
                MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, UtilBean.getMemberFullName(it.next()), i, false);
                this.bodyLayoutContainer.addView(checkBox);
                this.childCheckBoxes.add(checkBox);
                i++;
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
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, LabelConstants.ON_MIGRATION_FORM_SUBMISSION_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MigrateOutActivity.this.myAlertDialog.dismiss();
                    MigrateOutActivity.this.saveMigrationOut();
                    MigrateOutActivity.this.sharedPref.edit().clear().apply();
                    MigrateOutActivity.this.setResult(-1);
                    MigrateOutActivity.this.finish();
                    return;
                }
                MigrateOutActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveMigrationOut() {
        ArrayList arrayList = new ArrayList();
        List<CheckBox> list = this.childCheckBoxes;
        if (list != null && !list.isEmpty()) {
            for (CheckBox checkBox : this.childCheckBoxes) {
                if (checkBox.isChecked()) {
                    arrayList.add(Long.valueOf(this.childrenUnder5Years.get(checkBox.getId()).getActualId()));
                }
            }
        }
        MigrationOutDataBean migrationOutDataBean = new MigrationOutDataBean();
        migrationOutDataBean.setMemberId(Long.valueOf(this.memberDataBean.getId()));
        migrationOutDataBean.setFromFamilyId(Long.valueOf(this.familyDataBean.getId()));
        migrationOutDataBean.setFromLocationId(Long.valueOf(this.familyDataBean.getLocationId()));
        if (this.outOfStateCheckBox.isChecked()) {
            migrationOutDataBean.setOutOfState(true);
        } else {
            migrationOutDataBean.setOutOfState(false);
            if (this.searchOptionRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NOT_KNOWN.intValue()) {
                migrationOutDataBean.setLocationknown(false);
            } else {
                migrationOutDataBean.setLocationknown(true);
                migrationOutDataBean.setToLocationId(this.selectionMap.get("6"));
            }
        }
        migrationOutDataBean.setChildrensUnder5(arrayList);
        if (this.otherInfoEditText.getEditText() != null && this.otherInfoEditText.getEditText().getText().toString().trim().length() > 0) {
            migrationOutDataBean.setOtherInfo(this.otherInfoEditText.getEditText().getText().toString().trim());
        }
        migrationOutDataBean.setReportedOn(Long.valueOf(new Date().getTime()));
        this.migrationService.createMigrationOut(migrationOutDataBean, this.memberDataBean, this.notificationBean);
        this.fhsService.markMemberAsMigrated(Long.valueOf(this.memberDataBean.getId()));
        this.fhsService.deleteNotificationByMemberIdAndNotificationType(Long.valueOf(this.memberDataBean.getId()), null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, "Are you sure want to close Migration?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MigrateOutActivity.this.myAlertDialog.dismiss();
                    MigrateOutActivity.this.onMigrationCancelled();
                    MigrateOutActivity.this.sharedPref.edit().clear().apply();
                    MigrateOutActivity.this.finish();
                    return;
                }
                MigrateOutActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMigrationCancelled() {
        String string = this.sharedPref.getString("loggerBeanId", null);
        String string2 = this.sharedPref.getString("answerRecordStoredId", null);
        NotificationBean notificationBean = this.notificationBean;
        if (notificationBean != null) {
            this.sewaService.createNotificationBean(notificationBean);
        }
        if (string != null) {
            this.sewaService.deleteLoggerBeanByLoggerBeanId(Long.valueOf(string));
        }
        if (string2 != null) {
            this.sewaService.deleteStoreAnswerBeanByStoreAnswerBeanId(Long.valueOf(string2));
        }
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.7
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                MigrateOutActivity.this.selectionMap.remove(MorbiditiesConstant.TWO_PLUS);
                MigrateOutActivity.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                MigrateOutActivity.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                MigrateOutActivity.this.selectionMap.remove("5");
                MigrateOutActivity.this.selectionMap.remove("6");
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectDistrictQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.districtSpinner);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectBlockQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.blockSpinner);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectPhcQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.phcSpinner);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectSubcenterQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.subcenterSpinner);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectVillageQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.villageSpinner);
                if (i3 != 0) {
                    MigrateOutActivity.this.selectedLocation = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    MigrateOutActivity.this.selectionMap.put(MorbiditiesConstant.ONE_PLUS, MigrateOutActivity.this.selectedLocation.getActualID());
                    MigrateOutActivity migrateOutActivity = MigrateOutActivity.this;
                    migrateOutActivity.addDistrictSpinner(migrateOutActivity.selectedLocation.getActualID(), z);
                }
            }
        });
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_REGION)));
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.8
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                MigrateOutActivity.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                MigrateOutActivity.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                MigrateOutActivity.this.selectionMap.remove("5");
                MigrateOutActivity.this.selectionMap.remove("6");
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectBlockQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.blockSpinner);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectPhcQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.phcSpinner);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectSubcenterQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.subcenterSpinner);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectVillageQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.villageSpinner);
                if (i3 != 0) {
                    MigrateOutActivity.this.selectedLocation = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    MigrateOutActivity.this.selectionMap.put(MorbiditiesConstant.TWO_PLUS, MigrateOutActivity.this.selectedLocation.getActualID());
                    MigrateOutActivity migrateOutActivity = MigrateOutActivity.this;
                    migrateOutActivity.addBlockSpinner(migrateOutActivity.selectedLocation.getActualID(), z);
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                MigrateOutActivity.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                MigrateOutActivity.this.selectionMap.remove("5");
                MigrateOutActivity.this.selectionMap.remove("6");
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectPhcQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.phcSpinner);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectSubcenterQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.subcenterSpinner);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectVillageQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.villageSpinner);
                if (i4 != 0) {
                    MigrateOutActivity.this.selectedLocation = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i4 - 1);
                    MigrateOutActivity.this.selectionMap.put(MorbiditiesConstant.THREE_PLUS, MigrateOutActivity.this.selectedLocation.getActualID());
                    MigrateOutActivity migrateOutActivity = MigrateOutActivity.this;
                    migrateOutActivity.addPhcSpinner(migrateOutActivity.selectedLocation.getActualID(), z);
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                MigrateOutActivity.this.selectionMap.remove("5");
                MigrateOutActivity.this.selectionMap.remove("6");
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectSubcenterQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.subcenterSpinner);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectVillageQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.villageSpinner);
                if (i4 != 0) {
                    MigrateOutActivity.this.selectedLocation = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i4 - 1);
                    MigrateOutActivity.this.selectionMap.put(MorbiditiesConstant.FOUR_PLUS, MigrateOutActivity.this.selectedLocation.getActualID());
                    MigrateOutActivity migrateOutActivity = MigrateOutActivity.this;
                    migrateOutActivity.addSubcenterSpinner(migrateOutActivity.selectedLocation.getActualID(), z);
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
    public void addSubcenterSpinner(Long l, final boolean z) {
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
        this.subcenterSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.11
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                MigrateOutActivity.this.selectionMap.remove("6");
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.selectVillageQues);
                MigrateOutActivity.this.bodyLayoutContainer.removeView(MigrateOutActivity.this.villageSpinner);
                if (i4 != 0) {
                    MigrateOutActivity.this.selectedLocation = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i4 - 1);
                    MigrateOutActivity.this.selectionMap.put("5", MigrateOutActivity.this.selectedLocation.getActualID());
                    MigrateOutActivity migrateOutActivity = MigrateOutActivity.this;
                    migrateOutActivity.addVillageSpinner(migrateOutActivity.selectedLocation.getActualID(), z);
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
            this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, "Select " + sb.toString());
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("ANM")) {
                this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, "Select ANM Area");
            }
            if (((String) arrayList.get(0)).equals("SC")) {
                this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, "Select Subcenter");
            }
        } else {
            this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, "Select Subcenter");
        }
        this.bodyLayoutContainer.addView(this.selectSubcenterQues);
        this.bodyLayoutContainer.addView(this.subcenterSpinner);
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MigrateOutActivity.12
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                if (i4 == 0) {
                    MigrateOutActivity.this.selectionMap.remove("6");
                    return;
                }
                MigrateOutActivity.this.selectedLocation = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i4 - 1);
                MigrateOutActivity.this.selectionMap.put("6", MigrateOutActivity.this.selectedLocation.getActualID());
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
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, "Select " + sb.toString());
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LabelConstants.UA)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, "Select Urban Area");
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.VILLAGE)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_VILLAGE);
            }
            if (((String) arrayList.get(0)).equals("ANG")) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, "Select Anganwadi Area");
            }
        } else {
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_VILLAGE);
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
                    setMemberInfoScreen();
                    List<LocationMasterBean> list = this.searchedVillageList;
                    if (list != null && !list.isEmpty()) {
                        this.searchedVillageList.clear();
                        break;
                    }
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
                    setMemberInfoScreen();
                    break;
                case "hierarchySearchScreen":
                    this.bodyLayoutContainer.removeAllViews();
                    this.processDialog = new MyProcessDialog(this.context, GlobalTypes.MSG_PROCESSING);
                    this.processDialog.show();
                    setVillageSearchScreen();
                    if (this.searchVillageEditText.getEditText() != null && this.searchVillageEditText.getEditText().getText().toString().trim().length() > 0) {
                        retrieveSearchedVillageListFromDB(this.searchVillageEditText.getEditText().getText().toString().trim());
                        break;
                    }
                    break;
                case "confirmationScreen":
                    setMemberInfoScreen();
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
