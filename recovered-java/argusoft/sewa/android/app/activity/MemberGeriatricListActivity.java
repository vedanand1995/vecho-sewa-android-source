package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
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
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class MemberGeriatricListActivity extends MenuActivity implements View.OnClickListener {
    private static final long DELAY = 500;
    private static final String TAG = "MemberGeriatricList";
    private List<String> areaIds;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    FormMetaDataUtil formMetaDataUtil;
    List<String[]> geriatricList;
    private LinearLayout globalPanel;
    private Button nextButton;
    private PagingListView paginatedListViewWithItem;
    private TextInputLayout searchBox;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private MaterialTextView textView;
    private Timer timer = new Timer();
    private MemberDataBean selectedMember = null;
    private int selectedMemberIndex = -1;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        List<String> list = (List) new Gson().fromJson(getIntent().getStringExtra("locationId"), new TypeToken<List<String>>() { // from class: com.argusoft.sewa.android.app.activity.MemberGeriatricListActivity.1
        }.getType());
        this.areaIds = list;
        if (list.isEmpty()) {
            Log.i(TAG, "Location ID is not valid. Finishing activity.");
            finish();
        }
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
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText("Geriatric Members"));
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

    private void setBodyDetail() {
        addSearchTextBox();
        fetchGeriatricListFromDB(null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            if (this.geriatricList.isEmpty()) {
                finish();
                return;
            }
            int i = this.selectedMemberIndex;
            if (i != -1) {
                this.selectedMember = new MemberDataBean(this.fhsService.retrieveMemberBeanByActualId(Long.valueOf(Long.parseLong(this.geriatricList.get(i)[0]))));
                startDynamicFormActivity("GMA");
                return;
            }
            SewaUtil.generateToast(this, LabelConstants.PLEASE_SELECT_A_MEMBER);
        }
    }

    public void addSearchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 10, 1);
        this.searchBox = editText;
        if (editText.getEditText() != null) {
            this.searchBox.getEditText().addTextChangedListener(new AnonymousClass2());
        }
        this.bodyLayoutContainer.addView(this.searchBox);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.MemberGeriatricListActivity$2, reason: invalid class name */
    class AnonymousClass2 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass2() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            MemberGeriatricListActivity.this.timer.cancel();
            MemberGeriatricListActivity.this.timer = new Timer();
            MemberGeriatricListActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.MemberGeriatricListActivity.2.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        MemberGeriatricListActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MemberGeriatricListActivity.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MemberGeriatricListActivity.this.fetchGeriatricListFromDB(charSequence);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        MemberGeriatricListActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MemberGeriatricListActivity.2.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                MemberGeriatricListActivity.this.showProcessDialog();
                                MemberGeriatricListActivity.this.fetchGeriatricListFromDB(null);
                                MemberGeriatricListActivity.this.searchBox.clearFocus();
                            }
                        });
                    }
                }
            }, MemberGeriatricListActivity.DELAY);
        }
    }

    public void setGeriatricListViews(boolean z) {
        this.bodyLayoutContainer.removeView(this.textView);
        this.bodyLayoutContainer.removeView(this.paginatedListViewWithItem);
        if (!this.geriatricList.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_A_MEMBER_FROM_LIST);
            this.textView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getList(this.geriatricList), R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MemberGeriatricListActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MemberGeriatricListActivity.this.selectedMemberIndex = i;
                }
            }, null);
            this.paginatedListViewWithItem = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText("Next");
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_FOUND_IN_YOUR_AREA);
            this.textView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(GlobalTypes.MAIN_MENU);
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> getList(List<String[]> list) {
        ArrayList arrayList = new ArrayList();
        for (String[] strArr : list) {
            arrayList.add(new ListItemDataBean(strArr[5], strArr[2] + " " + strArr[3] + " " + strArr[4]));
        }
        return arrayList;
    }

    public void fetchGeriatricListFromDB(CharSequence charSequence) {
        this.geriatricList = this.fhsService.retrieveGeriatricMembers(this.areaIds, charSequence);
        setGeriatricListViews(charSequence != null && charSequence.toString().trim().length() > 0);
    }

    private void startDynamicFormActivity(String str) {
        showProcessDialog();
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        this.formMetaDataUtil.setMetaDataForRchFormByFormType(str, this.selectedMember.getId(), this.selectedMember.getFamilyId(), null, PreferenceManager.getDefaultSharedPreferences(this));
        intent.putExtra("entity", str);
        startActivityForResult(intent, 1006);
        hideProcessDialog();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1006) {
            showProcessDialog();
            this.selectedMemberIndex = -1;
            this.bodyLayoutContainer.removeAllViews();
            addSearchTextBox();
            fetchGeriatricListFromDB(null);
            return;
        }
        navigateToHomeScreen(false);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }
}
