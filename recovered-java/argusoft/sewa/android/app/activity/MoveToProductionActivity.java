package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.MoveToProductionServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MoveToProductionActivity extends MenuActivity implements View.OnClickListener {
    private LinearLayout bodyLayoutContainer;
    private LinearLayout globalPanel;
    MoveToProductionServiceImpl moveToProductoinService;
    SewaServiceImpl sewaService;
    private MaterialButtonToggleGroup yesNoToggleButton;
    private int counter = 0;
    private List<FormAccessibilityBean> formsTrainingCompleted = new ArrayList();
    private List<FormAccessibilityBean> formsToMoveToProductions = new ArrayList();

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
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
        setTitle(UtilBean.getTitleText(LabelConstants.MOVE_TO_PRODUCTION_ACTIVITY_TITLE));
        setSubTitle(null);
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.formsTrainingCompleted = this.moveToProductoinService.isAnyFormTrainingCompleted();
        addFormList();
    }

    private void addFormList() {
        if (!this.formsTrainingCompleted.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.CONGRATULATIONS));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, UtilBean.getMyLabel("You have completed your training in this form : " + this.formsTrainingCompleted.get(this.counter).getForm())));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.CONFIRMATION_TO_MOVE_PRODUCTION));
            MaterialButtonToggleGroup yesNoToggleButton = MyStaticComponents.getYesNoToggleButton(this.context);
            this.yesNoToggleButton = yesNoToggleButton;
            this.bodyLayoutContainer.addView(yesNoToggleButton);
        }
        hideProcessDialog();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            List<Integer> checkedButtonIds = this.yesNoToggleButton.getCheckedButtonIds();
            if (!checkedButtonIds.isEmpty()) {
                if (checkedButtonIds.get(0).intValue() == 10002) {
                    if (!this.formsToMoveToProductions.contains(this.formsTrainingCompleted.get(this.counter))) {
                        this.formsToMoveToProductions.add(this.formsTrainingCompleted.get(this.counter));
                    }
                } else if (checkedButtonIds.get(0).intValue() == 10003) {
                    this.formsToMoveToProductions.remove(this.formsTrainingCompleted.get(this.counter));
                }
                int i = this.counter + 1;
                this.counter = i;
                if (i < this.formsTrainingCompleted.size()) {
                    this.bodyLayoutContainer.removeAllViews();
                    addFormList();
                    return;
                } else {
                    this.moveToProductoinService.saveFormsToMoveToProduction(this.formsToMoveToProductions);
                    sendDataToServerIfOnline();
                    navigateToHomeScreen(false);
                    return;
                }
            }
            SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_AN_OPTION));
        }
    }

    public void sendDataToServerIfOnline() {
        if (this.sewaService.isOnline()) {
            this.moveToProductoinService.postUserReadyToMoveProduction();
            this.moveToProductoinService.saveFormAccessibilityBeansFromServer();
        }
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() == 16908332) {
            int i = this.counter;
            if (i != 0) {
                this.counter = i - 1;
                this.bodyLayoutContainer.removeAllViews();
                addFormList();
            } else {
                navigateToHomeScreen(false);
            }
        }
        return true;
    }
}
