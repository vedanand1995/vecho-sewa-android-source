package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.DataQualityConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RbskConstants;
import com.argusoft.sewa.android.app.core.impl.DataQualityServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.DataQualityMemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.DataQualityBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class DataQualityActivity extends MenuActivity implements View.OnClickListener {
    private static final String DATA_QUALITY_DETAILS_SCREEN = "dataQualityDetailsScreen";
    private static final String DATA_TABLE_SCREEN = "dataTableScreen";
    private List<DataQualityBean> allDataQualityBeans;
    private LinearLayout bodyLayoutContainer;
    DataQualityServiceImpl dataQualityService;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    private Map<String, String> map;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private String screenName;
    SewaServiceImpl sewaService;
    private TableLayout tableLayout;
    private boolean allVerified = false;
    private List<DataQualityMemberDataBean> dataQualityMemberDataBeans = new ArrayList();
    private TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(0, -1, 2.0f);
    private TableRow.LayoutParams layoutParams1 = new TableRow.LayoutParams(0, -1, 1.0f);

    static class CountData {
        private int failed;
        private int successful;
        private int total;
        private String type;

        static /* synthetic */ int access$108(CountData countData) {
            int i = countData.total;
            countData.total = i + 1;
            return i;
        }

        static /* synthetic */ int access$212(CountData countData, int i) {
            int i2 = countData.successful + i;
            countData.successful = i2;
            return i2;
        }

        public CountData(String str, int i, int i2, int i3) {
            this.type = str;
            this.total = i;
            this.successful = i2;
            this.failed = i3;
        }
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
        setTitle(UtilBean.getTitleText(LabelConstants.DATA_QUALITY_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, LabelConstants.WANT_TO_CLOSE_DATA_QUALITY_PROCESS, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.DataQualityActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    DataQualityActivity.this.myAlertDialog.dismiss();
                    DataQualityActivity.this.navigateToHomeScreen(false);
                    DataQualityActivity.this.finish();
                    return;
                }
                DataQualityActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screenName;
            str.hashCode();
            if (str.equals(DATA_TABLE_SCREEN)) {
                showProcessDialog();
                this.bodyLayoutContainer.removeAllViews();
                setDataQualityDetailsScreen();
            } else if (str.equals(DATA_QUALITY_DETAILS_SCREEN)) {
                navigateToHomeScreen(false);
            }
        }
    }

    private void setBodyDetail() {
        this.screenName = DATA_TABLE_SCREEN;
        this.allDataQualityBeans = this.dataQualityService.getAllDataQualityBeans();
        createTableLayout();
        hideProcessDialog();
    }

    private void createTableLayout() {
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.DATA_QUALITY_VERIFICATION_REPORT)));
        TableLayout tableLayout = new TableLayout(this);
        this.tableLayout = tableLayout;
        tableLayout.setLayoutParams(new TableLayout.LayoutParams(-1, -2));
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add(LabelConstants.SERVICE_TYPE);
        arrayList.add(LabelConstants.TOTAL_CALLS);
        arrayList.add(LabelConstants.VERIFICATION_SUCCESSFUL);
        arrayList.add(LabelConstants.VERIFICATION_FAILED);
        arrayList.add(GlobalTypes.BENEFICIARY_SEPARATOR);
        HashMap map = new HashMap();
        this.map = map;
        map.put(DataQualityConstants.FHW_CH_SER_VERI, LabelConstants.CHILD_VACCINATION_VERIFICATION);
        this.map.put(DataQualityConstants.FHW_CH_SER_PREG_VERI, LabelConstants.DELIVERY_AND_CHILD_VERIFICATION);
        this.map.put(DataQualityConstants.FHW_DEL_VERI, LabelConstants.DELIVERY_VERIFICATION);
        this.map.put(DataQualityConstants.PREG_REGI_VERI, LabelConstants.PREGNANCY_REGISTRATION_VERIFICATION);
        this.map.put(DataQualityConstants.FHW_TT_VERI, LabelConstants.TT_INJECTION_VERIFICATION);
        TableRow tableRow = new TableRow(this);
        tableRow.setLayoutParams(new TableRow.LayoutParams(-1, -2));
        tableRow.setPadding(10, 15, 10, 15);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            tableRow.setBackgroundResource(R.drawable.table_row_selector);
        } else {
            tableRow.setBackgroundResource(R.drawable.spinner_item_border);
        }
        tableRow.setWeightSum(6.0f);
        int i = 0;
        for (String str : arrayList) {
            TextView textView = new TextView(this.context);
            textView.setGravity(17);
            textView.setPadding(10, 10, 10, 10);
            textView.setText(UtilBean.getMyLabel(str));
            textView.setTypeface(Typeface.DEFAULT_BOLD);
            if (i == 0) {
                tableRow.addView(textView, this.layoutParams);
            } else {
                tableRow.addView(textView, this.layoutParams1);
            }
            i++;
        }
        this.tableLayout.addView(tableRow, 0);
        this.bodyLayoutContainer.addView(this.tableLayout);
        List<DataQualityBean> list = this.allDataQualityBeans;
        if (list == null || list.isEmpty()) {
            return;
        }
        setRowData(this.allDataQualityBeans);
    }

    private void setRowData(List<DataQualityBean> list) {
        DataQualityBean next;
        Iterator<DataQualityBean> it;
        CountData countData = new CountData(this.map.get(DataQualityConstants.FHW_CH_SER_VERI), 0, 0, 0);
        CountData countData2 = new CountData(this.map.get(DataQualityConstants.FHW_CH_SER_PREG_VERI), 0, 0, 0);
        CountData countData3 = new CountData(this.map.get(DataQualityConstants.FHW_DEL_VERI), 0, 0, 0);
        CountData countData4 = new CountData(this.map.get(DataQualityConstants.PREG_REGI_VERI), 0, 0, 0);
        CountData countData5 = new CountData(this.map.get(DataQualityConstants.FHW_TT_VERI), 0, 0, 0);
        Iterator<DataQualityBean> it2 = list.iterator();
        while (it2.hasNext()) {
            next = it2.next();
            MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(next.getMemberId());
            if (memberBeanRetrieveMemberBeanByActualId != null) {
                DataQualityMemberDataBean dataQualityMemberDataBean = new DataQualityMemberDataBean();
                dataQualityMemberDataBean.setHealthId(memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId());
                StringBuilder sb = new StringBuilder();
                it = it2;
                sb.append(memberBeanRetrieveMemberBeanByActualId.getFirstName());
                sb.append(" ");
                sb.append(memberBeanRetrieveMemberBeanByActualId.getLastName());
                dataQualityMemberDataBean.setName(sb.toString());
                dataQualityMemberDataBean.setMemberId(next.getMemberId());
                dataQualityMemberDataBean.setServiceType(next.getServiceType());
                dataQualityMemberDataBean.setDeliveryHappened(next.isDeliveryHappened());
                dataQualityMemberDataBean.setDeliveryPlaceVerification(next.isDeliveryPlaceVerificationDone());
                dataQualityMemberDataBean.setNoOfChildGenderVerification(next.isNoOfChildGenderVerification());
                dataQualityMemberDataBean.setChildServiceVaccinationStatus(next.isChildServiceVaccinationStatus());
                dataQualityMemberDataBean.setPregnant(next.isPregnant());
                dataQualityMemberDataBean.setTtInjectionReceivedStatus(next.getTtInjectionReceivedStatus());
                this.dataQualityMemberDataBeans.add(dataQualityMemberDataBean);
            } else {
                it = it2;
            }
            String serviceType = next.getServiceType();
            serviceType.hashCode();
            switch (serviceType) {
                case "PREG_REGI_VERI":
                    CountData.access$108(countData4);
                    CountData.access$212(countData4, getCallCount(next));
                    break;
                case "FHW_CH_SER_PREG_VERI":
                    countData2.total += 4;
                    CountData.access$212(countData2, getCallCount(next));
                    break;
                case "FHW_CH_SER_VERI":
                    CountData.access$108(countData);
                    CountData.access$212(countData, getCallCount(next));
                    break;
                case "FHW_TT_VERI":
                    CountData.access$108(countData5);
                    CountData.access$212(countData5, getCallCount(next));
                    break;
                case "FHW_DEL_VERI":
                    countData3.total += 4;
                    CountData.access$212(countData3, getCallCount(next));
                    break;
            }
            it2 = it;
        }
        countData.failed = countData.total - countData.successful;
        countData2.failed = countData2.total - countData2.successful;
        countData3.failed = countData3.total - countData3.successful;
        countData4.failed = countData4.total - countData4.successful;
        countData5.failed = countData5.total - countData5.successful;
        ArrayList arrayList = new ArrayList();
        arrayList.add(convertToList(countData));
        arrayList.add(convertToList(countData2));
        arrayList.add(convertToList(countData3));
        arrayList.add(convertToList(countData4));
        arrayList.add(convertToList(countData5));
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            addRowToTable((List) it3.next());
        }
    }

    private List<String> convertToList(CountData countData) {
        DecimalFormat decimalFormat = new DecimalFormat("0.##");
        ArrayList arrayList = new ArrayList();
        arrayList.add(countData.type);
        arrayList.add(String.valueOf(countData.total));
        arrayList.add(String.valueOf(countData.successful));
        arrayList.add(String.valueOf(countData.failed));
        if (countData.total != 0) {
            arrayList.add(decimalFormat.format((countData.successful / countData.total) * 100.0d) + " %");
        } else {
            arrayList.add("0 %");
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    private int getCallCount(DataQualityBean dataQualityBean) {
        ?? IsDeliveryHappened = dataQualityBean.isDeliveryHappened();
        int i = IsDeliveryHappened;
        if (dataQualityBean.isDeliveryPlaceVerificationDone()) {
            i = IsDeliveryHappened + 1;
        }
        int i2 = i;
        if (dataQualityBean.isNoOfChildGenderVerification()) {
            i2 = i + 1;
        }
        int i3 = i2;
        if (dataQualityBean.isChildServiceVaccinationStatus()) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (dataQualityBean.isPregnant()) {
            i4 = i3 + 1;
        }
        return dataQualityBean.getTtInjectionReceivedStatus() != null ? (dataQualityBean.getTtInjectionReceivedStatus().equals(RbskConstants.RADIO_BUTTON_SELECTION_VALUE_YES) || dataQualityBean.getTtInjectionReceivedStatus().equals("CANNOT_DETERMINE")) ? i4 + 1 : i4 : i4;
    }

    private void addRowToTable(List<String> list) {
        TableRow tableRow = new TableRow(this);
        tableRow.setPadding(10, 15, 10, 15);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            tableRow.setBackgroundResource(R.drawable.table_row_selector);
        } else {
            tableRow.setBackgroundResource(R.drawable.spinner_item_border);
        }
        tableRow.setLayoutParams(new TableRow.LayoutParams(-1, -2));
        tableRow.setWeightSum(6.0f);
        int i = 0;
        for (String str : list) {
            TextView textView = new TextView(this.context);
            textView.setGravity(17);
            textView.setPadding(10, 10, 10, 10);
            textView.setText(str);
            if (i == 0) {
                tableRow.addView(textView, this.layoutParams);
            } else {
                tableRow.addView(textView, this.layoutParams1);
            }
            i++;
        }
        this.tableLayout.addView(tableRow, 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setDataQualityDetailsScreen() {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.DataQualityActivity.setDataQualityDetailsScreen():void");
    }

    private TextView getServiceCallStatus(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, String str) {
        TextView textView = new TextView(this.context);
        textView.setTextSize(16.0f);
        textView.setText("");
        this.allVerified = true;
        if (bool != null) {
            textView.append(getStatus(bool.booleanValue(), "Delivery happened  \n"));
        }
        if (bool2 != null) {
            textView.append(getStatus(bool2.booleanValue(), "Delivery place verification  \n"));
        }
        if (bool3 != null) {
            textView.append(getStatus(bool3.booleanValue(), "No of child and gender verification  \n"));
        }
        if (bool4 != null) {
            textView.append(getStatus(bool4.booleanValue(), "Child vaccination status  \n"));
        }
        if (bool5 != null) {
            textView.append(getStatus(bool5.booleanValue(), "Pregnancy registration  \n"));
        }
        if (str != null) {
            if (str.equals(RbskConstants.RADIO_BUTTON_SELECTION_VALUE_YES) || str.equals("CANNOT_DETERMINE")) {
                textView.append(getStatus(true, "TT injection received   \n"));
            } else {
                textView.append(getStatus(false, "TT injection received   \n"));
            }
        }
        if (textView.getText().toString().lastIndexOf(LabelConstants.NEW_LINE) > 0) {
            textView.setText(textView.getText().subSequence(0, textView.getText().toString().length() - 1));
        }
        return textView;
    }

    private SpannableString getStatus(boolean z, String str) {
        SpannableString spannableString = new SpannableString(str);
        if (z) {
            spannableString.setSpan(new ImageSpan(this, R.drawable.checkmark), str.length() - 2, str.length() - 1, 0);
            return spannableString;
        }
        this.allVerified = false;
        spannableString.setSpan(new ImageSpan(this, R.drawable.cross), str.length() - 2, str.length() - 1, 0);
        return spannableString;
    }

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
            if (str2.equals(DATA_TABLE_SCREEN)) {
                navigateToHomeScreen(false);
            } else if (str2.equals(DATA_QUALITY_DETAILS_SCREEN)) {
                showProcessDialog();
                this.bodyLayoutContainer.removeAllViews();
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                setBodyDetail();
            }
        }
        return true;
    }
}
