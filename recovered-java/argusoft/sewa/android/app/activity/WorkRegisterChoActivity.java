package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.component.listeners.DateChangeListenerStatic;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.core.impl.UserServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.UserBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class WorkRegisterChoActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ASHA_SELECTION_SCREEN = "ashaSelectionScreen";
    private static final String DATE_SELECTION_SCREEN = "dateSelectionScreen";
    private static final int LIMIT = 100;
    private static final String TABLE_SCREEN = "tableScreen";
    private String areaId;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout fromDate;
    private DateChangeListenerStatic fromDateListener;
    private LinearLayout globalPanel;
    private Button loadMore;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberAvailableView;
    private MaterialTextView pagingHeaderView;
    private PagingListView pagingListView;
    private String screen;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private TableLayout tableLayout;
    private LinearLayout toDate;
    private DateChangeListenerStatic toDateListener;
    UserServiceImpl userService;
    public Context context = this;
    private SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy", Locale.getDefault());
    private int numberOfRows = 0;
    private List<String> headNames = null;
    private List<LocationBean> areaList = new ArrayList();
    private int selectedPeopleIndex = -1;
    private List<UserBean> ashaList = new ArrayList();
    List<UserBean> users = new ArrayList();
    private int userId = 0;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
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
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.ashaList = this.userService.retrieveUsersAssigned();
        if (!this.sewaService.isOnline()) {
            showNotOnlineMessage();
        } else {
            setAshaSelectionScreen();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!this.sewaService.isOnline()) {
            showNotOnlineMessage();
        }
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            setSubTitle(null);
            String str = this.screen;
            str.hashCode();
            switch (str) {
                case "dateSelectionScreen":
                    if (this.fromDateListener.getDateSet() == null) {
                        SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_FROM_DATE));
                        break;
                    } else if (this.toDateListener.getDateSet() == null) {
                        SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_TO_DATE));
                        break;
                    } else {
                        this.screen = TABLE_SCREEN;
                        showProcessDialog();
                        this.bodyLayoutContainer.removeAllViews();
                        retrieveData(true, 100, 0);
                        this.nextButton.setText("Okay");
                        break;
                    }
                case "ashaSelectionScreen":
                    addDateSelectionScreen();
                    break;
                case "tableScreen":
                    navigateToHomeScreen(false);
                    break;
            }
        }
    }

    public void setAshaSelectionScreen() {
        this.users.clear();
        this.screen = ASHA_SELECTION_SCREEN;
        this.users.addAll(this.ashaList);
        List<UserBean> list = this.users;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, "Select an Asha User");
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.users), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    WorkRegisterChoActivity.this.selectedPeopleIndex = i;
                    WorkRegisterChoActivity workRegisterChoActivity = WorkRegisterChoActivity.this;
                    workRegisterChoActivity.userId = workRegisterChoActivity.users.get(WorkRegisterChoActivity.this.selectedPeopleIndex).getId();
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_ASHA_IN_AREA_FOR_INCENTIVES);
            this.noMemberAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        }
        hideProcessDialog();
    }

    public void showNotOnlineMessage() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WorkRegisterChoActivity.this.myAlertDialog.dismiss();
                WorkRegisterChoActivity.this.navigateToHomeScreen(false);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
        this.myAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                WorkRegisterChoActivity.this.myAlertDialog.dismiss();
                WorkRegisterChoActivity.this.navigateToHomeScreen(false);
            }
        });
    }

    private List<ListItemDataBean> getMembersList(List<UserBean> list) {
        ArrayList arrayList = new ArrayList();
        for (UserBean userBean : list) {
            arrayList.add(new ListItemDataBean(userBean.getUserName(), userBean.getLocationId(), UtilBean.getUserFullName(userBean)));
        }
        return arrayList;
    }

    public void addDateSelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = DATE_SELECTION_SCREEN;
        setSubTitle(null);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ValidationTagBean(FormulaConstants.VALIDATION_IS_FUTURE_DATE, "Invalid Date"));
        if (this.fromDate == null) {
            DateChangeListenerStatic dateChangeListenerStatic = new DateChangeListenerStatic(this.context, arrayList);
            this.fromDateListener = dateChangeListenerStatic;
            this.fromDate = MyStaticComponents.getCustomDatePickerForStatic(this.context, dateChangeListenerStatic, 1001);
        }
        if (this.toDate == null) {
            DateChangeListenerStatic dateChangeListenerStatic2 = new DateChangeListenerStatic(this.context, arrayList);
            this.toDateListener = dateChangeListenerStatic2;
            this.toDate = MyStaticComponents.getCustomDatePickerForStatic(this.context, dateChangeListenerStatic2, 1002);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_FROM_DATE));
        this.bodyLayoutContainer.addView(this.fromDate);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_TO_DATE));
        this.bodyLayoutContainer.addView(this.toDate);
        hideProcessDialog();
    }

    public void retrieveData(boolean z, int i, int i2) {
        if (this.userId == 0) {
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
            linkedHashMap.put("user_id", Integer.valueOf(this.userId));
            linkedHashMap.put("from_date", this.sdf.format(this.fromDateListener.getDateSet()));
            linkedHashMap.put("to_date", this.sdf.format(this.toDateListener.getDateSet()));
            linkedHashMap.put("limit", Integer.valueOf(i));
            linkedHashMap.put("offset", Integer.valueOf(i2));
            QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("mob_asha_work_register_detail_for_cho", null, linkedHashMap, 0));
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
                    } else {
                        addDataToTable(this.tableLayout, result);
                    }
                } else {
                    if (this.loadMore != null) {
                        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity.4
                            @Override // java.lang.Runnable
                            public void run() {
                                WorkRegisterChoActivity.this.bodyLayoutContainer.removeView(WorkRegisterChoActivity.this.loadMore);
                            }
                        });
                    }
                    if (z) {
                        this.numberOfRows = 0;
                        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity.5
                            @Override // java.lang.Runnable
                            public void run() {
                                WorkRegisterChoActivity.this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(WorkRegisterChoActivity.this.context, UtilBean.getMyLabel(LabelConstants.NO_SERVICES_PROVIDED_DURING_SELECTED_PERIOD)));
                            }
                        });
                    }
                }
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
                materialTextView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Object obj2 = map.get("hiddenVisitId");
                        Object obj3 = map.get("hiddenServiceType");
                        if (obj2 == null || obj3 == null) {
                            return;
                        }
                        Intent intent = new Intent(WorkRegisterChoActivity.this.context, (Class<?>) WorkRegisterLineListActivity_.class);
                        intent.putExtra("visitId", obj2.toString());
                        intent.putExtra("serviceType", obj3.toString());
                        WorkRegisterChoActivity.this.startActivity(intent);
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
            this.loadMore.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    WorkRegisterChoActivity.this.showProcessDialog();
                    WorkRegisterChoActivity workRegisterChoActivity = WorkRegisterChoActivity.this;
                    workRegisterChoActivity.retrieveData(false, 100, workRegisterChoActivity.numberOfRows);
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
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        String str2 = this.screen;
        str2.hashCode();
        switch (str2) {
            case "dateSelectionScreen":
                if (this.areaList.size() == 1 || this.areaList.isEmpty()) {
                    navigateToHomeScreen(false);
                } else {
                    setAshaSelectionScreen();
                    this.nextButton.setText("Next");
                }
                return true;
            case "ashaSelectionScreen":
                navigateToHomeScreen(false);
                return true;
            case "tableScreen":
                addDateSelectionScreen();
                this.nextButton.setText("Next");
                this.numberOfRows = 0;
                return true;
            default:
                return true;
        }
    }
}
