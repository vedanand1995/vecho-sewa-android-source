package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.DailyNutritionLogServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.DailyNutritionLogBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DailyNutritionActivity extends MenuActivity implements View.OnClickListener {
    private List<LocationBean> ashaAreaList = new ArrayList();
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    DailyNutritionLogServiceImpl dailyNutritionLogService;
    Dao<FamilyBean, Integer> familyBeanDao;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    Dao<MemberBean, Integer> memberBeanDao;
    private Button nextButton;
    private Integer selectedAshaArea;
    SewaServiceImpl sewaService;
    TechoAshaServiceImpl techoAshaService;

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
        setTitle(UtilBean.getTitleText(UtilBean.getFullFormOfEntity().get(FormConstants.TECHO_AWW_DAILY_NUTRITION)));
    }

    public void checkIfAlreadyFilled() {
        DailyNutritionLogBean dailyNutritionLogBeanRetrieveDailyNutritionLogByLocationId;
        try {
            dailyNutritionLogBeanRetrieveDailyNutritionLogByLocationId = this.dailyNutritionLogService.retrieveDailyNutritionLogByLocationId(this.selectedAshaArea);
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
            dailyNutritionLogBeanRetrieveDailyNutritionLogByLocationId = null;
        }
        if (dailyNutritionLogBeanRetrieveDailyNutritionLogByLocationId != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            if (dailyNutritionLogBeanRetrieveDailyNutritionLogByLocationId.getSeviceDate().longValue() > calendar.getTime().getTime()) {
                this.alertDialog = new MyAlertDialog(this, false, LabelConstants.FORM_FILLED_FOR_THE_DAY_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.DailyNutritionActivity.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        DailyNutritionActivity.this.alertDialog.dismiss();
                        if (DailyNutritionActivity.this.ashaAreaList.size() == 1) {
                            DailyNutritionActivity.this.navigateToHomeScreen(false);
                        } else {
                            DailyNutritionActivity.this.addAshaAreaSelectionSpinner();
                        }
                    }
                }, DynamicUtils.BUTTON_OK);
                this.alertDialog.show();
                return;
            } else {
                addChildData();
                return;
            }
        }
        addChildData();
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> listRetrieveAshaAreasAssignedToUser = this.techoAshaService.retrieveAshaAreasAssignedToUser();
        this.ashaAreaList = listRetrieveAshaAreasAssignedToUser;
        if (listRetrieveAshaAreasAssignedToUser.size() == 1) {
            this.selectedAshaArea = this.ashaAreaList.get(0).getActualID();
            checkIfAlreadyFilled();
        } else if (this.ashaAreaList.isEmpty()) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DailyNutritionActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    DailyNutritionActivity.this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(DailyNutritionActivity.this.context, UtilBean.getMyLabel(LabelConstants.DATA_NOT_SYNCED_ALERT)));
                    DailyNutritionActivity.this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                    DailyNutritionActivity.this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.DailyNutritionActivity.2.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            DailyNutritionActivity.this.navigateToHomeScreen(false);
                        }
                    });
                    DailyNutritionActivity.this.hideProcessDialog();
                }
            });
        } else {
            addAshaAreaSelectionSpinner();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            nextButtonPressed();
        }
    }

    private void nextButtonPressed() {
        showProcessDialog();
        String string = this.ashaAreaSpinner.getSelectedItem().toString();
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            LocationBean next = it.next();
            if (string.equals(next.getName())) {
                this.selectedAshaArea = next.getActualID();
                break;
            }
        }
        this.bodyLayoutContainer.removeAllViews();
        checkIfAlreadyFilled();
    }

    public void addChildData() {
        setSubTitle(null);
        try {
            List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().eq("areaId", this.selectedAshaArea).and().in("state", FhsConstants.FHS_ACTIVE_CRITERIA_FAMILY_STATES).query();
            ArrayList arrayList = new ArrayList();
            Iterator<FamilyBean> it = listQuery.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getFamilyId());
            }
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -3);
            Date time = calendar.getTime();
            calendar.add(1, -3);
            List<MemberBean> listQuery2 = this.memberBeanDao.queryBuilder().where().in("familyId", arrayList).and().between("dob", calendar.getTime(), time).and().notIn("state", FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES).query();
            ArrayList arrayList2 = new ArrayList();
            for (MemberBean memberBean : listQuery2) {
                OptionDataBean optionDataBean = new OptionDataBean();
                optionDataBean.setKey(memberBean.getActualId());
                optionDataBean.setValue(memberBean.getFirstName() + " " + memberBean.getMiddleName() + " " + memberBean.getLastName());
                arrayList2.add(optionDataBean);
            }
            SharedStructureData.relatedPropertyHashTable.put("locationId", this.selectedAshaArea.toString());
            SharedStructureData.childrenFrom3To6Years = arrayList2;
            startDynamicFormActivity();
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
    }

    public void addAshaAreaSelectionSpinner() {
        this.bodyLayoutContainer.removeAllViews();
        setSubTitle(null);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA));
        String[] strArr = new String[this.ashaAreaList.size()];
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        this.ashaAreaSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        if (this.selectedAshaArea != null) {
            for (LocationBean locationBean : this.ashaAreaList) {
                if (locationBean.getActualID().intValue() == this.selectedAshaArea.intValue()) {
                    this.ashaAreaSpinner.setSelection(Arrays.asList(strArr).indexOf(locationBean.getName()));
                }
            }
        }
        this.bodyLayoutContainer.addView(this.ashaAreaSpinner);
        hideProcessDialog();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        navigateToHomeScreen(false);
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ON_DAILY_NUTRITION_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.DailyNutritionActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    DailyNutritionActivity.this.alertDialog.dismiss();
                    DailyNutritionActivity.this.navigateToHomeScreen(false);
                    DailyNutritionActivity.this.finish();
                    return;
                }
                DailyNutritionActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    private void startDynamicFormActivity() {
        showProcessDialog();
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, UtilBean.getMyLabel(LabelConstants.DAILY_NUTRITION_FORM));
        intent.putExtra("entity", FormConstants.TECHO_AWW_DAILY_NUTRITION);
        startActivityForResult(intent, 1013);
        hideProcessDialog();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1013) {
            if (this.ashaAreaList.size() == 1) {
                navigateToHomeScreen(false);
            } else {
                addAshaAreaSelectionSpinner();
            }
        }
    }
}
