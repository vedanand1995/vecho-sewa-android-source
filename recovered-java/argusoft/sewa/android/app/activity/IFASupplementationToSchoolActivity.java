package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.SchoolServiceImpl;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.Calendar;

/* loaded from: classes.dex */
public class IFASupplementationToSchoolActivity extends MenuActivity implements View.OnClickListener {
    private static final Integer REQUEST_CODE_FOR_IFA_TO_SCHOOL_ACTIVITY = 200;
    private static final String SCHOOL_SELECTION_SCREEN = "typeSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    SchoolServiceImpl schoolService;
    private String screen;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
            return;
        }
        setTitle(UtilBean.getTitleText(LabelConstants.IFA_SUPPLEMENTATION));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) linearLayoutGenerateDynamicScreenTemplate.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) linearLayoutGenerateDynamicScreenTemplate.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    private void setBodyDetail() {
        showProcessDialog();
        setSchoolSelectionScreen();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON && this.screen.equals("typeSelectionScreen")) {
            if (SharedStructureData.selectedSchoolForIFA != null) {
                startDynamicFormActivity();
            } else {
                SewaUtil.generateToast(this.context, "Please select school");
            }
        }
    }

    public void setSchoolSelectionScreen() {
        this.screen = "typeSelectionScreen";
        SharedStructureData.selectedSchoolForIFA = null;
        this.bodyLayoutContainer.removeAllViews();
        SharedStructureData.schoolService = this.schoolService;
        this.bodyLayoutContainer.addView(MyDynamicComponents.getSchoolComponent(this.context, new QueFormBean()));
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    private void startDynamicFormActivity() {
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SERVICE_DATE, String.valueOf(Calendar.getInstance().getTimeInMillis()));
        if (SharedStructureData.selectedSchoolForIFA != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SCHOOL_NAME, SharedStructureData.selectedSchoolForIFA.getName());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, SharedStructureData.selectedSchoolForIFA.getName());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, SharedStructureData.selectedSchoolForIFA.getName());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SCHOOL_ACTUAL_ID, String.valueOf(SharedStructureData.selectedSchoolForIFA.getActualId()));
        }
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        intent.putExtra("entity", FormConstants.IFA_TO_SCHOOL);
        startActivityForResult(intent, REQUEST_CODE_FOR_IFA_TO_SCHOOL_ACTIVITY.intValue());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.CLOSE_THE_REGISTRATION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.IFASupplementationToSchoolActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m229xc4147678(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$0$com-argusoft-sewa-android-app-activity-IFASupplementationToSchoolActivity, reason: not valid java name */
    /* synthetic */ void m229xc4147678(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        navigateToHomeScreen(false);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        if (this.screen.equals("typeSelectionScreen")) {
            this.bodyLayoutContainer.removeAllViews();
            navigateToHomeScreen(false);
        }
        return true;
    }
}
