package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.MigrationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.FamilyMigrationOutDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.radiobutton.MaterialRadioButton;
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
public class FamilySplitActivity extends MenuActivity implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {
    private static final String CONFIRMATION_SCREEN = "confirmationScreen";
    private static final String FINAL_SCREEN = "finalScreen";
    private static final String HEAD_MEMBER_SELECTION_SCREEN = "headMemberSelectionScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String MIGRATE_QUE_SCREEN = "migrateQueScreen";
    private static final String OTHER_INFO_SCREEN = "otherInfoScreen";
    private static final int RADIO_BUTTON_ID_NO = 5002;
    private static final int RADIO_BUTTON_ID_YES = 5001;
    private static final String REL_WITH_HOF_SCREEN = "relWithHofScreen";
    private List<MemberDataBean> allMembers;
    private LinearLayout bodyLayoutContainer;
    private RadioGroup confirmationRadioGroup;
    private FamilyDataBean familyToSplit;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    private RadioGroup headRadioGroup;
    private boolean headSelected;
    private RadioGroup migrateQueRadioGroup;
    MigrationServiceImpl migrationService;
    private TextInputLayout otherInfoEditText;
    private String screenName;
    private MemberDataBean selectedHeadMember;
    private NotificationMobDataBean selectedNotification;
    private List<MemberDataBean> selectedMembers = new ArrayList();
    private List<MemberDataBean> unselectedMembers = new ArrayList();
    private final Map<String, String> relationWithHofMap = new HashMap();

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        List list;
        super.onCreate(bundle);
        this.context = this;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            String string = extras.getString(GlobalTypes.NOTIFICATION, null);
            if (string != null) {
                this.selectedNotification = (NotificationMobDataBean) new Gson().fromJson(string, NotificationMobDataBean.class);
            }
            FamilyDataBean familyDataBean = (FamilyDataBean) new Gson().fromJson(extras.getString("familyToSplit", null), FamilyDataBean.class);
            this.familyToSplit = familyDataBean;
            this.allMembers = familyDataBean.getMembers();
            String string2 = extras.getString("memberIds", null);
            if (string2 != null && (list = (List) new Gson().fromJson(string2, new TypeToken<List<Long>>() { // from class: com.argusoft.sewa.android.app.activity.FamilySplitActivity.1
            }.getType())) != null && !list.isEmpty()) {
                for (MemberDataBean memberDataBean : this.familyToSplit.getMembers()) {
                    if (list.contains(Long.valueOf(memberDataBean.getId()))) {
                        this.selectedMembers.add(memberDataBean);
                    } else {
                        this.unselectedMembers.add(memberDataBean);
                    }
                }
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
        setTitle(UtilBean.getTitleText(LabelConstants.FAMILY_SPLIT_TITLE));
        setSubTitle(null);
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        setBodyDetail();
    }

