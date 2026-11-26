package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.RchVillageProfileDataBean;
import com.argusoft.sewa.android.app.databean.WorkerDetailDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class RchVillageProfileActivity extends MenuActivity implements View.OnClickListener {
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    private Button nextButton;
    private LocationBean selectedLocation;
    private Spinner spinner;
    private RchVillageProfileDataBean villageProfile;
    private List<LocationBean> locationBeans = new ArrayList();
    private boolean isVillageSelectionScreen = Boolean.FALSE.booleanValue();
    private boolean isVillageProfileScreen = Boolean.FALSE.booleanValue();
    private boolean isContactDetailsScreen = Boolean.FALSE.booleanValue();
    private boolean isWorkerDetailsScreen = Boolean.FALSE.booleanValue();

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
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
        setTitle(UtilBean.getTitleText(LabelConstants.VILLAGE_PROFILE_TITLE));
    }

    private void initView() {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.MSG_PROCESSING);
        this.processDialog.show();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.locationBeans = distinctLocationsAssignedToUser;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.selectedLocation = this.locationBeans.get(0);
            this.isVillageSelectionScreen = Boolean.FALSE.booleanValue();
            this.isVillageProfileScreen = Boolean.TRUE.booleanValue();
            getRchVillageProfileDataBeanNetworkCall();
            return;
        }
        if (this.locationBeans.isEmpty()) {
            this.isVillageProfileScreen = Boolean.TRUE.booleanValue();
            getRchVillageProfileDataBeanNetworkCall();
        } else {
            this.isVillageSelectionScreen = Boolean.TRUE.booleanValue();
            addVillageSelectionSpinner();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
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
                        this.selectedLocation = next;
                        break;
                    }
                }
                this.bodyLayoutContainer.removeAllViews();
                getRchVillageProfileDataBeanNetworkCall();
                this.isVillageSelectionScreen = Boolean.FALSE.booleanValue();
                this.isVillageProfileScreen = Boolean.TRUE.booleanValue();
                return;
            }
            if (this.isVillageProfileScreen) {
                this.bodyLayoutContainer.removeAllViews();
                createContactDetailsScreen();
                this.isContactDetailsScreen = Boolean.TRUE.booleanValue();
                this.isVillageProfileScreen = Boolean.FALSE.booleanValue();
                return;
            }
            if (this.isContactDetailsScreen) {
                this.bodyLayoutContainer.removeAllViews();
                createWorkerDetailsScreen();
                this.isContactDetailsScreen = Boolean.FALSE.booleanValue();
                this.isWorkerDetailsScreen = Boolean.TRUE.booleanValue();
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                return;
            }
            navigateToHomeScreen(false);
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

    public void getRchVillageProfileDataBeanNetworkCall() {
        this.villageProfile = this.fhsService.getRchVillageProfileDataBean(this.selectedLocation.getActualID().toString());
        createVillageProfileScreen();
    }

    public void createVillageProfileScreen() {
        MaterialTextView materialTextViewGenerateTitleView = MyStaticComponents.generateTitleView(this, this.selectedLocation.getName());
        materialTextViewGenerateTitleView.setGravity(17);
        this.bodyLayoutContainer.addView(materialTextViewGenerateTitleView);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.BASIC_DETAILS));
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, "Total Population : "));
        linearLayout.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getTotalPopulation().toString()));
        this.bodyLayoutContainer.addView(linearLayout);
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout2.addView(MyStaticComponents.generateQuestionView(null, null, this, "Total Eligible Couple : "));
        linearLayout2.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getTotalEligibleCouple().toString()));
        this.bodyLayoutContainer.addView(linearLayout2);
        LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout3.addView(MyStaticComponents.generateQuestionView(null, null, this, "Pregnant Women Count : "));
        linearLayout3.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getPregnantWomenCount().toString()));
        this.bodyLayoutContainer.addView(linearLayout3);
        LinearLayout linearLayout4 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout4.addView(MyStaticComponents.generateQuestionView(null, null, this, "Infant Child Count : "));
        linearLayout4.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getInfantChildCount().toString()));
        this.bodyLayoutContainer.addView(linearLayout4);
    }

    private void createContactDetailsScreen() {
        MaterialTextView materialTextViewGenerateTitleView = MyStaticComponents.generateTitleView(this, this.selectedLocation.getName());
        materialTextViewGenerateTitleView.setGravity(17);
        this.bodyLayoutContainer.addView(materialTextViewGenerateTitleView);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.EMERGENCY_CONTACT_DETAILS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Nearby Hospital Address & Phone : "));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getNearbyHospitalDetail()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "FRU Name & Phone : "));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getFruDetail()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Ambulance Number : "));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getAmbulanceNumber()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Transportation Number : "));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getTransportationNumber()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "National Call Center Number : "));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getNationalCallCentreNumber()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Helpline Number : "));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getHelplineNumber()));
    }

    private void createWorkerDetailsScreen() {
        MaterialTextView materialTextViewGenerateTitleView = MyStaticComponents.generateTitleView(this, this.selectedLocation.getName());
        materialTextViewGenerateTitleView.setGravity(17);
        this.bodyLayoutContainer.addView(materialTextViewGenerateTitleView);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.ASHA_DETAIL));
        int i = 1;
        for (WorkerDetailDataBean workerDetailDataBean : this.villageProfile.getAshaDetail()) {
            LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this, 1, 0, null);
            linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, "Asha" + i + " Name : "));
            linearLayout.addView(MyStaticComponents.generateAnswerView(this, workerDetailDataBean.getName()));
            this.bodyLayoutContainer.addView(linearLayout);
            LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
            linearLayout2.addView(MyStaticComponents.generateQuestionView(null, null, this, "Asha" + i + " Mobile Number : "));
            linearLayout2.addView(MyStaticComponents.generateAnswerView(this, workerDetailDataBean.getMobileNumber()));
            this.bodyLayoutContainer.addView(linearLayout2);
            LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
            linearLayout3.addView(MyStaticComponents.generateQuestionView(null, null, this, "Asha" + i + " Aadhaar Number : "));
            linearLayout3.addView(MyStaticComponents.generateAnswerView(this, workerDetailDataBean.getAadharNumber()));
            this.bodyLayoutContainer.addView(linearLayout3);
            i++;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.ANM_DETAIL));
        LinearLayout linearLayout4 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout4.addView(MyStaticComponents.generateQuestionView(null, null, this, "Name : "));
        linearLayout4.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getAnmDetail().getName()));
        this.bodyLayoutContainer.addView(linearLayout4);
        LinearLayout linearLayout5 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout5.addView(MyStaticComponents.generateQuestionView(null, null, this, "Mobile Number : "));
        linearLayout5.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getAnmDetail().getMobileNumber()));
        this.bodyLayoutContainer.addView(linearLayout5);
        LinearLayout linearLayout6 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout6.addView(MyStaticComponents.generateQuestionView(null, null, this, "Aadhaar Number : "));
        linearLayout6.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getAnmDetail().getAadharNumber()));
        this.bodyLayoutContainer.addView(linearLayout6);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.FHW_DETAIL));
        LinearLayout linearLayout7 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout7.addView(MyStaticComponents.generateQuestionView(null, null, this, "Name : "));
        linearLayout7.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getFhwDetail().getName()));
        this.bodyLayoutContainer.addView(linearLayout7);
        LinearLayout linearLayout8 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout8.addView(MyStaticComponents.generateQuestionView(null, null, this, "Mobile Number : "));
        linearLayout8.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getFhwDetail().getMobileNumber()));
        this.bodyLayoutContainer.addView(linearLayout8);
        LinearLayout linearLayout9 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout9.addView(MyStaticComponents.generateQuestionView(null, null, this, "Aadhaar Number : "));
        linearLayout9.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getFhwDetail().getAadharNumber()));
        this.bodyLayoutContainer.addView(linearLayout9);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.MPHW_DETAIL));
        LinearLayout linearLayout10 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout10.addView(MyStaticComponents.generateQuestionView(null, null, this, "Name : "));
        linearLayout10.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getFhwDetail().getName()));
        this.bodyLayoutContainer.addView(linearLayout10);
        LinearLayout linearLayout11 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout11.addView(MyStaticComponents.generateQuestionView(null, null, this, "Mobile Number : "));
        linearLayout11.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getFhwDetail().getMobileNumber()));
        this.bodyLayoutContainer.addView(linearLayout11);
        LinearLayout linearLayout12 = MyStaticComponents.getLinearLayout(this, 1, 0, null);
        linearLayout12.addView(MyStaticComponents.generateQuestionView(null, null, this, "Aadhaar Number : "));
        linearLayout12.addView(MyStaticComponents.generateAnswerView(this, this.villageProfile.getFhwDetail().getAadharNumber()));
        this.bodyLayoutContainer.addView(linearLayout12);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        if (this.isWorkerDetailsScreen) {
            this.bodyLayoutContainer.removeAllViews();
            createContactDetailsScreen();
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.isWorkerDetailsScreen = Boolean.FALSE.booleanValue();
            this.isContactDetailsScreen = Boolean.TRUE.booleanValue();
            return true;
        }
        if (this.isContactDetailsScreen) {
            this.bodyLayoutContainer.removeAllViews();
            createVillageProfileScreen();
            this.isContactDetailsScreen = Boolean.FALSE.booleanValue();
            this.isVillageProfileScreen = Boolean.TRUE.booleanValue();
            return true;
        }
        if (this.isVillageProfileScreen) {
            this.bodyLayoutContainer.removeAllViews();
            if (this.locationBeans.isEmpty()) {
                this.isVillageProfileScreen = Boolean.FALSE.booleanValue();
                navigateToHomeScreen(false);
                return true;
            }
            this.isVillageSelectionScreen = Boolean.TRUE.booleanValue();
            this.isVillageProfileScreen = Boolean.FALSE.booleanValue();
            addVillageSelectionSpinner();
            return true;
        }
        this.isVillageSelectionScreen = Boolean.FALSE.booleanValue();
        navigateToHomeScreen(false);
        return true;
    }
}
