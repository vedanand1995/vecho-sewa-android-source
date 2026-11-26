package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.ComponentTagBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.AnswerBean;
import com.argusoft.sewa.android.app.model.QuestionBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.PreparedDelete;
import java.lang.reflect.Type;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class OPDFacilityActivity extends MenuActivity implements View.OnClickListener {
    private static final String FORM_CODE = "formCode";
    private static final String HEALTH_INFRA_SELECTION_SCREEN = "healthInfraSelectionScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String TAG = "OPDFacilityActivity";
    Dao<AnswerBean, Integer> answerBeanDao;
    private LinearLayout bodyLayoutContainer;
    private LinearLayout globalPanel;
    private List<LinkedHashMap<String, Object>> healthInfraDetailsList;
    private Spinner healthInfraSpinner;
    private List<LinkedHashMap<String, Object>> memberDetailsList;
    private Button nextButton;
    Dao<QuestionBean, Integer> questionBeanDao;
    private String screen;
    private LinkedHashMap<String, Object> selectedFormConfig;
    private LinkedHashMap<String, Object> selectedHealthInfraDetails;
    private LinkedHashMap<String, Object> selectedMemberDetails;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private final SewaTransformer sewaTransformer = SewaTransformer.getInstance();
    private int selectedMemberIndex = -1;

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
        setTitle(UtilBean.getTitleText(LabelConstants.OPD_LAB_TEST));
    }

    private void initView() {
        SharedStructureData.sewaService = this.sewaService;
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        if (checkIfOnline(true)) {
            retrieveHealthInfraAssignedToUser();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkIfOnline(boolean r5) {
        /*
            r4 = this;
            r0 = 0
            r1 = 0
            com.argusoft.sewa.android.app.activity.OPDFacilityActivity$OnlineStatusChecker r2 = new com.argusoft.sewa.android.app.activity.OPDFacilityActivity$OnlineStatusChecker     // Catch: java.lang.InterruptedException -> L1a java.util.concurrent.ExecutionException -> L22
            r2.<init>()     // Catch: java.lang.InterruptedException -> L1a java.util.concurrent.ExecutionException -> L22
            java.lang.String[] r3 = new java.lang.String[]{r0, r0, r0}     // Catch: java.lang.InterruptedException -> L1a java.util.concurrent.ExecutionException -> L22
            android.os.AsyncTask r2 = r2.execute(r3)     // Catch: java.lang.InterruptedException -> L1a java.util.concurrent.ExecutionException -> L22
            java.lang.Object r2 = r2.get()     // Catch: java.lang.InterruptedException -> L1a java.util.concurrent.ExecutionException -> L22
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.InterruptedException -> L1a java.util.concurrent.ExecutionException -> L22
            boolean r0 = r2.booleanValue()     // Catch: java.lang.InterruptedException -> L1a java.util.concurrent.ExecutionException -> L22
            goto L2f
        L1a:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto L2e
        L22:
            r2 = move-exception
            java.lang.Class r3 = r4.getClass()
            java.lang.String r3 = r3.getSimpleName()
            android.util.Log.e(r3, r0, r2)
        L2e:
            r0 = 0
        L2f:
            if (r0 == 0) goto L33
            r5 = 1
            return r5
        L33:
            r4.hideProcessDialog()
            r4.showOfflineMessage(r5)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.OPDFacilityActivity.checkIfOnline(boolean):boolean");
    }

    public void showOfflineMessage(final boolean z) {
        this.alertDialog = new MyAlertDialog(this.context, false, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.OPDFacilityActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OPDFacilityActivity.this.alertDialog.dismiss();
                if (z) {
                    OPDFacilityActivity.this.navigateToHomeScreen(false);
                }
            }
        }, DynamicUtils.BUTTON_OK);
        this.alertDialog.show();
    }

    public void retrieveHealthInfraAssignedToUser() {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(FieldNameConstants.USER_ID, SewaTransformer.loginBean.getUserID());
            QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("retrieve_health_infra_for_opd_lab_test", null, linkedHashMap, 0));
            if (queryMobDataBeanExecuteQuery != null && queryMobDataBeanExecuteQuery.getResult() != null && !queryMobDataBeanExecuteQuery.getResult().isEmpty()) {
                this.healthInfraDetailsList = queryMobDataBeanExecuteQuery.getResult();
            } else {
                this.healthInfraDetailsList = new ArrayList();
            }
            showHealthInfraDetails();
        } catch (RestHttpException e) {
            hideProcessDialog();
            generateToast(LabelConstants.ERROR_OCCURRED_SO_TRY_AGAIN);
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    public void showHealthInfraDetails() {
        this.screen = HEALTH_INFRA_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        List<LinkedHashMap<String, Object>> list = this.healthInfraDetailsList;
        if (list == null || list.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.NO_HEALTH_INFRASTRUCTURE_ASSIGNED));
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            hideProcessDialog();
            return;
        }
        if (this.healthInfraDetailsList.size() == 1) {
            this.selectedHealthInfraDetails = this.healthInfraDetailsList.get(0);
            retrieveMemberDetails();
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_HEALTH_INFRASTRUCTURE));
        String[] strArr = new String[this.healthInfraDetailsList.size()];
        Iterator<LinkedHashMap<String, Object>> it = this.healthInfraDetailsList.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object obj = it.next().get("healthInfraName");
            if (obj != null) {
                strArr[i] = obj.toString();
                i++;
            }
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, -1);
        this.healthInfraSpinner = spinner;
        this.bodyLayoutContainer.addView(spinner);
        hideProcessDialog();
    }

    public void retrieveMemberDetails() {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(FieldNameConstants.HOSPITAL_INFRA_ID, this.selectedHealthInfraDetails.get("id"));
            QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("retrieve_member_details_for_opd_lab_test", null, linkedHashMap, 0));
            if (queryMobDataBeanExecuteQuery != null && queryMobDataBeanExecuteQuery.getResult() != null && !queryMobDataBeanExecuteQuery.getResult().isEmpty()) {
                this.memberDetailsList = queryMobDataBeanExecuteQuery.getResult();
            } else {
                this.memberDetailsList = new ArrayList();
            }
            showMemberDetails();
        } catch (RestHttpException e) {
            hideProcessDialog();
            generateToast(LabelConstants.ERROR_OCCURRED_SO_TRY_AGAIN);
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    public void generateToast(String str) {
        SewaUtil.generateToast(this.context, str);
    }

    public void showMemberDetails() {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        List<LinkedHashMap<String, Object>> list = this.memberDetailsList;
        if (list == null || list.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.NO_MEMBER_REGISTER_FOR_LAB_TEST_IN_YOUR_HEALTH_INFRASTRUCTURE)));
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            hideProcessDialog();
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.PLEASE_SELECT_A_MEMBER));
        ArrayList arrayList = new ArrayList();
        for (LinkedHashMap<String, Object> linkedHashMap : this.memberDetailsList) {
            StringBuilder sb = new StringBuilder();
            sb.append(Objects.requireNonNull(linkedHashMap.get("firstName")).toString());
            Object obj = linkedHashMap.get("middleName");
            if (obj != null) {
                sb.append(" ");
                sb.append(obj.toString());
            }
            Object obj2 = linkedHashMap.get("lastName");
            if (obj2 != null) {
                sb.append(" ");
                sb.append(obj2.toString());
            }
            arrayList.add(new ListItemDataBean(Objects.requireNonNull(linkedHashMap.get("healthId")).toString(), sb.toString(), Objects.requireNonNull(linkedHashMap.get("testName")).toString()));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_info, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.OPDFacilityActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (OPDFacilityActivity.this.memberDetailsList.size() > i) {
                    OPDFacilityActivity.this.selectedMemberIndex = i;
                }
            }
        }, null));
        hideProcessDialog();
    }

    public void openForm() {
        showProcessDialog();
        Object objRetrieveLabTestForm = retrieveLabTestForm(this.selectedMemberDetails.get("formCode"));
        if (objRetrieveLabTestForm != null) {
            Type type = new TypeToken<List<ComponentTagBean>>() { // from class: com.argusoft.sewa.android.app.activity.OPDFacilityActivity.3
            }.getType();
            StringBuilder sb = new StringBuilder();
            sb.append(Objects.requireNonNull(this.selectedMemberDetails.get("firstName")).toString());
            Object obj = this.selectedMemberDetails.get("middleName");
            if (obj != null) {
                sb.append(" ");
                sb.append(obj.toString());
            }
            Object obj2 = this.selectedMemberDetails.get("lastName");
            if (obj2 != null) {
                sb.append(" ");
                sb.append(obj2.toString());
            }
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, sb.toString());
            storeFormDataToDatabase(Objects.requireNonNull(this.selectedMemberDetails.get("formCode")).toString(), (List) new Gson().fromJson(objRetrieveLabTestForm.toString(), type));
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", Objects.requireNonNull(this.selectedMemberDetails.get("formCode")).toString());
            intent.putExtra("isOPDLabTestForm", true);
            intent.putExtra("labTestDetId", Integer.toString((int) Double.parseDouble(Objects.requireNonNull(this.selectedMemberDetails.get("labTestDetId")).toString())));
            intent.putExtra("version", Objects.requireNonNull(this.selectedFormConfig.get("version")).toString());
            startActivityForResult(intent, 1005);
            return;
        }
        generateToast(LabelConstants.FORM_NOT_FOUND);
        hideProcessDialog();
    }

    private Object retrieveLabTestForm(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("formCode", obj);
        try {
            QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("retrieve_lab_test_form_opd_lab_test", null, linkedHashMap, 0));
            if (queryMobDataBeanExecuteQuery != null && queryMobDataBeanExecuteQuery.getResult() != null && !queryMobDataBeanExecuteQuery.getResult().isEmpty()) {
                LinkedHashMap<String, Object> linkedHashMap2 = queryMobDataBeanExecuteQuery.getResult().get(0);
                this.selectedFormConfig = linkedHashMap2;
                return linkedHashMap2.get("formConfigJson");
            }
        } catch (RestHttpException e) {
            Log.e(TAG, null, e);
        }
        return null;
    }

    private void storeFormDataToDatabase(String str, List<ComponentTagBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        List<QuestionBean> listConvertComponentDataBeanToQuestionBeanModel = this.sewaTransformer.convertComponentDataBeanToQuestionBeanModel(null, list, str);
        List<AnswerBean> listConvertComponentDataBeanToAnswerBeanModel = this.sewaTransformer.convertComponentDataBeanToAnswerBeanModel(null, list, str);
        try {
            DeleteBuilder<QuestionBean, Integer> deleteBuilder = this.questionBeanDao.deleteBuilder();
            deleteBuilder.where().eq("entity", str);
            PreparedDelete<QuestionBean> preparedDeletePrepare = deleteBuilder.prepare();
            if (preparedDeletePrepare != null) {
                this.questionBeanDao.delete(preparedDeletePrepare);
            }
            Iterator<QuestionBean> it = listConvertComponentDataBeanToQuestionBeanModel.iterator();
            while (it.hasNext()) {
                this.questionBeanDao.createOrUpdate(it.next());
            }
            DeleteBuilder<AnswerBean, Integer> deleteBuilder2 = this.answerBeanDao.deleteBuilder();
            deleteBuilder2.where().eq("entity", str);
            PreparedDelete<AnswerBean> preparedDeletePrepare2 = deleteBuilder2.prepare();
            if (preparedDeletePrepare2 != null) {
                this.answerBeanDao.delete(preparedDeletePrepare2);
            }
            Iterator<AnswerBean> it2 = listConvertComponentDataBeanToAnswerBeanModel.iterator();
            while (it2.hasNext()) {
                this.answerBeanDao.createOrUpdate(it2.next());
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1005) {
            showProcessDialog();
            this.selectedMemberIndex = -1;
            if (i2 == -1) {
                retrieveMemberDetails();
            } else {
                showMemberDetails();
            }
        }
        hideProcessDialog();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.screen == null) {
            navigateToHomeScreen(false);
            return;
        }
        if (checkIfOnline(false) && view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screen;
            str.hashCode();
            if (str.equals(MEMBER_SELECTION_SCREEN)) {
                List<LinkedHashMap<String, Object>> list = this.memberDetailsList;
                if (list == null || list.isEmpty()) {
                    navigateToHomeScreen(false);
                    finish();
                    return;
                }
                int i = this.selectedMemberIndex;
                if (i == -1) {
                    SewaUtil.generateToast(this.context, LabelConstants.MEMBER_SELECTION_REQUIRED_TO_CONTINUE);
                    return;
                } else {
                    this.selectedMemberDetails = this.memberDetailsList.get(i);
                    openForm();
                    return;
                }
            }
            if (str.equals(HEALTH_INFRA_SELECTION_SCREEN)) {
                List<LinkedHashMap<String, Object>> list2 = this.healthInfraDetailsList;
                if (list2 == null || list2.isEmpty()) {
                    navigateToHomeScreen(false);
                    finish();
                } else if (this.healthInfraSpinner.getSelectedItemPosition() != -1) {
                    this.selectedHealthInfraDetails = this.healthInfraDetailsList.get(this.healthInfraSpinner.getSelectedItemPosition());
                    retrieveMemberDetails();
                } else {
                    SewaUtil.generateToast(this.context, LabelConstants.HEALTH_INFRASTRUCTURE_SELECTION_REQUIRED_ALERT);
                }
            }
        }
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
        if (str2.equals(MEMBER_SELECTION_SCREEN)) {
            if (this.healthInfraDetailsList.size() == 1) {
                navigateToHomeScreen(false);
            } else {
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                showHealthInfraDetails();
            }
        } else if (str2.equals(HEALTH_INFRA_SELECTION_SCREEN)) {
            navigateToHomeScreen(false);
        }
        return true;
    }

    private static class OnlineStatusChecker extends AsyncTask<String, Void, Boolean> {
        private OnlineStatusChecker() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(String... strArr) {
            return Boolean.valueOf(SharedStructureData.sewaService.isOnline());
        }
    }
}