    private void setBodyDetail() {
        List<MemberDataBean> list = this.selectedMembers;
        if (list != null && !list.isEmpty()) {
            setMigrateQueScreen();
        } else {
            setMemberSelectionScreen();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this.context, false, LabelConstants.ARE_YOU_SURE_WANT_TO_CLOSE_SPLIT_FAMILY, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilySplitActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    FamilySplitActivity.this.alertDialog.dismiss();
                    FamilySplitActivity.this.setResult(0);
                    FamilySplitActivity.this.finish();
                    return;
                }
                FamilySplitActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0017  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r8) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FamilySplitActivity.onClick(android.view.View):void");
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.selectedMembers.add(this.allMembers.get(compoundButton.getId()));
        } else {
            this.selectedMembers.remove(this.allMembers.get(compoundButton.getId()));
        }
    }

    private void setMemberSelectionScreen() {
        this.screenName = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_THE_MEMBERS_WHOM_YOU_WANT_TO_SPLIT));
        List<MemberDataBean> list = this.allMembers;
        if (list != null && !list.isEmpty()) {
            for (final MemberDataBean memberDataBean : this.allMembers) {
                MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, memberDataBean.getUniqueHealthId() + " - " + UtilBean.getMemberFullName(memberDataBean), 0, false);
                if (this.selectedMembers.contains(memberDataBean)) {
                    checkBox.setChecked(true);
                } else if (!this.unselectedMembers.contains(memberDataBean)) {
                    this.unselectedMembers.add(memberDataBean);
                }
                checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.FamilySplitActivity.3
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        if (z) {
                            FamilySplitActivity.this.unselectedMembers.remove(memberDataBean);
                            if (FamilySplitActivity.this.selectedMembers.contains(memberDataBean)) {
                                return;
                            }
                            FamilySplitActivity.this.selectedMembers.add(memberDataBean);
                            return;
                        }
                        FamilySplitActivity.this.selectedMembers.remove(memberDataBean);
                        if (FamilySplitActivity.this.unselectedMembers.contains(memberDataBean)) {
                            return;
                        }
                        FamilySplitActivity.this.unselectedMembers.add(memberDataBean);
                    }
                });
                this.bodyLayoutContainer.addView(checkBox);
            }
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.THERE_ARE_NO_MEMBERS_IN_THIS_FAMILY));
    }

    private void setHeadMemberSelectionScreen() {
        MemberDataBean memberDataBean;
        this.screenName = HEAD_MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.headSelected) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.SELECTED_TO_MOVE_THE_HEAD_FROM_THE_FAMILY_TO_NEW_SPLIT_FAMILY + this.familyToSplit.getFamilyId()));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.NOT_SELECTED_TO_MOVE_THE_HEAD_FROM_THE_FAMILY_TO_NEW_SPLIT_FAMILY));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_A_NEW_HEAD_FOR_THE_FAMILY));
        this.headRadioGroup = new RadioGroup(this.context);
        int i = 0;
        if (this.headSelected) {
            for (MemberDataBean memberDataBean2 : this.unselectedMembers) {
                MaterialRadioButton radioButton = MyStaticComponents.getRadioButton(this.context, memberDataBean2.getUniqueHealthId() + " - " + UtilBean.getMemberFullName(memberDataBean2), i);
                if (this.headSelected && (memberDataBean = this.selectedHeadMember) != null && memberDataBean.getId().equals(memberDataBean2.getId())) {
                    radioButton.setChecked(true);
                }
                this.headRadioGroup.addView(radioButton);
                i++;
            }
        } else {
            for (MemberDataBean memberDataBean3 : this.selectedMembers) {
                MaterialRadioButton radioButton2 = MyStaticComponents.getRadioButton(this.context, memberDataBean3.getUniqueHealthId() + " - " + UtilBean.getMemberFullName(memberDataBean3), i);
                MemberDataBean memberDataBean4 = this.selectedHeadMember;
                if (memberDataBean4 != null && memberDataBean4.getId().equals(memberDataBean3.getId())) {
                    radioButton2.setChecked(true);
                }
                this.headRadioGroup.addView(radioButton2);
                i++;
            }
        }
        this.bodyLayoutContainer.addView(this.headRadioGroup);
    }

    private void getRelWithHofScreen(List<MemberDataBean> list) {
        this.screenName = REL_WITH_HOF_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, "Select relation of below members with new head of family : " + UtilBean.getMemberFullName(this.selectedHeadMember)));
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, 10000, 1, new LinearLayout.LayoutParams(-1, -1));
        Iterator<MemberDataBean> it = list.iterator();
        while (it.hasNext()) {
            linearLayout.addView(getMemberAndRelWithHofView(it.next()));
        }
        this.bodyLayoutContainer.addView(linearLayout);
    }

    public LinearLayout getMemberAndRelWithHofView(final MemberDataBean memberDataBean) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, 10000, 1, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMemberFullName(memberDataBean)));
        final Spinner spinner = MyStaticComponents.getSpinner(this.context, (String[]) GlobalTypes.RELATION_WITH_HOF_LIST.toArray(new String[0]), 0, 2);
        linearLayout.addView(spinner);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.FamilySplitActivity.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                FamilySplitActivity.this.relationWithHofMap.put(memberDataBean.getId(), spinner.getSelectedItem().toString());
            }
        });
        return linearLayout;
    }

    private void setConfirmationScreen() {
        this.screenName = CONFIRMATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.FAMILY_DETAILS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.familyToSplit.getFamilyId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_DETAILS)));
        for (MemberDataBean memberDataBean : this.unselectedMembers) {
            MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, memberDataBean.getUniqueHealthId() + " - " + UtilBean.getMemberFullName(memberDataBean));
            if (this.headSelected && memberDataBean.getId().equals(this.selectedHeadMember.getId())) {
                materialTextViewGenerateAnswerView.setTextColor(Color.rgb(48, 112, 6));
            }
            this.bodyLayoutContainer.addView(materialTextViewGenerateAnswerView);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.NEW_SPLIT_FAMILY_WILL_BE_CREATED_WITH_THESE_MEMBERS)));
        for (MemberDataBean memberDataBean2 : this.selectedMembers) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, memberDataBean2.getUniqueHealthId() + " - " + UtilBean.getMemberFullName(memberDataBean2)));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SURE_WANT_TO_CONTINUE_SPLITTING_THIS_FAMILY)));
        if (this.confirmationRadioGroup == null) {
            HashMap map = new HashMap();
            map.put(Integer.valueOf(RADIO_BUTTON_ID_YES), "Yes");
            map.put(Integer.valueOf(RADIO_BUTTON_ID_NO), "No");
            this.confirmationRadioGroup = MyStaticComponents.getRadioGroup(this, map, true);
        }
        this.bodyLayoutContainer.addView(this.confirmationRadioGroup);
    }

    private void setMigrateQueScreen() {
        this.screenName = MIGRATE_QUE_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.WHAT_DO_YOU_WANT_TO_DO_WITH_THIS_NEW_FAMILY)));
        if (this.migrateQueRadioGroup == null) {
            HashMap map = new HashMap();
            map.put(Integer.valueOf(RADIO_BUTTON_ID_YES), LabelConstants.KEEP_THIS_FAMILY_IN_THE_CURRENT_LOCATION);
            map.put(Integer.valueOf(RADIO_BUTTON_ID_NO), LabelConstants.MIGRATE_THIS_FAMILY_TO_A_NEW_LOCATION);
            this.migrateQueRadioGroup = MyStaticComponents.getRadioGroup(this, map, false);
        }
        this.bodyLayoutContainer.addView(this.migrateQueRadioGroup);
    }

    private void setOtherInfoScreen() {
        this.screenName = OTHER_INFO_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.OTHER_INFORMATION)));
        if (this.otherInfoEditText == null) {
            this.otherInfoEditText = MyStaticComponents.getEditText(this.context, LabelConstants.OTHER_INFORMATION, 1000, ServiceStarter.ERROR_UNKNOWN, -1);
        }
        this.bodyLayoutContainer.addView(this.otherInfoEditText);
    }

    private void setFinalScreen() {
        this.screenName = FINAL_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.FORM_ENTRY_COMPLETED));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.FORM_ENTRY_COMPLETED_SUCCESSFULLY));
    }

    private void saveSplitFamily() {
        ArrayList arrayList = new ArrayList();
        Iterator<MemberDataBean> it = this.selectedMembers.iterator();
        while (it.hasNext()) {
            arrayList.add(Long.valueOf(it.next().getId()));
        }
        FamilyMigrationOutDataBean familyMigrationOutDataBean = new FamilyMigrationOutDataBean();
        if (this.familyToSplit.getId() != null) {
            familyMigrationOutDataBean.setFamilyId(Long.valueOf(this.familyToSplit.getId()));
        }
        familyMigrationOutDataBean.setCurrentLocation(true);
        familyMigrationOutDataBean.setSplit(true);
        familyMigrationOutDataBean.setMemberIds(arrayList);
        familyMigrationOutDataBean.setReportedOn(Long.valueOf(new Date().getTime()));
        familyMigrationOutDataBean.setExistingHeadSelected(Boolean.valueOf(this.headSelected));
        MemberDataBean memberDataBean = this.selectedHeadMember;
        if (memberDataBean != null) {
            familyMigrationOutDataBean.setNewHead(Long.valueOf(Long.parseLong(memberDataBean.getId())));
        }
        Map<String, String> map = this.relationWithHofMap;
        if (map != null && !map.isEmpty()) {
            familyMigrationOutDataBean.setRelationWithHofMap(this.relationWithHofMap);
        }
        this.migrationService.createFamilyMigrationOut(familyMigrationOutDataBean, this.familyToSplit, this.selectedNotification);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screenName;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() == 16908332) {
            String str2 = this.screenName;
            str2.hashCode();
            switch (str2) {
                case "relWithHofScreen":
                case "confirmationScreen":
                case "headMemberSelectionScreen":
                    this.selectedHeadMember = null;
                    this.headSelected = false;
                    setMemberSelectionScreen();
                    break;
                case "migrateQueScreen":
                    setConfirmationScreen();
                    break;
                case "otherInfoScreen":
                    setMigrateQueScreen();
                    break;
                case "memberSelectionScreen":
                    setResult(0);
                    finish();
                    break;
                case "finalScreen":
                    setOtherInfoScreen();
                    break;
            }
        }
        return true;
    }
}
