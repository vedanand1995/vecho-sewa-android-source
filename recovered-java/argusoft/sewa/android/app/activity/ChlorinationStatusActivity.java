package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.ChlorinationStatusBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class ChlorinationStatusActivity extends MenuActivity implements PagingListView.PagingListener {
    private static final String ANSWER_YES = "1";
    private static final long DELAY = 500;
    private static final int REQUEST_CODE_FOR_CHLORINATION_STATUS = 778;
    private static final String TAG = "ChlorinationStatusActivity";
    private PagingListView areaListView;
    private LinearLayout bodyLayoutContainer;
    Dao<ChlorinationStatusBean, Integer> chlorinationStatusBeanDao;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private MaterialTextView listTitleView;
    LocationMasterServiceImpl locationMasterService;
    private MyAlertDialog myAlertDialog;
    private MaterialTextView noAreaAvailableView;
    private CharSequence searchString;
    private ChlorinationStatusBean selectedArea;
    private List<ChlorinationStatusBean> areaList = new ArrayList();
    private final Map<Integer, String> areaHierarchies = Collections.synchronizedMap(new HashMap());
    private Timer timer = new Timer();

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
        setTitle(UtilBean.getTitleText(LabelConstants.CHLORINATION_STATUS));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, null);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        LinearLayout linearLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.footerLayout = linearLayout;
        linearLayout.setVisibility(8);
        setSubTitle(null);
        addSearchTextBox();
        retrieveAreas(null);
    }

    public void retrieveAreas(CharSequence charSequence) {
        this.searchString = charSequence;
        List<ChlorinationStatusBean> listQueryAreas = queryAreas(charSequence);
        this.areaList = listQueryAreas;
        addAreaListScreen(getAreaItems(listQueryAreas));
    }

    private List<ChlorinationStatusBean> queryAreas(CharSequence charSequence) {
        try {
            List<ChlorinationStatusBean> listQueryForAll = this.chlorinationStatusBeanDao.queryForAll();
            if (charSequence != null && charSequence.length() > 0) {
                listQueryForAll = filterAreas(listQueryForAll, charSequence.toString());
            }
            Collections.sort(listQueryForAll, new Comparator() { // from class: com.argusoft.sewa.android.app.activity.ChlorinationStatusActivity$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f$0.m152x853a0485((ChlorinationStatusBean) obj, (ChlorinationStatusBean) obj2);
                }
            });
            return listQueryForAll;
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return new ArrayList();
        }
    }

    /* renamed from: lambda$queryAreas$0$com-argusoft-sewa-android-app-activity-ChlorinationStatusActivity, reason: not valid java name */
    /* synthetic */ int m152x853a0485(ChlorinationStatusBean chlorinationStatusBean, ChlorinationStatusBean chlorinationStatusBean2) {
        return String.CASE_INSENSITIVE_ORDER.compare(getAreaHierarchy(chlorinationStatusBean), getAreaHierarchy(chlorinationStatusBean2));
    }

    private List<ChlorinationStatusBean> filterAreas(List<ChlorinationStatusBean> list, String str) {
        String lowerCase = str.trim().toLowerCase(Locale.getDefault());
        ArrayList arrayList = new ArrayList();
        for (ChlorinationStatusBean chlorinationStatusBean : list) {
            if (containsIgnoreCase(getAreaHierarchy(chlorinationStatusBean), lowerCase) || containsIgnoreCase(chlorinationStatusBean.getAreaName(), lowerCase)) {
                arrayList.add(chlorinationStatusBean);
            }
        }
        return arrayList;
    }

    private boolean containsIgnoreCase(String str, String str2) {
        return str != null && str.toLowerCase(Locale.getDefault()).contains(str2);
    }

    public void addAreaListScreen(List<ListItemDataBean> list) {
        this.bodyLayoutContainer.removeView(this.noAreaAvailableView);
        this.bodyLayoutContainer.removeView(this.listTitleView);
        this.bodyLayoutContainer.removeView(this.areaListView);
        List<ChlorinationStatusBean> list2 = this.areaList;
        if (list2 != null && !list2.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_AREA_FOR_CHLORINATION);
            this.listTitleView = listTitleView;
            listTitleView.setPadding(0, 50, 0, 0);
            this.bodyLayoutContainer.addView(this.listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, list, R.layout.listview_row_with_info, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.ChlorinationStatusActivity$$ExternalSyntheticLambda3
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m149xc29a2026(adapterView, view, i, j);
                }
            }, null);
            this.areaListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_AREA_PENDING_FOR_CHLORINATION);
            this.noAreaAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addAreaListScreen$1$com-argusoft-sewa-android-app-activity-ChlorinationStatusActivity, reason: not valid java name */
    /* synthetic */ void m149xc29a2026(AdapterView adapterView, View view, int i, long j) {
        onAreaSelected(this.areaList.get(i));
    }

    private List<ListItemDataBean> getAreaItems(List<ChlorinationStatusBean> list) {
        ArrayList arrayList = new ArrayList();
        for (ChlorinationStatusBean chlorinationStatusBean : list) {
            arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.ASHA_AREA), chlorinationStatusBean.getAreaName(), getAreaHierarchy(chlorinationStatusBean)));
        }
        return arrayList;
    }

    private String getAreaHierarchy(ChlorinationStatusBean chlorinationStatusBean) {
        Integer locationId = chlorinationStatusBean.getLocationId();
        if (locationId == null) {
            return areaNameOf(chlorinationStatusBean);
        }
        String strAreaNameOf = this.areaHierarchies.get(locationId);
        if (strAreaNameOf != null) {
            return strAreaNameOf;
        }
        try {
            strAreaNameOf = this.locationMasterService.retrieveLocationHierarchyByLocationId(Long.valueOf(locationId.intValue()));
        } catch (Exception e) {
            Log.e(TAG, null, e);
        }
        if (strAreaNameOf == null || strAreaNameOf.trim().isEmpty()) {
            strAreaNameOf = areaNameOf(chlorinationStatusBean);
        }
        this.areaHierarchies.put(locationId, strAreaNameOf);
        return strAreaNameOf;
    }

    private String areaNameOf(ChlorinationStatusBean chlorinationStatusBean) {
        return chlorinationStatusBean.getAreaName() == null ? "" : chlorinationStatusBean.getAreaName();
    }

    private void onAreaSelected(ChlorinationStatusBean chlorinationStatusBean) {
        showProcessDialog();
        this.selectedArea = chlorinationStatusBean;
        try {
            this.formMetaDataUtil.setMetaDataForVBDSForms(chlorinationStatusBean.getLocationId(), null, this.context);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.WATER_QUALITY_ID, String.valueOf(chlorinationStatusBean.getWaterQualityId()));
            if (chlorinationStatusBean.getLastServiceDate() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.LAST_SERVICE_DATE, String.valueOf(chlorinationStatusBean.getLastServiceDate().getTime()));
            }
            if (chlorinationStatusBean.getAreaName() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, chlorinationStatusBean.getAreaName());
            }
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", FormConstants.VBDS_CHLORINATION_STATUS);
            startActivityForResult(intent, REQUEST_CODE_FOR_CHLORINATION_STATUS);
            hideProcessDialog();
        } catch (Exception unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.ChlorinationStatusActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m150x2b06d130(view);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
            hideProcessDialog();
        }
    }

    /* renamed from: lambda$onAreaSelected$2$com-argusoft-sewa-android-app-activity-ChlorinationStatusActivity, reason: not valid java name */
    /* synthetic */ void m150x2b06d130(View view) {
        this.alertDialog.dismiss();
        navigateToHomeScreen(false);
    }

    public void addSearchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.AREA_OR_VILLAGE_NAME_TO_SEARCH, 1, 30, 1);
        this.bodyLayoutContainer.addView(editText);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.ChlorinationStatusActivity.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    ChlorinationStatusActivity.this.timer.cancel();
                    ChlorinationStatusActivity.this.timer = new Timer();
                    ChlorinationStatusActivity.this.timer.schedule(new C00161(charSequence), ChlorinationStatusActivity.DELAY);
                }

                /* renamed from: com.argusoft.sewa.android.app.activity.ChlorinationStatusActivity$1$1, reason: invalid class name and collision with other inner class name */
                class C00161 extends TimerTask {
                    final /* synthetic */ CharSequence val$s;

                    C00161(CharSequence charSequence) {
                        this.val$s = charSequence;
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        CharSequence charSequence = this.val$s;
                        if (charSequence != null && charSequence.length() > 2) {
                            ChlorinationStatusActivity chlorinationStatusActivity = ChlorinationStatusActivity.this;
                            final CharSequence charSequence2 = this.val$s;
                            chlorinationStatusActivity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ChlorinationStatusActivity$1$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m153x609a3672(charSequence2);
                                }
                            });
                        } else {
                            CharSequence charSequence3 = this.val$s;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                ChlorinationStatusActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ChlorinationStatusActivity$1$1$$ExternalSyntheticLambda1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.m154x43c5e9b3();
                                    }
                                });
                            }
                        }
                    }

                    /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-ChlorinationStatusActivity$1$1, reason: not valid java name */
                    /* synthetic */ void m153x609a3672(CharSequence charSequence) {
                        ChlorinationStatusActivity.this.retrieveAreas(charSequence);
                    }

                    /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-ChlorinationStatusActivity$1$1, reason: not valid java name */
                    /* synthetic */ void m154x43c5e9b3() {
                        ChlorinationStatusActivity.this.showProcessDialog();
                        ChlorinationStatusActivity.this.retrieveAreas(null);
                    }
                }
            });
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_CHLORINATION_STATUS) {
            showProcessDialog();
            if (i2 == -1) {
                applyFiledStatusToArea();
            }
            retrieveAreas(this.searchString);
            return;
        }
        navigateToHomeScreen(false);
        hideProcessDialog();
    }

    private void applyFiledStatusToArea() {
        if (this.selectedArea == null) {
            return;
        }
        try {
            if ("1".equals(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.CHLORINE_ISSUE_RESOLVED))) {
                this.chlorinationStatusBeanDao.deleteById(this.selectedArea.getId());
            } else {
                Date filedServiceDate = getFiledServiceDate();
                if (filedServiceDate != null) {
                    this.selectedArea.setLastServiceDate(filedServiceDate);
                    this.chlorinationStatusBeanDao.update((Dao<ChlorinationStatusBean, Integer>) this.selectedArea);
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        this.selectedArea = null;
    }

    private Date getFiledServiceDate() {
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SERVICE_DATE);
        if (str != null && !str.trim().isEmpty()) {
            try {
                return new Date(Long.parseLong(str.trim()));
            } catch (NumberFormatException e) {
                Log.e(TAG, null, e);
            }
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        navigateToHomeScreen(false);
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.WANT_TO_CLOSE_CHLORINATION_STATUS, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.ChlorinationStatusActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m151x62e9feec(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$3$com-argusoft-sewa-android-app-activity-ChlorinationStatusActivity, reason: not valid java name */
    /* synthetic */ void m151x62e9feec(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }
}
