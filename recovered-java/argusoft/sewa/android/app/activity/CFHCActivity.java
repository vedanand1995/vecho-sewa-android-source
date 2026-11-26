package com.argusoft.sewa.android.app.activity;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class CFHCActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final int LIMIT = 30;
    private static final String OPTION_SELECTION_SCREEN = "optionSelectionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private Map<String, MemberDataBean> headMembersMapWithFamilyIdAsKey;
    private boolean isAshaNotAssigned;
    private boolean isReverification;
    private String locationId;
    LocationMasterServiceImpl locationService;
    private Intent myIntent;
    private Button nextButton;
    private MaterialTextView noFamilyAvailableView;
    private PagingListView paginatedListView;
    private MaterialTextView pagingHeaderView;
    private String screen;
    private FamilyDataBean selectedFamily;
    SewaServiceImpl sewaService;
    private Spinner spinner;
    Dao<VersionBean, Integer> versionBeanDao;
    private Timer timer = new Timer();
    private List<LocationBean> locationBeans = new ArrayList();
    private List<FamilyDataBean> familyDataBeans = null;
    private int selectedFamilyIndex = -1;
    private int offset = 0;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws NumberFormatException {
        super.onCreate(bundle);
        this.context = this;
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
            this.myIntent = intent;
            intent.setFlags(335544320);
            startActivity(this.myIntent);
            finish();
        }
        this.isReverification = getIntent().getBooleanExtra("reverification", false);
        setTitle(UtilBean.getTitleText("Comprehensive Family Health Census"));
    }

    private void initView() throws NumberFormatException {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setBodyDetail();
    }

    public void setBodyDetail() throws NumberFormatException {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.locationBeans = distinctLocationsAssignedToUser;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.locationId = this.locationBeans.get(0).getActualID().toString();
            this.screen = FAMILY_SELECTION_SCREEN;
            addSearchTextBox();
            addFamilyList();
            return;
        }
        if (this.locationBeans.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            this.screen = VILLAGE_SELECTION_SCREEN;
            addVillageSelectionSpinner();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screen;
            str.hashCode();
            if (str.equals(VILLAGE_SELECTION_SCREEN)) {
                String string = this.spinner.getSelectedItem().toString();
                Iterator<LocationBean> it = this.locationBeans.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    LocationBean next = it.next();
                    if (string.equals(next.getName())) {
                        this.locationId = String.valueOf(next.getActualID());
                        break;
                    }
                }
                this.bodyLayoutContainer.removeAllViews();
                addSearchTextBox();
                addFamilyList();
                this.screen = FAMILY_SELECTION_SCREEN;
                return;
            }
            if (str.equals(FAMILY_SELECTION_SCREEN)) {
                if (this.selectedFamilyIndex != -1) {
                    this.bodyLayoutContainer.removeAllViews();
                    FamilyDataBean familyDataBean = this.familyDataBeans.get(this.selectedFamilyIndex);
                    FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(familyDataBean.getFamilyId());
                    this.selectedFamily = familyDataBeanRetrieveFamilyDataBeanByFamilyId;
                    familyDataBeanRetrieveFamilyDataBeanByFamilyId.setHeadMemberName(familyDataBean.getHeadMemberName());
                    SharedStructureData.currentFamilyDataBean = this.selectedFamily;
                    addSelectedFamilyDetails(this.selectedFamily);
                    addOptionForFamily();
                    this.screen = OPTION_SELECTION_SCREEN;
                    return;
                }
                SewaUtil.generateToast(this, LabelConstants.SELECT_A_FAMILY_FOR_VERIFICATION);
                return;
            }
            navigateToHomeScreen(false);
            return;
        }
        if (view.getId() == 10039) {
            Log.e("Member ", "" + ((MemberDataBean) view.getTag()).getFirstName());
            MemberDataBean memberDataBean = (MemberDataBean) view.getTag();
            if (memberDataBean != null) {
                startMemberHealthSurvey(memberDataBean, this.selectedFamily);
            }
        }
    }

    public void addSearchTextBox() {
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        if (!this.isReverification) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(UtilBean.getMyLabel(LabelConstants.ADD_NEW_FAMILY));
            ListView buttonList = MyStaticComponents.getButtonList(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$$ExternalSyntheticLambda7
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m143x6433cfe2(adapterView, view, i, j);
                }
            });
            buttonList.setPadding(0, 0, 0, 30);
            this.bodyLayoutContainer.addView(buttonList);
        }
        final TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 20, 10);
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    CFHCActivity.this.timer.cancel();
                    CFHCActivity.this.timer = new Timer();
                    CFHCActivity.this.timer.schedule(new C00141(charSequence), CFHCActivity.DELAY);
                }

                /* renamed from: com.argusoft.sewa.android.app.activity.CFHCActivity$1$1, reason: invalid class name and collision with other inner class name */
                class C00141 extends TimerTask {
                    final /* synthetic */ CharSequence val$s;

                    C00141(CharSequence charSequence) {
                        this.val$s = charSequence;
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        CharSequence charSequence = this.val$s;
                        if (charSequence != null && charSequence.length() > 2) {
                            CFHCActivity cFHCActivity = CFHCActivity.this;
                            final CharSequence charSequence2 = this.val$s;
                            final TextInputLayout textInputLayout = editText;
                            cFHCActivity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$1$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m147xf7489b38(charSequence2, textInputLayout);
                                }
                            });
                            return;
                        }
                        CharSequence charSequence3 = this.val$s;
                        if (charSequence3 == null || charSequence3.length() == 0) {
                            CFHCActivity cFHCActivity2 = CFHCActivity.this;
                            final TextInputLayout textInputLayout2 = editText;
                            cFHCActivity2.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$1$1$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m148x1cdca439(textInputLayout2);
                                }
                            });
                        }
                    }

                    /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-CFHCActivity$1$1, reason: not valid java name */
                    /* synthetic */ void m147xf7489b38(CharSequence charSequence, TextInputLayout textInputLayout) {
                        CFHCActivity.this.retrieveFamilyListFromDB(charSequence.toString());
                        textInputLayout.setFocusable(true);
                    }

                    /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-CFHCActivity$1$1, reason: not valid java name */
                    /* synthetic */ void m148x1cdca439(TextInputLayout textInputLayout) {
                        CFHCActivity.this.showProcessDialog();
                        CFHCActivity.this.retrieveFamilyListFromDB(null);
                        textInputLayout.clearFocus();
                    }
                }
            });
        }
    }

    /* renamed from: lambda$addSearchTextBox$0$com-argusoft-sewa-android-app-activity-CFHCActivity, reason: not valid java name */
    /* synthetic */ void m143x6433cfe2(AdapterView adapterView, View view, int i, long j) {
        startFamilyHealthSurvey(null);
    }

    private void addFamilyList() {
        addAshaNotAssignedMessage();
        if (this.isAshaNotAssigned) {
            return;
        }
        retrieveFamilyListFromDB(null);
    }

    public void addVillageSelectionSpinner() throws NumberFormatException {
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE)));
        String[] strArr = new String[this.locationBeans.size()];
        Iterator<LocationBean> it = this.locationBeans.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        this.spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        String str = this.locationId;
        if (str != null) {
            int i2 = Integer.parseInt(str);
            for (LocationBean locationBean : this.locationBeans) {
                if (locationBean.getActualID().intValue() == i2) {
                    this.spinner.setSelection(Arrays.asList(strArr).indexOf(locationBean.getName()));
                }
            }
        }
        this.bodyLayoutContainer.addView(this.spinner);
        hideProcessDialog();
    }

    public void retrieveFamilyListFromDB(String str) {
        this.offset = 0;
        this.selectedFamilyIndex = -1;
        if (str == null) {
            this.familyDataBeans = this.fhsService.retrieveFamilyDataBeansForCFHCByVillage(this.locationId, this.isReverification, 30L, 0);
            this.offset += 30;
        } else {
            this.familyDataBeans = this.fhsService.searchFamilyDataBeansForCFHCByVillage(str, this.locationId, this.isReverification);
        }
        setFamilySelectionScreen(str != null);
    }

    public void setFamilySelectionScreen(boolean z) {
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        this.bodyLayoutContainer.removeView(this.noFamilyAvailableView);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        List<FamilyDataBean> list = this.familyDataBeans;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_FAMILY);
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            List<ListItemDataBean> familyList = getFamilyList(this.familyDataBeans);
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$$ExternalSyntheticLambda3
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m145x25b27f00(adapterView, view, i, j);
                }
            };
            if (z) {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, familyList, R.layout.listview_row_with_two_item, onItemClickListener, null);
            } else {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, familyList, R.layout.listview_row_with_two_item, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.paginatedListView);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_FAMILIES_FOUND);
            this.noFamilyAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m146xb2ed3081(view);
                }
            });
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$setFamilySelectionScreen$1$com-argusoft-sewa-android-app-activity-CFHCActivity, reason: not valid java name */
    /* synthetic */ void m145x25b27f00(AdapterView adapterView, View view, int i, long j) {
        this.selectedFamilyIndex = i;
    }

    /* renamed from: lambda$setFamilySelectionScreen$2$com-argusoft-sewa-android-app-activity-CFHCActivity, reason: not valid java name */
    /* synthetic */ void m146xb2ed3081(View view) {
        navigateToHomeScreen(false);
    }

    private List<ListItemDataBean> getFamilyList(List<FamilyDataBean> list) {
        Date date;
        String myLabel;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<FamilyDataBean> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getFamilyId());
        }
        this.headMembersMapWithFamilyIdAsKey = this.fhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList);
        try {
            date = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.getDefault()).parse("2026/01/01 00:00:00");
        } catch (ParseException e) {
            e.printStackTrace();
            date = null;
        }
        for (FamilyDataBean familyDataBean : list) {
            MemberDataBean memberDataBean = this.headMembersMapWithFamilyIdAsKey.get(familyDataBean.getFamilyId());
            if (memberDataBean != null) {
                familyDataBean.setHeadMemberName(memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName());
                familyDataBean.setHeadMemberName(familyDataBean.getHeadMemberName().replace(" null", ""));
                myLabel = (memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName()).replace(" null", "");
            } else {
                myLabel = UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
            }
            String str = myLabel;
            if (date != null && familyDataBean.getLastFhsDate() != null && new Date(familyDataBean.getLastFhsDate().longValue()).after(date)) {
                arrayList2.add(new ListItemDataBean(null, familyDataBean.getFamilyId(), null, null, str, true));
            } else {
                arrayList2.add(new ListItemDataBean(null, familyDataBean.getFamilyId(), null, null, str, false));
            }
        }
        return arrayList2;
    }

    private static String getReverificationComment(FamilyDataBean familyDataBean) {
        StringBuilder sb = new StringBuilder();
        sb.append(UtilBean.getMyLabel(LabelConstants.FAMILY_ID));
        sb.append(": ");
        sb.append(familyDataBean.getFamilyId());
        sb.append(LabelConstants.NEW_LINE);
        sb.append(UtilBean.getMyLabel(LabelConstants.HEAD_OF_THE_FAMILY));
        sb.append(": ");
        if (familyDataBean.getHeadMemberName() == null) {
            for (MemberDataBean memberDataBean : familyDataBean.getMembers()) {
                if (memberDataBean.getFamilyHeadFlag() != null && memberDataBean.getFamilyHeadFlag().booleanValue()) {
                    sb.append(UtilBean.getMemberFullName(memberDataBean));
                }
            }
        } else {
            sb.append(familyDataBean.getHeadMemberName());
        }
        if (familyDataBean.getComment() != null) {
            sb.append(LabelConstants.NEW_LINE);
            sb.append(familyDataBean.getComment());
        }
        return sb.toString();
    }

    private void addAshaNotAssignedMessage() {
        List<LocationBean> listRetrieveLocationBeansByLevelAndParent = this.locationService.retrieveLocationBeansByLevelAndParent(7, Long.valueOf(this.locationId));
        if (listRetrieveLocationBeansByLevelAndParent != null && !listRetrieveLocationBeansByLevelAndParent.isEmpty()) {
            Iterator<LocationBean> it = listRetrieveLocationBeansByLevelAndParent.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().getName().split(GlobalTypes.KEY_VALUE_SEPARATOR).length <= 1) {
                    this.isAshaNotAssigned = true;
                    break;
                }
            }
        } else {
            this.isAshaNotAssigned = true;
        }
        if (this.isAshaNotAssigned) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m141xf127f969();
                }
            });
        }
    }

    /* renamed from: lambda$addAshaNotAssignedMessage$4$com-argusoft-sewa-android-app-activity-CFHCActivity, reason: not valid java name */
    /* synthetic */ void m141xf127f969() {
        this.alertDialog = new MyAlertDialog(this.context, false, GlobalTypes.MSG_ASHA_NOT_ASSIGNED, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m140x63ed47e8(view);
            }
        }, DynamicUtils.BUTTON_OK);
        this.alertDialog.show();
    }

    /* renamed from: lambda$addAshaNotAssignedMessage$3$com-argusoft-sewa-android-app-activity-CFHCActivity, reason: not valid java name */
    /* synthetic */ void m140x63ed47e8(View view) {
        navigateToHomeScreen(false);
    }

    private void addSelectedFamilyDetails(FamilyDataBean familyDataBean) {
        ArrayList arrayList = new ArrayList();
        setSubTitle(UtilBean.getMyLabel(LabelConstants.FAMILY_DETAILS));
        arrayList.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        if (arrayList.contains(familyDataBean.getState())) {
            familyDataBean.setMembers(this.fhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(familyDataBean.getFamilyId()));
        } else {
            familyDataBean.setMembers(this.fhsService.retrieveMemberDataBeansByFamily(familyDataBean.getFamilyId()));
        }
        LinearLayout detailsLayout = MyStaticComponents.getDetailsLayout(this.context, -1, 1, this.bodyLayoutContainer.getPaddingTop());
        detailsLayout.addView(MyStaticComponents.generateLabelView(this, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
        detailsLayout.addView(MyStaticComponents.generateBoldAnswerView(this, familyDataBean.getFamilyId()));
        detailsLayout.addView(MyStaticComponents.generateLabelView(this, UtilBean.getMyLabel(LabelConstants.MEMBERS_INFO)));
        detailsLayout.addView(UtilBean.getMembersListForDisplay(this, familyDataBean, this));
        MaterialTextView materialTextView = new MaterialTextView(this.context);
        materialTextView.setText(UtilBean.getMyLabel("Click here to see color codes"));
        materialTextView.setTextColor(ContextCompat.getColor(this.context, R.color.black));
        materialTextView.setCompoundDrawablesWithIntrinsicBounds(ContextCompat.getDrawable(this.context, R.drawable.ic_info_black), (Drawable) null, (Drawable) null, (Drawable) null);
        materialTextView.setCompoundDrawablePadding(20);
        materialTextView.setTextSize(14.0f);
        materialTextView.setGravity(16);
        detailsLayout.addView(materialTextView);
        this.bodyLayoutContainer.addView(detailsLayout);
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).create();
        final View viewInflate = LayoutInflater.from(this).inflate(R.layout.color_code_alert, (ViewGroup) null);
        alertDialogCreate.setView(viewInflate);
        alertDialogCreate.setCancelable(true);
        materialTextView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CFHCActivity.lambda$addSelectedFamilyDetails$6(viewInflate, alertDialogCreate, view);
            }
        });
    }

    static /* synthetic */ void lambda$addSelectedFamilyDetails$6(View view, final AlertDialog alertDialog, View view2) {
        view.findViewById(R.id.buttonAlert).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                alertDialog.dismiss();
            }
        });
        alertDialog.show();
    }

    private void startFamilyHealthSurvey(FamilyDataBean familyDataBean) {
        showProcessDialog();
        this.myIntent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        PreferenceManager.getDefaultSharedPreferences(this.context).edit().clear().apply();
        SharedStructureData.relatedPropertyHashTable.clear();
        setSharedPropertiesAndDataMaps(familyDataBean);
        this.myIntent.putExtra("entity", "CFHC");
        startActivityForResult(this.myIntent, 1001);
        showProcessDialog();
    }

    private void startMemberHealthSurvey(MemberDataBean memberDataBean, FamilyDataBean familyDataBean) {
        showProcessDialog();
        this.myIntent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
        defaultSharedPreferences.edit().clear().apply();
        SharedStructureData.relatedPropertyHashTable.clear();
        getFamilyList(this.familyDataBeans);
        this.formMetaDataUtil.setMetaDataForMemberUpdateForm(memberDataBean, familyDataBean, defaultSharedPreferences);
        this.myIntent.putExtra("entity", FormConstants.FHS_MEMBER_UPDATE);
        startActivityForResult(this.myIntent, 1010);
        showProcessDialog();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.footerLayout.setVisibility(0);
        this.selectedFamilyIndex = -1;
        if (i == 1001) {
            this.bodyLayoutContainer.removeAllViews();
            addSearchTextBox();
            addFamilyList();
            this.screen = FAMILY_SELECTION_SCREEN;
            hideProcessDialog();
            return;
        }
        if (i == 1010) {
            this.bodyLayoutContainer.removeAllViews();
            SharedStructureData.currentFamilyDataBean = this.selectedFamily;
            addSelectedFamilyDetails(this.selectedFamily);
            addOptionForFamily();
            this.screen = OPTION_SELECTION_SCREEN;
            hideProcessDialog();
            return;
        }
        if (i != 1002) {
            if (i == 1004) {
                if (i2 == -1) {
                    this.bodyLayoutContainer.removeAllViews();
                    addSearchTextBox();
                    addFamilyList();
                    this.screen = FAMILY_SELECTION_SCREEN;
                    return;
                }
                if (i2 == 0) {
                    this.bodyLayoutContainer.removeAllViews();
                    addSelectedFamilyDetails(this.selectedFamily);
                    addOptionForFamily();
                    this.screen = OPTION_SELECTION_SCREEN;
                    return;
                }
                return;
            }
            return;
        }
        if (intent.getBooleanExtra("isMerged", false)) {
            String stringExtra = intent.getStringExtra("familyToExpand");
            String stringExtra2 = intent.getStringExtra("familyToMerge");
            FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(stringExtra);
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
            arrayList.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
            ArrayList arrayList2 = new ArrayList();
            if (arrayList.contains(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getState())) {
                familyDataBeanRetrieveFamilyDataBeanByFamilyId.setMembers(arrayList2);
                familyDataBeanRetrieveFamilyDataBeanByFamilyId.getMembers().addAll(this.fhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(stringExtra));
                familyDataBeanRetrieveFamilyDataBeanByFamilyId.getMembers().addAll(this.fhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(stringExtra2));
            } else {
                familyDataBeanRetrieveFamilyDataBeanByFamilyId.setMembers(arrayList2);
                familyDataBeanRetrieveFamilyDataBeanByFamilyId.getMembers().addAll(this.fhsService.retrieveMemberDataBeansByFamily(stringExtra));
                familyDataBeanRetrieveFamilyDataBeanByFamilyId.getMembers().addAll(this.fhsService.retrieveMemberDataBeansByFamily(stringExtra2));
            }
            startFamilyHealthSurvey(familyDataBeanRetrieveFamilyDataBeanByFamilyId);
            return;
        }
        this.bodyLayoutContainer.removeAllViews();
        addSelectedFamilyDetails(this.selectedFamily);
        addOptionForFamily();
        this.screen = OPTION_SELECTION_SCREEN;
    }

    private void setSharedPropertiesAndDataMaps(FamilyDataBean familyDataBean) {
        MemberBean memberBeanRetrieveMemberBeanByActualId;
        MemberBean memberBeanRetrieveMemberBeanByActualId2;
        char c = 0;
        try {
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
            if (listQueryForEq != null && !listQueryForEq.isEmpty() && listQueryForEq.get(0).getValue().contains(GlobalTypes.MOB_FEATURE_ABDM_HEALTH_ID)) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.GENERATE_ABDM_HEALTH_ID, GlobalTypes.MOB_FEATURE_ABDM_HEALTH_ID);
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        if (familyDataBean == null) {
            SharedStructureData.currentFamilyDataBean = null;
            SharedStructureData.familyDataBeanToBeMerged = null;
            SharedStructureData.totalFamilyMembersCount = -1;
            SharedStructureData.relatedPropertyHashTable.put("familyId", "Not available");
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HEAD_OF_FAMILY, "Not available");
            SharedStructureData.relatedPropertyHashTable.put("locationId", this.locationId);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_FOUND, MorbiditiesConstant.ONE_PLUS);
            return;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        SharedStructureData.totalVerifiedFamilyMembersCount = 0;
        for (MemberDataBean memberDataBean : familyDataBean.getMembers()) {
            if (memberDataBean.getState().equals(FhsConstants.CFHC_MEMBER_STATE_VERIFIED) || memberDataBean.getState().equals(FhsConstants.CFHC_MEMBER_STATE_NEW)) {
                Integer num = SharedStructureData.totalVerifiedFamilyMembersCount;
                SharedStructureData.totalVerifiedFamilyMembersCount = Integer.valueOf(SharedStructureData.totalVerifiedFamilyMembersCount.intValue() + 1);
            }
        }
        SharedStructureData.totalFamilyMembersCount = Integer.valueOf(familyDataBean.getMembers().size());
        SharedStructureData.currentFamilyDataBean = familyDataBean;
        SharedStructureData.isMobileVerificationBlocked = false;
        SharedStructureData.isAnyMemberMobileVerificationDone = false;
        SharedStructureData.relatedPropertyHashTable.put("familyId", familyDataBean.getFamilyId());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.REVERIFICATION_COMMENT, getReverificationComment(familyDataBean));
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HOUSE_NUMBER, familyDataBean.getHouseNumber());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ADDRESS_1, familyDataBean.getAddress1());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ADDRESS_2, familyDataBean.getAddress2());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MAA_VATSALYA_NUMBER, familyDataBean.getMaaVatsalyaNumber());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.RSBY_CARD_NUMBER, familyDataBean.getRsbyCardNumber());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.RATION_CARD_NUMBER, familyDataBean.getRationCardNumber());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BPL_CARD_NUMBER, familyDataBean.getBplCardNumber());
        SharedStructureData.relatedPropertyHashTable.put("locationId", familyDataBean.getLocationId());
        SharedStructureData.relatedPropertyHashTable.put("state", familyDataBean.getState());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DEFAULT_CASTE, familyDataBean.getCaste());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DEFAULT_RELIGION, familyDataBean.getReligion());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HEAD_OF_FAMILY, "Not available");
        MemberDataBean memberDataBean2 = this.headMembersMapWithFamilyIdAsKey.get(familyDataBean.getFamilyId());
        if (memberDataBean2 != null) {
            familyDataBean.setHeadMemberName(memberDataBean2.getFirstName() + " " + memberDataBean2.getMiddleName() + " " + memberDataBean2.getGrandfatherName() + " " + memberDataBean2.getLastName());
            familyDataBean.setHeadMemberName(familyDataBean.getHeadMemberName().replace(" null", ""));
            Map<String, String> map = SharedStructureData.relatedPropertyHashTable;
            StringBuilder sb = new StringBuilder();
            sb.append(familyDataBean.getFamilyId());
            sb.append("(");
            sb.append(familyDataBean.getHeadMemberName());
            sb.append(")");
            map.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, sb.toString());
        } else {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, familyDataBean.getFamilyId());
        }
        if (familyDataBean.getAreaId() != null) {
            SharedStructureData.relatedPropertyHashTable.put("areaId", familyDataBean.getAreaId());
        }
        if (familyDataBean.getPvtgFlag() != null && familyDataBean.getPvtgFlag().booleanValue()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PVTG_FLAG, MorbiditiesConstant.ONE_PLUS);
        } else if (familyDataBean.getPvtgFlag() != null && !familyDataBean.getPvtgFlag().booleanValue()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PVTG_FLAG, MorbiditiesConstant.TWO_PLUS);
        }
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BPL_FLAG, MorbiditiesConstant.TWO_PLUS);
        if (familyDataBean.getBplFlag() != null && familyDataBean.getBplFlag().booleanValue()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BPL_FLAG, MorbiditiesConstant.ONE_PLUS);
        }
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TOILET_AVAILABLE_FLAG, MorbiditiesConstant.TWO_PLUS);
        if (familyDataBean.getToiletAvailableFlag() != null && familyDataBean.getToiletAvailableFlag().booleanValue()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TOILET_AVAILABLE_FLAG, MorbiditiesConstant.ONE_PLUS);
        }
        if (familyDataBean.getVulnerableFlag() != null && familyDataBean.getVulnerableFlag().booleanValue()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.VULNERABLE_FLAG, MorbiditiesConstant.ONE_PLUS);
        } else if (familyDataBean.getVulnerableFlag() != null && !familyDataBean.getVulnerableFlag().booleanValue()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.VULNERABLE_FLAG, MorbiditiesConstant.TWO_PLUS);
        }
        if (familyDataBean.getSeasonalMigrantFlag() != null && familyDataBean.getSeasonalMigrantFlag().booleanValue()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SEASONAL_MIGRANT_FAMILY, MorbiditiesConstant.ONE_PLUS);
        } else if (familyDataBean.getSeasonalMigrantFlag() != null && !familyDataBean.getSeasonalMigrantFlag().booleanValue()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SEASONAL_MIGRANT_FAMILY, MorbiditiesConstant.TWO_PLUS);
        }
        if (familyDataBean.getAnganwadiId() != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DEFAULT_PHC, String.valueOf(this.fhsService.retrieveSubcenterIdFromAnganwadiId(Integer.valueOf(familyDataBean.getAnganwadiId()))));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DEFAULT_ANGANWADI, familyDataBean.getAnganwadiId());
        }
        if (familyDataBean.getUpgradedMaaToPmjay() != null && familyDataBean.getUpgradedMaaToPmjay().booleanValue()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.UPGRADED_MAA_TO_PMJAY, MorbiditiesConstant.ONE_PLUS);
        } else if (familyDataBean.getUpgradedMaaToPmjay() != null && !familyDataBean.getUpgradedMaaToPmjay().booleanValue()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.UPGRADED_MAA_TO_PMJAY, MorbiditiesConstant.TWO_PLUS);
        }
        if (this.isReverification) {
            if (familyDataBean.getState().equals(FhsConstants.FHS_FAMILY_STATE_ARCHIVED) || familyDataBean.getState().equals(FhsConstants.FHS_FAMILY_STATE_ARCHIVED_FHSR_REVERIFICATION) || familyDataBean.getState().equals(FhsConstants.FHS_FAMILY_STATE_ARCHIVED_MO_REVERIFICATION)) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_FOUND, MorbiditiesConstant.THREE_PLUS);
            } else if (familyDataBean.getState().equals(FhsConstants.FHS_FAMILY_STATE_NEW_FHSR_REVERIFICATION) || familyDataBean.getState().equals(FhsConstants.FHS_FAMILY_STATE_NEW_MO_REVERIFICATION)) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_FOUND, MorbiditiesConstant.ONE_PLUS);
            }
        }
        HashSet<String> hashSet = new HashSet();
        int i = 0;
        for (MemberDataBean memberDataBean3 : familyDataBean.getMembers()) {
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("memberId", i), memberDataBean3.getId());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MEMBER_FULL_NAME, i), UtilBean.getMemberFullName(memberDataBean3));
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("firstName", i), memberDataBean3.getFirstName());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("middleName", i), memberDataBean3.getMiddleName());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("lastName", i), memberDataBean3.getLastName());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.NAME_BASED_ON_AADHAR, i), memberDataBean3.getNameBasedOnAadhar());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("mobileNumber", i), memberDataBean3.getMobileNumber());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.AADHAR_NUMBER, i), memberDataBean3.getAadharNumber());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.BANK_ACCOUNT_NUMBER, i), memberDataBean3.getAccountNumber());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.NAME_AS_PER_BANK, i), memberDataBean3.getNameAsPerBankAccount());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.IFSC, i), memberDataBean3.getIfsc());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.PMJAY_CARD_NUMBER, i), memberDataBean3.getPmjayNumber());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("uniqueHealthId", i), memberDataBean3.getUniqueHealthId());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DEFAULT_MARITAL_STATUS, i), memberDataBean3.getMaritalStatus());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.ANS_12, i), MorbiditiesConstant.ONE_PLUS);
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MEMBER_STATE, i), memberDataBean3.getState());
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.BRN_NUMBER, i), memberDataBean3.getBrnNumber());
            if (memberDataBean3.getDob() != null) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("dob", i), memberDataBean3.getDob().toString());
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DOB_DISPLAY, i), simpleDateFormat.format(memberDataBean3.getDob()));
                int[] iArrCalculateAgeYearMonthDayOnGivenDate = UtilBean.calculateAgeYearMonthDayOnGivenDate(memberDataBean3.getDob(), Long.valueOf(new Date().getTime()));
                String ageDisplay = UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDayOnGivenDate[c], iArrCalculateAgeYearMonthDayOnGivenDate[1], iArrCalculateAgeYearMonthDayOnGivenDate[2]);
                if (ageDisplay != null) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.AGE_AS_PER_DATE, i), ageDisplay);
                }
            }
            if (memberDataBean3.getGender() != null) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("gender", i), UtilBean.getGenderLabelFromValue(memberDataBean3.getGender()));
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.ANS_12, i), UtilBean.getGenderValueAs123FromGender(memberDataBean3.getGender()));
            }
            if (memberDataBean3.getFamilyHeadFlag() != null && memberDataBean3.getFamilyHeadFlag().booleanValue()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HEAD_OF_FAMILY, UtilBean.getMemberFullName(memberDataBean3));
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("familyHeadFlag", i), MorbiditiesConstant.ONE_PLUS);
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.GRANDFATHER_NAME, i), memberDataBean3.getGrandfatherName());
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.HEAD_COUNT, i), String.valueOf(i));
            } else {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("familyHeadFlag", i), MorbiditiesConstant.TWO_PLUS);
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.RELATION_WITH_HOF, i), memberDataBean3.getRelationWithHof());
            }
            if (memberDataBean3.getMotherId() != null && (memberBeanRetrieveMemberBeanByActualId2 = this.fhsService.retrieveMemberBeanByActualId(memberDataBean3.getMotherId())) != null) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("motherId", i), memberDataBean3.getMotherId().toString());
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MOTHER_NAME, i), UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId2));
            }
            if (memberDataBean3.getHusbandId() != null && (memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(memberDataBean3.getHusbandId())) != null) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.HUSBAND_ID, i), memberDataBean3.getHusbandId().toString());
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.HUSBAND_NAME, i), UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId));
            }
            if (memberDataBean3.isAadharUpdated()) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.AADHAR_AVAILABLE, i), MorbiditiesConstant.ONE_PLUS);
            }
            if (memberDataBean3.getNormalCycleDays() != null) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DEFAULT_NORMAL_CYCLE_DAYS, i), memberDataBean3.getNormalCycleDays().toString());
            }
            if (memberDataBean3.getMenopauseArrived() != null && memberDataBean3.getMenopauseArrived().booleanValue()) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("menopauseArrived", i), MorbiditiesConstant.ONE_PLUS);
            } else {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("menopauseArrived", i), MorbiditiesConstant.TWO_PLUS);
            }
            if (memberDataBean3.getFamilyPlanningMethod() != null) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DEFAULT_FAMILY_PLANNING_METHOD, i), memberDataBean3.getFamilyPlanningMethod());
            }
            if (memberDataBean3.getFpInsertOperateDate() != null) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.FP_INSERT_OPERATE_DATE, i), memberDataBean3.getFpInsertOperateDate().toString());
            }
            if (memberDataBean3.getGender() != null && memberDataBean3.getGender().equals("F")) {
                if (memberDataBean3.getIsPregnantFlag() != null && memberDataBean3.getIsPregnantFlag().booleanValue()) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DEFAULT_IS_PREGNANT, i), MorbiditiesConstant.ONE_PLUS);
                } else {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DEFAULT_IS_PREGNANT, i), MorbiditiesConstant.TWO_PLUS);
                }
                if (memberDataBean3.getLmpDate() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DEFAULT_LMP, i), memberDataBean3.getLmpDate().toString());
                }
                if (memberDataBean3.getLastDeliveryDate() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("lastDeliveryDate", i), memberDataBean3.getLastDeliveryDate().toString());
                }
            }
            if (memberDataBean3.getLastMethodOfContraception() != null) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.LAST_METHOD_OF_CONTRACEPTION, i), memberDataBean3.getLastMethodOfContraception());
            }
            if (memberDataBean3.getMobileNumberVerified() != null && memberDataBean3.getMobileNumberVerified().booleanValue()) {
                SharedStructureData.isAnyMemberMobileVerificationDone = true;
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MOBILE_NUMBER_VERIFIED, i), MorbiditiesConstant.ONE_PLUS);
            } else {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MOBILE_NUMBER_VERIFIED, i), MorbiditiesConstant.TWO_PLUS);
            }
            if (memberDataBean3.getHealthIdNumber() != null && !memberDataBean3.getHealthIdNumber().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("healthIdNumber", i), memberDataBean3.getHealthIdNumber());
            }
            if (memberDataBean3.getEducationStatus() != null) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.EDUCATION_STATUS, i), memberDataBean3.getEducationStatus());
            }
            if (memberDataBean3.getAdditionalInfo() != null && !memberDataBean3.getAdditionalInfo().isEmpty()) {
                MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new GsonBuilder().registerTypeAdapter(Date.class, UtilBean.JSON_DATE_DESERIALIZER).create().fromJson(memberDataBean3.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MO_VERIFIED, i), Boolean.TRUE.equals(memberAdditionalInfoDataBean.getNsUploaded()) ? "T" : "F");
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.STUDENT_ID, i), memberAdditionalInfoDataBean.getStudentId());
            }
            if (this.isReverification) {
                if (FhsConstants.FHS_DEAD_CRITERIA_MEMBER_STATES.contains(memberDataBean3.getState())) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MEMBER_STATUS, i), MorbiditiesConstant.TWO_PLUS);
                } else if (FhsConstants.FHS_ARCHIVED_CRITERIA_MEMBER_STATES.contains(memberDataBean3.getState())) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MEMBER_STATUS, i), MorbiditiesConstant.THREE_PLUS);
                } else {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MEMBER_STATUS, i), MorbiditiesConstant.ONE_PLUS);
                }
                if (memberDataBean3.getCongenitalAnomalyIds() != null && !memberDataBean3.getCongenitalAnomalyIds().isEmpty()) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.CONGENITAL_STATUS, i), MorbiditiesConstant.ONE_PLUS);
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.CONGENITAL_ANOMALY_IDS, i), memberDataBean3.getCongenitalAnomalyIds());
                } else {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.CONGENITAL_STATUS, i), MorbiditiesConstant.TWO_PLUS);
                }
                if (memberDataBean3.getChronicDiseaseIds() != null && !memberDataBean3.getChronicDiseaseIds().isEmpty()) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.CHRONIC_DISEASE_STATUS, i), MorbiditiesConstant.ONE_PLUS);
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.CHRONIC_DISEASE_IDS, i), memberDataBean3.getChronicDiseaseIds());
                } else {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.CHRONIC_DISEASE_STATUS, i), MorbiditiesConstant.TWO_PLUS);
                }
                if (memberDataBean3.getCurrentDiseaseIds() != null && !memberDataBean3.getCurrentDiseaseIds().isEmpty()) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.CURRENT_DISEASE_STATUS, i), MorbiditiesConstant.ONE_PLUS);
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.CURRENT_DISEASE_IDS, i), memberDataBean3.getCurrentDiseaseIds());
                } else {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.CURRENT_DISEASE_STATUS, i), MorbiditiesConstant.TWO_PLUS);
                }
                if (memberDataBean3.getEyeIssueIds() != null && !memberDataBean3.getEyeIssueIds().isEmpty()) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.EYE_ISSUE_STATUS, i), MorbiditiesConstant.ONE_PLUS);
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.EYE_ISSUE_IDS, i), memberDataBean3.getEyeIssueIds());
                } else {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.EYE_ISSUE_STATUS, i), MorbiditiesConstant.TWO_PLUS);
                }
                if (memberDataBean3.getHealthIdNumber() != null && !memberDataBean3.getHealthIdNumber().isEmpty()) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("healthIdNumber", i), memberDataBean3.getHealthIdNumber());
                }
            }
            if (memberDataBean3.getMiddleName() != null && !memberDataBean3.getMiddleName().isEmpty()) {
                hashSet.add(memberDataBean3.getMiddleName());
            }
            i++;
            c = 0;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : hashSet) {
            arrayList.add(new OptionDataBean(str, str, null));
        }
        arrayList.add(new OptionDataBean(MorbiditiesConstant.ONE_PLUS, LabelConstants.ADD_NEW, null));
        SharedStructureData.middleNameList = arrayList;
    }

    private void addOptionForFamily() {
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.WHAT_DO_YOU_WANT_TO_DO_WITH_THIS_FAMILY)));
        ArrayList arrayList = new ArrayList();
        if (this.isReverification) {
            arrayList.add(UtilBean.getMyLabel(LabelConstants.RE_VERIFY_THIS_FAMILY));
        } else {
            arrayList.add(UtilBean.getMyLabel(LabelConstants.VERIFY_THIS_FAMILY));
            arrayList.add(UtilBean.getMyLabel(LabelConstants.MERGE_THIS_FAMILY_WITH_ANOTHER_FAMILY));
            arrayList.add(UtilBean.getMyLabel(LabelConstants.MIGRATE_THIS_FAMILY_TO_ANOTHER_LOCATION));
            arrayList.add(UtilBean.getMyLabel("Add new member"));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getButtonList(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$$ExternalSyntheticLambda1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m142xb0c607eb(adapterView, view, i, j);
            }
        }));
        this.footerLayout.setVisibility(8);
    }

    /* renamed from: lambda$addOptionForFamily$7$com-argusoft-sewa-android-app-activity-CFHCActivity, reason: not valid java name */
    /* synthetic */ void m142xb0c607eb(AdapterView adapterView, View view, int i, long j) {
        if (i == 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
            arrayList.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
            if (arrayList.contains(this.selectedFamily.getState())) {
                FamilyDataBean familyDataBean = this.selectedFamily;
                familyDataBean.setMembers(this.fhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(familyDataBean.getFamilyId()));
            } else {
                FamilyDataBean familyDataBean2 = this.selectedFamily;
                familyDataBean2.setMembers(this.fhsService.retrieveMemberDataBeansByFamily(familyDataBean2.getFamilyId()));
            }
            startFamilyHealthSurvey(this.selectedFamily);
            return;
        }
        if (i == 1) {
            Intent intent = new Intent(this.context, (Class<?>) FamilyMergeActivity_.class);
            this.myIntent = intent;
            intent.putExtra("familyToExpand", new Gson().toJson(this.selectedFamily));
            this.myIntent.putExtra("locationId", this.locationId);
            startActivityForResult(this.myIntent, 1002);
            return;
        }
        if (i == 2) {
            this.myIntent = new Intent(this.context, (Class<?>) FamilyMigrationOutActivity_.class);
            FamilyDataBean familyDataBean3 = this.selectedFamily;
            familyDataBean3.setMembers(this.fhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(familyDataBean3.getFamilyId()));
            this.myIntent.putExtra("familyToMigrate", new Gson().toJson(this.selectedFamily));
            this.myIntent.putExtra("locationId", this.locationId);
            this.myIntent.putExtra("isFamilyMigration", true);
            startActivityForResult(this.myIntent, 1004);
            return;
        }
        if (i == 3) {
            if (new ArrayList(FhsConstants.CFHC_FAMILY_STATES).contains(this.selectedFamily.getState())) {
                FamilyDataBean familyDataBean4 = this.selectedFamily;
                familyDataBean4.setMembers(this.fhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(familyDataBean4.getFamilyId()));
            } else {
                FamilyDataBean familyDataBean5 = this.selectedFamily;
                familyDataBean5.setMembers(this.fhsService.retrieveMemberDataBeansByFamily(familyDataBean5.getFamilyId()));
            }
            startMemberHealthSurvey(null, this.selectedFamily);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, "Are you sure want to close Comprehensive Family Health Census?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CFHCActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m144x31041137(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$8$com-argusoft-sewa-android-app-activity-CFHCActivity, reason: not valid java name */
    /* synthetic */ void m144x31041137(View view) {
        if (view.getId() == -1) {
            this.alertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.alertDialog.dismiss();
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<FamilyDataBean> listRetrieveFamilyDataBeansForCFHCByVillage = this.fhsService.retrieveFamilyDataBeansForCFHCByVillage(this.locationId, this.isReverification, 30L, this.offset);
        this.offset += 30;
        onLoadMoreUi(listRetrieveFamilyDataBeansForCFHCByVillage);
    }

    public void onLoadMoreUi(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> familyList = getFamilyList(list);
            this.familyDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, familyList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws NumberFormatException {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        this.footerLayout.setVisibility(0);
        if (menuItem.getItemId() == 16908332) {
            String str2 = this.screen;
            str2.hashCode();
            if (!str2.equals(OPTION_SELECTION_SCREEN)) {
                if (!str2.equals(FAMILY_SELECTION_SCREEN) || this.locationBeans.size() == 1) {
                    finish();
                } else if (this.locationBeans.isEmpty()) {
                    navigateToHomeScreen(false);
                } else {
                    this.screen = VILLAGE_SELECTION_SCREEN;
                    this.bodyLayoutContainer.removeAllViews();
                    addVillageSelectionSpinner();
                    this.nextButton.setText(UtilBean.getMyLabel("Next"));
                    this.nextButton.setOnClickListener(this);
                }
            } else {
                this.bodyLayoutContainer.removeAllViews();
                addSearchTextBox();
                addFamilyList();
                this.screen = FAMILY_SELECTION_SCREEN;
            }
        }
        return true;
    }
}
