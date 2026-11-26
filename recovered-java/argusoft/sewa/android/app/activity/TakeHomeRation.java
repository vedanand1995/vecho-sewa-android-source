package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class TakeHomeRation extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ASHA_AREA_SELECTION_SCREEN = "ashaAreaSelectionScreen";
    private static final String CHILD_SELECTION_SCREEN = "childSelectionScreen";
    private static final long DELAY = 500;
    private static final Integer REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY = 200;
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    Dao<MemberBean, Integer> memberBeanDao;
    private Button nextButton;
    private MaterialTextView noTextView;
    private int offset;
    private PagingListView paginatedListView;
    private String screen;
    private TextInputLayout searchBox;
    private CharSequence searchstring;
    private Integer selectedAshaArea;
    SewaServiceImpl sewaService;
    public TechoAshaServiceImpl techoAshaService;
    private MaterialTextView titleTextView;
    private MemberDataBean memberSelected = null;
    private Timer timer = new Timer();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<MemberDataBean> memberList = new ArrayList();
    private int limit = 30;
    private int selectedChildIndex = -1;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws SQLException {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        setTitle(UtilBean.getTitleText(UtilBean.getFullFormOfEntity().get(FormConstants.TECHO_AWW_THR)));
    }

    private void initView() throws SQLException {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    public void setBodyDetail() throws SQLException {
        List<LocationBean> listRetrieveAshaAreasAssignedToUser = this.techoAshaService.retrieveAshaAreasAssignedToUser();
        this.ashaAreaList = listRetrieveAshaAreasAssignedToUser;
        if (listRetrieveAshaAreasAssignedToUser.size() == 1) {
            this.selectedAshaArea = this.ashaAreaList.get(0).getActualID();
            this.bodyLayoutContainer.removeAllViews();
            LinearLayout linearLayout = this.bodyLayoutContainer;
            linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
            addSearchTextBox();
            retrieveChildrens(null, false);
            return;
        }
        if (this.ashaAreaList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            addAshaAreaSelectionSpinner();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws SQLException {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            nextButtonPressed();
        }
    }

    private void nextButtonPressed() throws SQLException {
        String str = this.screen;
        str.hashCode();
        if (!str.equals(ASHA_AREA_SELECTION_SCREEN)) {
            if (str.equals(CHILD_SELECTION_SCREEN)) {
                List<MemberDataBean> list = this.memberList;
                if (list == null || list.isEmpty()) {
                    navigateToHomeScreen(false);
                    return;
                }
                int i = this.selectedChildIndex;
                if (i != -1) {
                    this.memberSelected = this.memberList.get(i);
                    startDynamicFormActivity();
                    return;
                } else {
                    SewaUtil.generateToast(this, LabelConstants.CHILD_SELECTION_REQUIRED);
                    return;
                }
            }
            return;
        }
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
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        addSearchTextBox();
        retrieveChildrens(null, false);
    }

    public void addSearchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 10, 1);
        this.searchBox = editText;
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (this.searchBox.getEditText() != null) {
            this.searchBox.getEditText().addTextChangedListener(new AnonymousClass1());
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.TakeHomeRation$1, reason: invalid class name */
    class AnonymousClass1 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass1() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            TakeHomeRation.this.timer.cancel();
            TakeHomeRation.this.timer = new Timer();
            TakeHomeRation.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.TakeHomeRation.1.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        TakeHomeRation.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.TakeHomeRation.1.1.1
                            @Override // java.lang.Runnable
                            public void run() throws SQLException {
                                TakeHomeRation.this.retrieveChildrens(charSequence, true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        TakeHomeRation.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.TakeHomeRation.1.1.2
                            @Override // java.lang.Runnable
                            public void run() throws SQLException {
                                TakeHomeRation.this.showProcessDialog();
                                TakeHomeRation.this.retrieveChildrens(null, false);
                                TakeHomeRation.this.searchBox.clearFocus();
                            }
                        });
                    }
                }
            }, TakeHomeRation.DELAY);
        }
    }

    public void addAshaAreaSelectionSpinner() {
        this.screen = ASHA_AREA_SELECTION_SCREEN;
        setSubTitle(null);
        this.bodyLayoutContainer.removeAllViews();
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

    public void retrieveChildrens(CharSequence charSequence, Boolean bool) throws SQLException {
        this.searchstring = charSequence;
        this.offset = 0;
        this.selectedChildIndex = -1;
        this.memberList = this.fhsService.retrieveChildsBetween6MonthsTo3YearsByAshaArea(this.selectedAshaArea, charSequence, this.limit, 0);
        this.offset += this.limit;
        addChildsOfAgeBetween6MonthsTo3YearsList(bool.booleanValue());
    }

    public void addChildsOfAgeBetween6MonthsTo3YearsList(boolean z) throws SQLException {
        this.screen = CHILD_SELECTION_SCREEN;
        setSubTitle(null);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.noTextView);
        this.bodyLayoutContainer.removeView(this.titleTextView);
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_CHILD);
            this.titleTextView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, setTextInList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.TakeHomeRation.2
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    TakeHomeRation.this.selectedChildIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_CHILDREN_OF_AGE_BETWEEN_6_MONTHS_TO_3_YEARS_ALERT);
            this.noTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.argusoft.sewa.android.app.databean.ListItemDataBean> setTextInList(java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r19) throws java.sql.SQLException {
        /*
            r18 = this;
            r1 = r18
            com.google.gson.Gson r2 = new com.google.gson.Gson
            r2.<init>()
            java.util.Calendar r3 = java.util.Calendar.getInstance()
            r0 = 11
            r4 = 0
            r3.set(r0, r4)
            r0 = 12
            r3.set(r0, r4)
            r0 = 13
            r3.set(r0, r4)
            r0 = 14
            r3.set(r0, r4)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            java.util.Iterator r7 = r19.iterator()
            r8 = 0
            r9 = r8
        L30:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto Le2
            java.lang.Object r0 = r7.next()
            r10 = r0
            com.argusoft.sewa.android.app.databean.MemberDataBean r10 = (com.argusoft.sewa.android.app.databean.MemberDataBean) r10
            java.lang.String r0 = r10.getUniqueHealthId()
            if (r0 == 0) goto Ldd
            java.lang.Long r0 = r10.getMotherId()
            if (r0 == 0) goto L71
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.MemberBean, java.lang.Integer> r0 = r1.memberBeanDao     // Catch: java.sql.SQLException -> L65
            com.j256.ormlite.stmt.QueryBuilder r0 = r0.queryBuilder()     // Catch: java.sql.SQLException -> L65
            com.j256.ormlite.stmt.Where r0 = r0.where()     // Catch: java.sql.SQLException -> L65
            java.lang.String r11 = "actualId"
            java.lang.Long r12 = r10.getMotherId()     // Catch: java.sql.SQLException -> L65
            com.j256.ormlite.stmt.Where r0 = r0.eq(r11, r12)     // Catch: java.sql.SQLException -> L65
            java.lang.Object r0 = r0.queryForFirst()     // Catch: java.sql.SQLException -> L65
            com.argusoft.sewa.android.app.model.MemberBean r0 = (com.argusoft.sewa.android.app.model.MemberBean) r0     // Catch: java.sql.SQLException -> L65
            r9 = r0
            goto L71
        L65:
            r0 = move-exception
            java.lang.Class r11 = r18.getClass()
            java.lang.String r11 = r11.getName()
            android.util.Log.e(r11, r8, r0)
        L71:
            java.lang.String r0 = r10.getAdditionalInfo()
            if (r0 == 0) goto L9d
            java.lang.String r0 = r10.getAdditionalInfo()
            java.lang.Class<com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean> r11 = com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean.class
            java.lang.Object r0 = r2.fromJson(r0, r11)
            com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean r0 = (com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean) r0
            java.lang.Long r11 = r0.getLastTHRServiceDate()
            if (r11 == 0) goto L9d
            long r11 = r3.getTimeInMillis()
            java.lang.Long r0 = r0.getLastTHRServiceDate()
            long r13 = r0.longValue()
            int r0 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r0 > 0) goto L9d
            r0 = 1
            r17 = 1
            goto L9f
        L9d:
            r17 = 0
        L9f:
            if (r9 != 0) goto Lbf
            com.argusoft.sewa.android.app.databean.ListItemDataBean r0 = new com.argusoft.sewa.android.app.databean.ListItemDataBean
            java.lang.String r13 = r10.getUniqueHealthId()
            java.lang.String r14 = com.argusoft.sewa.android.app.util.UtilBean.getMemberFullName(r10)
            java.lang.String r10 = "Not available"
            java.lang.String r15 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r10)
            java.lang.String r16 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r10)
            r12 = 0
            r11 = r0
            r11.<init>(r12, r13, r14, r15, r16, r17)
            r6.add(r0)
            goto L30
        Lbf:
            com.argusoft.sewa.android.app.databean.ListItemDataBean r0 = new com.argusoft.sewa.android.app.databean.ListItemDataBean
            java.lang.String r13 = r10.getUniqueHealthId()
            java.lang.String r14 = com.argusoft.sewa.android.app.util.UtilBean.getMemberFullName(r10)
            java.lang.String r10 = "Mother"
            java.lang.String r15 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r10)
            java.lang.String r16 = com.argusoft.sewa.android.app.util.UtilBean.getMemberFullName(r9)
            r12 = 0
            r11 = r0
            r11.<init>(r12, r13, r14, r15, r16, r17)
            r6.add(r0)
            goto L30
        Ldd:
            r5.add(r10)
            goto L30
        Le2:
            java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r0 = r1.memberList
            r0.removeAll(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.TakeHomeRation.setTextInList(java.util.List):java.util.List");
    }

    public void setRadioButtonColorFromSyncStatus(RadioButton radioButton, MemberDataBean memberDataBean) {
        if (memberDataBean.getSyncStatus() != null) {
            String syncStatus = memberDataBean.getSyncStatus();
            syncStatus.hashCode();
            if (syncStatus.equals(LocationConstants.LocationType.TALUKA)) {
                radioButton.setTextColor(-16776961);
                return;
            } else if (syncStatus.equals(MorbiditiesConstant.RED_COLOR)) {
                radioButton.setTextColor(SupportMenu.CATEGORY_MASK);
                return;
            } else {
                radioButton.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                return;
            }
        }
        if (memberDataBean.getAdditionalInfo() != null) {
            MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberDataBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
            if (memberAdditionalInfoDataBean.getCpNegativeQues() != null && memberAdditionalInfoDataBean.getCpState() != null && memberAdditionalInfoDataBean.getCpState().equals(RchConstants.CP_DELAYED_DEVELOPMENT)) {
                radioButton.setTextColor(InputDeviceCompat.SOURCE_ANY);
            } else if (memberAdditionalInfoDataBean.getCpNegativeQues() != null && memberAdditionalInfoDataBean.getCpState() != null && memberAdditionalInfoDataBean.getCpState().equals(RchConstants.CP_TREATMENT_COMMENCED)) {
                radioButton.setTextColor(Color.parseColor("#20aa0b"));
            } else {
                radioButton.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ON_TAKE_HOME_RATION_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.TakeHomeRation.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    TakeHomeRation.this.alertDialog.dismiss();
                    TakeHomeRation.this.navigateToHomeScreen(false);
                    TakeHomeRation.this.finish();
                    return;
                }
                TakeHomeRation.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    private void startDynamicFormActivity() {
        showProcessDialog();
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        this.formMetaDataUtil.setMetaDataForRchFormByFormType(FormConstants.TECHO_AWW_THR, this.memberSelected.getId(), this.memberSelected.getFamilyId(), null, PreferenceManager.getDefaultSharedPreferences(this));
        intent.putExtra("entity", FormConstants.TECHO_AWW_THR);
        startActivityForResult(intent, REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY.intValue());
        hideProcessDialog();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws SQLException {
        super.onActivityResult(i, i2, intent);
        showProcessDialog();
        this.bodyLayoutContainer.removeAllViews();
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        this.selectedChildIndex = -1;
        addSearchTextBox();
        retrieveChildrens(null, false);
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() throws SQLException {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() throws SQLException {
        List<MemberDataBean> listRetrieveChildsBetween6MonthsTo3YearsByAshaArea = this.fhsService.retrieveChildsBetween6MonthsTo3YearsByAshaArea(this.selectedAshaArea, this.searchstring, this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUi(listRetrieveChildsBetween6MonthsTo3YearsByAshaArea);
    }

    public void onLoadMoreUi(List<MemberDataBean> list) throws SQLException {
        if (list != null && !list.isEmpty()) {
            this.memberList.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, setTextInList(list));
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
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
        String str2 = this.screen;
        str2.hashCode();
        if (str2.equals(ASHA_AREA_SELECTION_SCREEN)) {
            navigateToHomeScreen(false);
        } else if (str2.equals(CHILD_SELECTION_SCREEN)) {
            this.nextButton.setText("Next");
            addAshaAreaSelectionSpinner();
        }
        return true;
    }
}
