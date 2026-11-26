package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TableLayout;
import android.widget.TableRow;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.asynctask.ServerIsAliveAsyncTask;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.listeners.DateChangeListenerStatic;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public class WorkRegisterActivity extends MenuActivity implements View.OnClickListener {
    private static final String DATE_SELECTION_SCREEN = "dateSelectionScreen";
    private static final int LIMIT = 100;
    private static final String TABLE_SCREEN = "tableScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout fromDate;
    private DateChangeListenerStatic fromDateListener;
    private LinearLayout globalPanel;
    private Button loadMore;
    private String locationId;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private String screen;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private TableLayout tableLayout;
    private LinearLayout toDate;
    private DateChangeListenerStatic toDateListener;
    private Spinner villageSpinner;
    private final SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy", Locale.getDefault());
    private int numberOfRows = 0;
    private List<String> headNames = null;
    private List<LocationBean> locationBeans = new ArrayList();

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.context = this;
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
        setTitle(UtilBean.getTitleText(LabelConstants.WORK_REGISTER_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        if (!this.sewaService.isOnline()) {
            showNotOnlineMessage();
        } else {
            setBodyDetail();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!this.sewaService.isOnline()) {
            showNotOnlineMessage();
        }
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screen;
            str.hashCode();
            switch (str) {
                case "dateSelectionScreen":
                    if (validateDate() && checkServerIsAlive()) {
                        setTableScreen();
                        break;
                    }
                    break;
                case "villageSelectionScreen":
                    addDateSelectionScreen();
                    String string = this.villageSpinner.getSelectedItem().toString();
                    for (LocationBean locationBean : this.locationBeans) {
                        if (string.equals(locationBean.getName())) {
                            this.locationId = locationBean.getActualID().toString();
                            break;
                        }
                    }
                    break;
                case "tableScreen":
                    navigateToHomeScreen(false);
                    break;
            }
        }
    }

    public boolean checkServerIsAlive() throws ExecutionException, InterruptedException {
        try {
            Boolean bool = new ServerIsAliveAsyncTask(this.sewaService).execute(new Void[0]).get();
            if (Boolean.FALSE.equals(bool)) {
                SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.SERVER_NOT_WORKING_ALERT));
            }
            return bool.booleanValue();
        } catch (InterruptedException | ExecutionException e) {
            e.printStackTrace();
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public boolean validateDate() {
        if (this.fromDateListener.getDateSet() == null) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_FROM_DATE));
            return false;
        }
        if (this.toDateListener.getDateSet() == null) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_TO_DATE));
            return false;
        }
        if (!this.toDateListener.getDateSet().before(this.fromDateListener.getDateSet())) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.TO_DATE_CANNOT_BE_BEFORE_FROM_DATE));
        return false;
    }

    public void setTableScreen() {
        this.screen = TABLE_SCREEN;
        showProcessDialog();
        this.bodyLayoutContainer.removeAllViews();
        retrieveData(true, 100, 0);
        this.nextButton.setText("Okay");
    }

    public void setBodyDetail() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.locationBeans = distinctLocationsAssignedToUser;
        if (distinctLocationsAssignedToUser.size() == 1) {
            addDateSelectionScreen();
            this.locationId = this.locationBeans.get(0).getActualID().toString();
        } else {
            if (this.locationBeans.isEmpty()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.DATA_NOT_SYNCED_ALERT)));
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterActivity.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        WorkRegisterActivity.this.navigateToHomeScreen(false);
                    }
                };
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(onClickListener);
                this.screen = VILLAGE_SELECTION_SCREEN;
                hideProcessDialog();
                return;
            }
            addVillageSelectionSpinner();
        }
    }

    public void showNotOnlineMessage() {
        hideProcessDialog();
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WorkRegisterActivity.this.myAlertDialog.dismiss();
                WorkRegisterActivity.this.navigateToHomeScreen(false);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
        this.myAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterActivity.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                WorkRegisterActivity.this.myAlertDialog.dismiss();
                WorkRegisterActivity.this.navigateToHomeScreen(false);
            }
        });
    }

    private void addVillageSelectionSpinner() {
        this.screen = VILLAGE_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        String[] strArr = new String[this.locationBeans.size()];
        Iterator<LocationBean> it = this.locationBeans.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        if (this.villageSpinner == null) {
            this.villageSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE)));
        this.bodyLayoutContainer.addView(this.villageSpinner);
        hideProcessDialog();
    }

    private void addDateSelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = DATE_SELECTION_SCREEN;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ValidationTagBean(FormulaConstants.VALIDATION_IS_FUTURE_DATE, "Invalid Date"));
        if (this.fromDate == null) {
            this.fromDateListener = new DateChangeListenerStatic(this.context, arrayList);
            this.fromDate = MyStaticComponents.getCustomDatePickerForStatic(this.context, this.fromDateListener, 1001);
        }
        if (this.toDate == null) {
            this.toDateListener = new DateChangeListenerStatic(this.context, arrayList);
            this.toDate = MyStaticComponents.getCustomDatePickerForStatic(this.context, this.toDateListener, 1002);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_FROM_DATE)));
        this.bodyLayoutContainer.addView(this.fromDate);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_TO_DATE)));
        this.bodyLayoutContainer.addView(this.toDate);
        hideProcessDialog();
    }

    public void retrieveData(boolean z, int i, int i2) {
        if (this.locationId == null) {
            hideProcessDialog();
            return;
        }
        if (this.fromDateListener.getDateSet() == null) {
            hideProcessDialog();
            return;
        }
        if (this.toDateListener.getDateSet() == null) {
            hideProcessDialog();
            return;
        }
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(FirebaseAnalytics.Param.LOCATION_ID, this.locationId);
            linkedHashMap.put("from_date", this.sdf.format(this.fromDateListener.getDateSet()));
            linkedHashMap.put("to_date", this.sdf.format(this.toDateListener.getDateSet()));
            linkedHashMap.put("limit", Integer.valueOf(i));
            linkedHashMap.put("offset", Integer.valueOf(i2));
            QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("mob_work_register_detail", null, linkedHashMap, 0));
            if (queryMobDataBeanExecuteQuery != null && queryMobDataBeanExecuteQuery.getResult() != null) {
                List<LinkedHashMap<String, Object>> result = queryMobDataBeanExecuteQuery.getResult();
                if (result != null && !result.isEmpty()) {
                    Set<String> setKeySet = result.get(0).keySet();
                    this.headNames = new ArrayList();
                    for (String str : setKeySet) {
                        if (!str.startsWith("hidden")) {
                            this.headNames.add(str);
                        }
                    }
                    if (z) {
                        this.numberOfRows = 0;
                        createTableLayout(this.headNames, result);
                        return;
                    } else {
                        addDataToTable(this.tableLayout, result);
                        return;
                    }
                }
                if (this.loadMore != null) {
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterActivity.4
                        @Override // java.lang.Runnable
                        public void run() {
                            WorkRegisterActivity.this.bodyLayoutContainer.removeView(WorkRegisterActivity.this.loadMore);
                        }
                    });
                }
                if (z) {
                    this.numberOfRows = 0;
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterActivity.5
                        @Override // java.lang.Runnable
                        public void run() {
                            WorkRegisterActivity.this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(WorkRegisterActivity.this.context, UtilBean.getMyLabel(LabelConstants.NO_SERVICES_PROVIDED_DURING_SELECTED_PERIOD)));
                        }
                    });
                }
                hideProcessDialog();
                return;
            }
            hideProcessDialog();
        } catch (RestHttpException e) {
            hideProcessDialog();
            Log.e(getClass().getName(), null, e);
        }
    }

    public void createTableLayout(List<String> list, List<LinkedHashMap<String, Object>> list2) {
        TableLayout tableLayout = new TableLayout(this);
        this.tableLayout = tableLayout;
        tableLayout.setPadding(10, 10, 10, 10);
        this.tableLayout.setLayoutParams(new TableLayout.LayoutParams(-1, -1));
        TableRow tableRow = new TableRow(this);
        tableRow.setPadding(10, 15, 10, 15);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            tableRow.setBackgroundResource(R.drawable.table_row_selector);
        } else {
            tableRow.setBackgroundResource(R.drawable.spinner_item_border);
        }
        tableRow.setLayoutParams(new TableRow.LayoutParams(-1));
        for (String str : list) {
            MaterialTextView materialTextView = new MaterialTextView(this.context);
            materialTextView.setGravity(17);
            materialTextView.setPadding(10, 10, 10, 10);
            materialTextView.setText(UtilBean.getMyLabel(str));
            materialTextView.setTypeface(Typeface.DEFAULT_BOLD);
            tableRow.addView(materialTextView);
        }
        this.tableLayout.addView(tableRow, 0);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this);
        horizontalScrollView.addView(this.tableLayout);
        this.bodyLayoutContainer.addView(horizontalScrollView);
        addDataToTable(this.tableLayout, list2);
    }

    public void addDataToTable(TableLayout tableLayout, List<LinkedHashMap<String, Object>> list) {
        this.bodyLayoutContainer.removeView(this.loadMore);
        Iterator<LinkedHashMap<String, Object>> it = list.iterator();
        while (it.hasNext()) {
            addTableRow(tableLayout, this.numberOfRows + 1, it.next());
            this.numberOfRows++;
        }
        if (list.size() == 100) {
            addLoadMoreButton();
        }
        hideProcessDialog();
    }

    private void addTableRow(TableLayout tableLayout, int i, final Map<String, Object> map) {
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(-1);
        TableRow tableRow = new TableRow(this);
        tableRow.setPadding(10, 15, 10, 15);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            tableRow.setBackgroundResource(R.drawable.table_row_selector);
        } else {
            tableRow.setBackgroundResource(R.drawable.spinner_item_border);
        }
        tableRow.setLayoutParams(layoutParams);
        for (String str : this.headNames) {
            MaterialTextView materialTextView = new MaterialTextView(this.context);
            materialTextView.setGravity(17);
            materialTextView.setPadding(10, 10, 10, 10);
            Object obj = map.get(str);
            if (obj != null) {
                materialTextView.setText(obj.toString());
                materialTextView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterActivity.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Object obj2 = map.get("hiddenVisitId");
                        Object obj3 = map.get("hiddenServiceType");
                        if (obj2 == null || obj3 == null) {
                            return;
                        }
                        Intent intent = new Intent(WorkRegisterActivity.this.context, (Class<?>) WorkRegisterLineListActivity_.class);
                        intent.putExtra("visitId", obj2.toString());
                        intent.putExtra("serviceType", obj3.toString());
                        WorkRegisterActivity.this.startActivity(intent);
                    }
                });
                tableRow.addView(materialTextView);
            }
        }
        tableLayout.addView(tableRow, i);
    }

    private void addLoadMoreButton() {
        this.bodyLayoutContainer.removeView(this.loadMore);
        if (this.loadMore == null) {
            MaterialButton button = MyStaticComponents.getButton(this.context, UtilBean.getMyLabel(LabelConstants.LOAD_MORE), 101, new LinearLayout.LayoutParams(-1, -2));
            this.loadMore = button;
            button.setGravity(17);
            this.loadMore.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    WorkRegisterActivity.this.showProcessDialog();
                    WorkRegisterActivity workRegisterActivity = WorkRegisterActivity.this;
                    workRegisterActivity.retrieveData(false, 100, workRegisterActivity.numberOfRows);
                }
            });
        }
        this.bodyLayoutContainer.addView(this.loadMore);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() == 16908332) {
            String str2 = this.screen;
            str2.hashCode();
            switch (str2) {
                case "dateSelectionScreen":
                    if (this.locationBeans.size() == 1 || this.locationBeans.isEmpty()) {
                        navigateToHomeScreen(false);
                        break;
                    } else {
                        addVillageSelectionSpinner();
                        this.nextButton.setText("Next");
                        break;
                    }
                case "villageSelectionScreen":
                    navigateToHomeScreen(false);
                    break;
                case "tableScreen":
                    addDateSelectionScreen();
                    this.nextButton.setText("Next");
                    this.numberOfRows = 0;
                    break;
            }
        }
        return true;
    }
}
