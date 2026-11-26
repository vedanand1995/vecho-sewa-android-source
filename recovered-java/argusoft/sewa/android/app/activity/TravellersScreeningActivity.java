package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class TravellersScreeningActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private List<Integer> areaIds;
    private LinearLayout bodyLayoutContainer;
    private CovidTravellersInfoBean covidTravellersInfoBean;
    private List<CovidTravellersInfoBean> covidTravellersList;
    SewaFhsServiceImpl fhsService;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private Button nextButton;
    private long offset;
    private PagingListView paginatedListViewWithItem;
    private String screen;
    private MaterialTextView textView;
    private int selectedTravellerIndex = -1;
    private long limit = 30;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        String string = getIntent().getExtras() != null ? getIntent().getExtras().getString("locationId") : null;
        if (string != null) {
            this.areaIds = (List) new Gson().fromJson(string, new TypeToken<List<Integer>>() { // from class: com.argusoft.sewa.android.app.activity.TravellersScreeningActivity.1
            }.getType());
        }
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
        setTitle(UtilBean.getTitleText(UtilBean.getFullFormOfEntity().get("TRAVELLERS_SCREENING")));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        fetchTravellersListFromDB(null);
    }

    public void setMemberSelectionScreen() {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.textView);
        this.bodyLayoutContainer.removeView(this.paginatedListViewWithItem);
        List<CovidTravellersInfoBean> list = this.covidTravellersList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_A_TRAVELLER);
            this.textView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getTravellerItemsList(this.covidTravellersList), R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.TravellersScreeningActivity.2
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    TravellersScreeningActivity.this.selectedTravellerIndex = i;
                }
            }, this);
            this.paginatedListViewWithItem = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_TRAVELLERS_IN_YOUR_AREA);
            this.textView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText("Okay");
        }
        hideProcessDialog();
    }

    public void fetchTravellersListFromDB(String str) {
        this.offset = 0L;
        this.covidTravellersList = this.fhsService.retrieveTravellersList(this.areaIds, str, this.limit, 0L);
        this.offset = this.limit + this.offset;
        setMemberSelectionScreen();
    }

    private List<ListItemDataBean> getTravellerItemsList(List<CovidTravellersInfoBean> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<CovidTravellersInfoBean> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new ListItemDataBean(it.next().getName(), null));
        }
        return arrayList;
    }

    private void startDynamicFormActivity() {
        this.formMetaDataUtil.setMetaDataForCovidTravellersForm(this.covidTravellersInfoBean, null);
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        intent.putExtra("entity", "TRAVELLERS_SCREENING");
        startActivityForResult(intent, 1007);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON && MEMBER_SELECTION_SCREEN.equals(this.screen)) {
            if (this.covidTravellersList.isEmpty()) {
                finish();
                return;
            }
            int i = this.selectedTravellerIndex;
            if (i != -1) {
                this.covidTravellersInfoBean = this.covidTravellersList.get(i);
                startDynamicFormActivity();
            } else {
                SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_A_TRAVELLER));
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1007) {
            this.selectedTravellerIndex = -1;
            setMemberSelectionScreen();
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
        if (menuItem.getItemId() != 16908332 || !MEMBER_SELECTION_SCREEN.equals(this.screen)) {
            return false;
        }
        finish();
        return true;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<CovidTravellersInfoBean> listRetrieveTravellersList = this.fhsService.retrieveTravellersList(this.areaIds, null, this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUi(listRetrieveTravellersList);
    }

    public void onLoadMoreUi(List<CovidTravellersInfoBean> list) {
        if (!list.isEmpty()) {
            List<ListItemDataBean> travellerItemsList = getTravellerItemsList(list);
            this.covidTravellersList.addAll(list);
            this.paginatedListViewWithItem.onFinishLoadingWithItem(true, travellerItemsList);
            return;
        }
        this.paginatedListViewWithItem.onFinishLoadingWithItem(false, null);
    }
}
