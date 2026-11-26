package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentTransaction;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.listeners.FamilyIdTextWatcher;
import com.argusoft.sewa.android.app.component.listeners.MemberIdTextWatcher;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class AssignFamilyActivity extends MenuActivity implements View.OnClickListener {
    private LinearLayout bodyLayoutContainer;
    private int checkedRadioButtonId;
    private String errorString;
    private FamilyDataBean familyDataBean;
    private LinearLayout familyDetailsLayout;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    private LinearLayout globalPanel;
    private String locationId;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private String response;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private Spinner spinner;
    private List<LocationBean> locationBeans = new ArrayList();
    private boolean isVillageSelectionScreen = Boolean.FALSE.booleanValue();
    private boolean isFamilySelectionScreen = Boolean.FALSE.booleanValue();
    private boolean isFamilyAssignedScreen = Boolean.FALSE.booleanValue();

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        initView();
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        if (!this.sewaService.isOnline()) {
            showNotOnlineMessage();
        } else {
            setBodyDetail();
        }
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
        setTitle(LabelConstants.ASSIGN_FAMILY_TITLE);
    }

    public void setBodyDetail() {
        this.locationBeans = this.fhsService.getDistinctLocationsAssignedToUser();
        addSearchScreen();
        this.isFamilySelectionScreen = Boolean.TRUE.booleanValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!this.sewaService.isOnline()) {
            showNotOnlineMessage();
            return;
        }
        setSubTitle(null);
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            if (this.isVillageSelectionScreen) {
                String string = this.spinner.getSelectedItem().toString();
                Iterator<LocationBean> it = this.locationBeans.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    LocationBean next = it.next();
                    if (string.equals(next.getName())) {
                        this.locationId = String.valueOf(next.getActualID());
                        break;
                    }
                }
                this.bodyLayoutContainer.removeAllViews();
                assignFamilyToUserFromNetwork();
                this.isVillageSelectionScreen = Boolean.FALSE.booleanValue();
                return;
            }
            if (this.isFamilySelectionScreen) {
                if (this.familyDataBean == null) {
                    SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.SEARCH_FOR_FAMILY_REQUIRED_ALERT));
                    return;
                }
                this.bodyLayoutContainer.removeAllViews();
                this.isFamilySelectionScreen = Boolean.FALSE.booleanValue();
                this.isVillageSelectionScreen = Boolean.TRUE.booleanValue();
                addVillageSelectionSpinner();
                return;
            }
            navigateToHomeScreen(false);
        }
    }

    public void assignFamilyToUserFromNetwork() {
        showProcessDialog();
        this.response = this.fhsService.assignFamilyToUser(this.locationId, this.familyDataBean);
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.1
            @Override // java.lang.Runnable
            public void run() {
                AssignFamilyActivity.this.isFamilySelectionScreen = Boolean.FALSE.booleanValue();
                AssignFamilyActivity.this.isFamilyAssignedScreen = Boolean.TRUE.booleanValue();
                AssignFamilyActivity.this.bodyLayoutContainer.removeAllViews();
                AssignFamilyActivity assignFamilyActivity = AssignFamilyActivity.this;
                MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(assignFamilyActivity, assignFamilyActivity.response);
                materialTextViewGenerateInstructionView.setGravity(17);
                AssignFamilyActivity.this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
                AssignFamilyActivity.this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                AssignFamilyActivity.this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.1.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AssignFamilyActivity.this.navigateToHomeScreen(false);
                    }
                });
                AssignFamilyActivity.this.hideProcessDialog();
            }
        });
    }

    public void addSearchScreen() {
        this.footerView.setVisibility(8);
        final TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.FAMILY_ID, 102, 22, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                AssignFamilyActivity.this.dismissKeyboard();
            }
        });
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new FamilyIdTextWatcher(editText.getEditText()));
        }
        final TextInputLayout editText2 = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID, 103, -1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                AssignFamilyActivity.this.dismissKeyboard();
            }
        });
        if (editText2.getEditText() != null) {
            editText2.getEditText().addTextChangedListener(new MemberIdTextWatcher(editText2.getEditText()));
        }
        final MaterialButton customButton = MyStaticComponents.getCustomButton(this, UtilBean.getMyLabel("Search"), 104, null);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SEARCH_FOR_FAMILY)));
        final RadioGroup radioGroup = new RadioGroup(this);
        MaterialRadioButton radioButton = MyStaticComponents.getRadioButton(this, LabelConstants.SEARCH_WITH_FAMILY_ID, 10);
        radioButton.setChecked(true);
        MaterialRadioButton radioButton2 = MyStaticComponents.getRadioButton(this, LabelConstants.SEARCH_WITH_MEMBER_ID, 11);
        radioGroup.addView(radioButton);
        radioGroup.addView(radioButton2);
        this.bodyLayoutContainer.addView(radioGroup);
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(customButton);
        this.checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.4
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i) {
                AssignFamilyActivity.this.familyDataBean = null;
                AssignFamilyActivity.this.checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
                AssignFamilyActivity.this.bodyLayoutContainer.removeView(editText);
                AssignFamilyActivity.this.bodyLayoutContainer.removeView(editText2);
                AssignFamilyActivity.this.bodyLayoutContainer.removeView(customButton);
                AssignFamilyActivity.this.bodyLayoutContainer.removeView(AssignFamilyActivity.this.familyDetailsLayout);
                if (AssignFamilyActivity.this.checkedRadioButtonId == 10) {
                    AssignFamilyActivity.this.bodyLayoutContainer.addView(editText);
                    AssignFamilyActivity.this.bodyLayoutContainer.addView(customButton);
                } else if (AssignFamilyActivity.this.checkedRadioButtonId == 11) {
                    AssignFamilyActivity.this.bodyLayoutContainer.addView(editText2);
                    AssignFamilyActivity.this.bodyLayoutContainer.addView(customButton);
                }
            }
        });
        customButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!AssignFamilyActivity.this.sewaService.isOnline()) {
                    AssignFamilyActivity.this.showNotOnlineMessage();
                    return;
                }
                AssignFamilyActivity.this.showProcessDialog();
                AssignFamilyActivity.this.bodyLayoutContainer.removeView(AssignFamilyActivity.this.familyDetailsLayout);
                AssignFamilyActivity.this.familyDataBean = null;
                if (AssignFamilyActivity.this.checkedRadioButtonId != 10) {
                    if (AssignFamilyActivity.this.checkedRadioButtonId == 11) {
                        if (editText2.getEditText().getText().toString().trim().length() <= 1) {
                            AssignFamilyActivity.this.dismissKeyboard();
                            SewaUtil.generateToast(AssignFamilyActivity.this, UtilBean.getMyLabel(LabelConstants.MEMBER_ID_REQUIRED_ALERT));
                        } else {
                            AssignFamilyActivity.this.getFamilyDataBeanFromServer(editText2.getEditText().getText().toString().toUpperCase(), false);
                        }
                    } else {
                        SewaUtil.generateToast(AssignFamilyActivity.this, UtilBean.getMyLabel(LabelConstants.OPTION_SELECTION_REQUIRED_TO_SEARCH_ALERT));
                    }
                } else if (editText.getEditText().getText().toString().trim().length() <= 3) {
                    AssignFamilyActivity.this.dismissKeyboard();
                    SewaUtil.generateToast(AssignFamilyActivity.this, UtilBean.getMyLabel(LabelConstants.FAMILY_ID_REQUIRED_ALERT));
                } else {
                    AssignFamilyActivity.this.getFamilyDataBeanFromServer(editText.getEditText().getText().toString().toUpperCase(), true);
                }
                AssignFamilyActivity.this.hideProcessDialog();
            }
        });
    }

    public void getFamilyDataBeanFromServer(String str, Boolean bool) {
        try {
            Map<String, FamilyDataBean> familyToBeAssignedBySearchString = this.sewaServiceRestClient.getFamilyToBeAssignedBySearchString(str, bool);
            if (familyToBeAssignedBySearchString != null && !familyToBeAssignedBySearchString.isEmpty()) {
                for (Map.Entry<String, FamilyDataBean> entry : familyToBeAssignedBySearchString.entrySet()) {
                    this.errorString = entry.getKey();
                    this.familyDataBean = entry.getValue();
                }
                showFamilyDetails();
                return;
            }
            dismissKeyboard();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.6
                @Override // java.lang.Runnable
                public void run() {
                    SewaUtil.generateToast(AssignFamilyActivity.this, UtilBean.getMyLabel(LabelConstants.FAMILY_NOT_FOUND));
                    AssignFamilyActivity.this.processDialog.dismiss();
                }
            });
        } catch (RestHttpException e) {
            Log.e(getClass().getName(), null, e);
            dismissKeyboard();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.7
                @Override // java.lang.Runnable
                public void run() {
                    SewaUtil.generateToast(AssignFamilyActivity.this, UtilBean.getMyLabel(LabelConstants.FAMILY_NOT_FOUND));
                    AssignFamilyActivity.this.processDialog.dismiss();
                }
            });
        }
    }

    public void showFamilyDetails() {
        dismissKeyboard();
        if (this.familyDataBean != null) {
            LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this, 105, 1, new LinearLayout.LayoutParams(-2, -2));
            this.familyDetailsLayout = linearLayout;
            linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
            this.familyDetailsLayout.addView(MyStaticComponents.generateAnswerView(this, this.familyDataBean.getFamilyId()));
            this.familyDetailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.MEMBERS_INFO)));
            this.familyDetailsLayout.addView(UtilBean.getMembersListForDisplay(this, this.familyDataBean));
            this.bodyLayoutContainer.addView(this.familyDetailsLayout);
            this.footerView.setVisibility(0);
        } else {
            SewaUtil.generateToast(this, UtilBean.getMyLabel(this.errorString));
        }
        this.processDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissKeyboard() {
        View currentFocus = getWindow().getCurrentFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) this.context.getSystemService("input_method");
        if (currentFocus != null) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    private void addVillageSelectionSpinner() {
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE)));
        String[] strArr = new String[this.locationBeans.size()];
        Iterator<LocationBean> it = this.locationBeans.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        this.spinner = spinner;
        this.bodyLayoutContainer.addView(spinner);
    }

    public void showNotOnlineMessage() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AssignFamilyActivity.this.myAlertDialog.dismiss();
                AssignFamilyActivity.this.navigateToHomeScreen(false);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
        this.myAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.9
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                AssignFamilyActivity.this.myAlertDialog.dismiss();
                AssignFamilyActivity.this.navigateToHomeScreen(false);
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_ASSIGN_FAMILY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AssignFamilyActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    AssignFamilyActivity.this.myAlertDialog.dismiss();
                    AssignFamilyActivity.this.navigateToHomeScreen(false);
                    AssignFamilyActivity.this.finish();
                    return;
                }
                AssignFamilyActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        if (this.isFamilySelectionScreen) {
            navigateToHomeScreen(false);
            return true;
        }
        if (this.isFamilyAssignedScreen) {
            this.familyDataBean = null;
            this.bodyLayoutContainer.removeAllViews();
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
            addSearchScreen();
            this.isFamilySelectionScreen = Boolean.TRUE.booleanValue();
            this.isFamilyAssignedScreen = Boolean.FALSE.booleanValue();
            return true;
        }
        if (this.isVillageSelectionScreen) {
            this.bodyLayoutContainer.removeAllViews();
            this.familyDataBean = null;
            addSearchScreen();
            this.isFamilySelectionScreen = Boolean.TRUE.booleanValue();
            this.isVillageSelectionScreen = Boolean.FALSE.booleanValue();
            return true;
        }
        navigateToHomeScreen(false);
        return true;
    }
}
