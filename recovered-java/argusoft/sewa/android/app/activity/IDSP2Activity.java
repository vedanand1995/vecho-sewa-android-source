package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.IDSP2FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class IDSP2Activity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final String FINAL_SUBMISSION_SCREEN = "finalSubmissionScreen";
    private static final String FORM_SUBMISSION_SCREEN = "formSubmissionScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String NEXT_MEMBER_SELECTION_SCREEN = "newMemberSelectionScreen";
    private static final String OPTION_SELECTION_SCREEN = "optionSelectionScreen";
    private static final int RADIOBUTTON_ID_NO = 2;
    private static final int RADIOBUTTON_ID_YES = 1;
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private RadioGroup anyIllnessRadioGroup;
    private RadioGroup anyOneCovidContactRadioGroup;
    private RadioGroup anyOneTravelFromFamilyRadioGroup;
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    private String familyHeadText;
    SewaFhsServiceImpl fhsService;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private Map<String, MemberDataBean> headMembersMapWithFamilyIdAsKey;
    private boolean isAshaNotAssigned;
    LocationMasterServiceImpl locationService;
    private Intent myIntent;
    private Button nextButton;
    private RadioGroup nextMemberGroup;
    private MaterialTextView noFamilyAvailableView;
    private long offset;
    private PagingListView paginatedListView;
    private String screenName;
    private TextInputLayout searchText;
    private TextView selectAshaAreaTextView;
    private FamilyDataBean selectedFamily;
    private MemberDataBean selectedMember;
    private String selectedVillage;
    SewaServiceImpl sewaService;
    TechoAshaServiceImpl techoAshaService;
    private MaterialTextView textView;
    private Spinner villageSpinner;
    private Timer timer = new Timer();
    private List<Integer> selectedAshaAreas = new ArrayList();
    private List<LocationBean> villageList = new ArrayList();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<FamilyDataBean> familyDataBeans = null;
    private List<String> verifiedMemberList = null;
    private List<Integer> verifiedMemberCounters = null;
    private boolean isAshaLogin = false;
    private int selectedFamilyIndex = -1;
    private int selectedMemberIndex = -1;
    private long limit = 30;
    private boolean canMoveBack = true;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        this.isAshaLogin = SewaTransformer.loginBean.getUserRole().equalsIgnoreCase("Asha");
        getWindow().setSoftInputMode(16);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            this.myIntent = intent;
            intent.setFlags(335544320);
            startActivity(this.myIntent);
            finish();
        }
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        setTitle(UtilBean.getTitleText("Surveillance"));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        getVillageList();
    }

    public void getVillageList() {
        this.screenName = VILLAGE_SELECTION_SCREEN;
        if (this.isAshaLogin) {
            List<LocationBean> listRetrieveAshaAreasAssignedToUser = this.techoAshaService.retrieveAshaAreasAssignedToUser();
            this.ashaAreaList = listRetrieveAshaAreasAssignedToUser;
            if (listRetrieveAshaAreasAssignedToUser == null || listRetrieveAshaAreasAssignedToUser.isEmpty()) {
                addDataNotSyncedScreen();
                return;
            } else {
                addAshaAreaSelectionSpinner();
                return;
            }
        }
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.villageList = distinctLocationsAssignedToUser;
        if (distinctLocationsAssignedToUser == null || distinctLocationsAssignedToUser.isEmpty()) {
            addDataNotSyncedScreen();
            return;
        }
        String string = this.villageList.get(0).getActualID().toString();
        this.selectedVillage = string;
        this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(Integer.valueOf(string));
        addVillageSelectionSpinner();
    }

    public void addVillageSelectionSpinner() {
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_VILLAGE));
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
        String[] strArr = new String[this.villageList.size()];
        Iterator<LocationBean> it = this.villageList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                IDSP2Activity iDSP2Activity = IDSP2Activity.this;
                iDSP2Activity.ashaAreaList = iDSP2Activity.fhsService.retrieveAshaAreaAssignedToUser(((LocationBean) IDSP2Activity.this.villageList.get(i2)).getActualID());
                IDSP2Activity.this.addAshaAreaSelectionSpinner();
            }
        });
        this.bodyLayoutContainer.addView(this.villageSpinner);
        addAshaAreaSelectionSpinner();
    }

    public void addAshaAreaSelectionSpinner() {
        TextView textView = this.selectAshaAreaTextView;
        if (textView == null) {
            this.selectAshaAreaTextView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA);
        } else {
            this.bodyLayoutContainer.removeView(textView);
        }
        Spinner spinner = this.ashaAreaSpinner;
        if (spinner != null) {
            this.bodyLayoutContainer.removeView(spinner);
        }
        String[] strArr = new String[this.ashaAreaList.size() + 1];
        strArr[0] = LabelConstants.ALL;
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 1;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        this.ashaAreaSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 3);
        this.bodyLayoutContainer.addView(this.selectAshaAreaTextView);
        this.bodyLayoutContainer.addView(this.ashaAreaSpinner);
        hideProcessDialog();
    }

    public void addDataNotSyncedScreen() {
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.DATA_NOT_SYNCED_ALERT));
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IDSP2Activity.this.navigateToHomeScreen(false);
            }
        };
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        this.nextButton.setOnClickListener(onClickListener);
        hideProcessDialog();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001d  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r8) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.IDSP2Activity.onClick(android.view.View):void");
    }

    public void addNewFamily() {
        showProcessDialog();
        this.myIntent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        PreferenceManager.getDefaultSharedPreferences(this.context).edit().clear().apply();
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedStructureData.currentFamilyDataBean = null;
        SharedStructureData.familyDataBeanToBeMerged = null;
        SharedStructureData.totalFamilyMembersCount = -1;
        SharedStructureData.relatedPropertyHashTable.put("familyId", "Not available");
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HEAD_OF_FAMILY, "Not available");
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_FOUND, MorbiditiesConstant.ONE_PLUS);
        if (this.selectedVillage != null) {
            SharedStructureData.relatedPropertyHashTable.put("locationId", this.selectedVillage);
        }
        List<Integer> list = this.selectedAshaAreas;
        if (list != null && list.size() == 1) {
            SharedStructureData.relatedPropertyHashTable.put("areaId", this.selectedAshaAreas.get(0).toString());
        }
        this.myIntent.putExtra("entity", FormConstants.IDSP_NEW_FAMILY);
        startActivityForResult(this.myIntent, 1009);
        hideProcessDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSearchTextBox() {
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        ArrayList arrayList = new ArrayList();
        arrayList.add(UtilBean.getMyLabel(LabelConstants.ADD_NEW_FAMILY));
        ListView buttonList = MyStaticComponents.getButtonList(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 0) {
                    IDSP2Activity.this.addNewFamily();
                }
            }
        });
        buttonList.setPadding(0, 0, 0, 30);
        this.bodyLayoutContainer.addView(buttonList);
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 20, 1);
        this.searchText = editText;
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (this.searchText.getEditText() != null) {
            this.searchText.getEditText().addTextChangedListener(new AnonymousClass4());
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.IDSP2Activity$4, reason: invalid class name */
    class AnonymousClass4 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass4() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            IDSP2Activity.this.timer.cancel();
            IDSP2Activity.this.timer = new Timer();
            IDSP2Activity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.4.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        IDSP2Activity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.4.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                IDSP2Activity.this.retrieveFamilyListFromDB(charSequence.toString());
                                IDSP2Activity.this.searchText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        IDSP2Activity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.4.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                IDSP2Activity.this.showProcessDialog();
                                IDSP2Activity.this.retrieveFamilyListFromDB(null);
                                IDSP2Activity.this.searchText.clearFocus();
                            }
                        });
                    }
                }
            }, IDSP2Activity.DELAY);
        }
    }

    public void addFamilyList() {
        this.screenName = FAMILY_SELECTION_SCREEN;
        addAshaNotAssignedMessage();
        if (this.isAshaNotAssigned) {
            return;
        }
        showProcessDialog();
        retrieveFamilyListFromDB(null);
    }

    public void retrieveFamilyListFromDB(String str) {
        this.offset = 0L;
        this.selectedFamilyIndex = -1;
        if (str == null) {
            this.familyDataBeans = this.fhsService.retrieveFamilyDataBeansForIDSPByVillage(this.selectedVillage, this.selectedAshaAreas, this.limit, 0L);
            this.offset += this.limit;
        } else {
            this.familyDataBeans = this.fhsService.searchFamilyDataBeansForIDSPByVillage(str, this.selectedVillage, this.selectedAshaAreas);
        }
        setFamilySelectionScreen(str != null);
    }

    public void setFamilySelectionScreen(boolean z) {
        this.nextMemberGroup = null;
        this.bodyLayoutContainer.removeView(this.textView);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.noFamilyAvailableView);
        List<FamilyDataBean> list = this.familyDataBeans;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FAMILY);
            this.textView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            ArrayList arrayList = new ArrayList(getFamilyList(this.familyDataBeans));
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.5
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    IDSP2Activity.this.selectedFamilyIndex = i;
                }
            };
            if (z) {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_two_item, onItemClickListener, null);
            } else {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_two_item, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.paginatedListView);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_FAMILIES_FOUND);
            this.noFamilyAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IDSP2Activity.this.navigateToHomeScreen(false);
                }
            });
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> getFamilyList(List<FamilyDataBean> list) {
        String myLabel;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<FamilyDataBean> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getFamilyId());
        }
        this.headMembersMapWithFamilyIdAsKey = this.fhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList);
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
            if (familyDataBean.getLastIdsp2ScreeningDate() != null && new Date(familyDataBean.getLastIdsp2ScreeningDate().longValue()).after(UtilBean.getDateAfterNoOfDays(new Date(), -15))) {
                arrayList2.add(new ListItemDataBean(null, familyDataBean.getFamilyId(), null, null, str, true));
            } else {
                arrayList2.add(new ListItemDataBean(null, familyDataBean.getFamilyId(), null, null, str, false));
            }
        }
        return arrayList2;
    }

    private void addAshaNotAssignedMessage() {
        List<LocationBean> listRetrieveLocationBeansByLevelAndParent;
        if (this.isAshaLogin || (listRetrieveLocationBeansByLevelAndParent = this.locationService.retrieveLocationBeansByLevelAndParent(7, Long.valueOf(this.selectedVillage))) == null || listRetrieveLocationBeansByLevelAndParent.isEmpty()) {
            return;
        }
        Iterator<LocationBean> it = listRetrieveLocationBeansByLevelAndParent.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().getName().split(GlobalTypes.KEY_VALUE_SEPARATOR).length <= 1) {
                this.isAshaNotAssigned = true;
                break;
            }
        }
        if (this.isAshaNotAssigned) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.7
                @Override // java.lang.Runnable
                public void run() {
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.7.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            IDSP2Activity.this.navigateToHomeScreen(false);
                        }
                    };
                    IDSP2Activity.this.alertDialog = new MyAlertDialog(IDSP2Activity.this.context, false, GlobalTypes.MSG_ASHA_NOT_ASSIGNED, onClickListener, DynamicUtils.BUTTON_OK);
                    IDSP2Activity.this.alertDialog.show();
                }
            });
        }
    }

    public void addOptionSelectionScreenForFamily() {
        this.verifiedMemberList = new ArrayList();
        this.anyIllnessRadioGroup = initializeRadioGroup();
        this.anyOneTravelFromFamilyRadioGroup = initializeRadioGroup();
        this.anyOneCovidContactRadioGroup = initializeRadioGroup();
        setOptionSelectionScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RadioGroup initializeRadioGroup() {
        HashMap map = new HashMap();
        map.put(1, "Yes");
        map.put(2, "No");
        return MyStaticComponents.getRadioGroup(this, map, true);
    }

    private void setOptionSelectionScreen() {
        this.screenName = OPTION_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        MemberDataBean memberDataBean = this.headMembersMapWithFamilyIdAsKey.get(this.selectedFamily.getFamilyId());
        if (memberDataBean != null) {
            String str = memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName();
            this.familyHeadText = str;
            this.familyHeadText = str.replace(" null", "");
        } else {
            this.familyHeadText = UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
        }
        LinearLayout detailsLayout = MyStaticComponents.getDetailsLayout(this.context, -1, 1, this.bodyLayoutContainer.getPaddingTop());
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, "Family ID:"));
        detailsLayout.addView(MyStaticComponents.generateBoldAnswerView(this.context, UtilBean.getMyLabel(this.selectedFamily.getFamilyId())));
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, "Family Head:"));
        detailsLayout.addView(MyStaticComponents.generateAnswerView(this.context, this.familyHeadText));
        this.bodyLayoutContainer.addView(detailsLayout);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.DOES_ANYONE_IN_THE_FAMILY_HAS_ANY_ILLNESS_OR_DISCOMFORT));
        this.bodyLayoutContainer.addView(this.anyIllnessRadioGroup);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ANYONE_FROM_THE_FAMILY_TRAVEL_IN_THE_PAST_WEEK));
        this.bodyLayoutContainer.addView(this.anyOneTravelFromFamilyRadioGroup);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CONTACT_WITH_ANY_SUSPECTED_OR_POSITIVE_CORONA_CASES));
        this.bodyLayoutContainer.addView(this.anyOneCovidContactRadioGroup);
    }

    private Boolean checkForBasicOptionsAnswer() {
        if (this.anyIllnessRadioGroup.getCheckedRadioButtonId() == -1 || this.anyOneTravelFromFamilyRadioGroup.getCheckedRadioButtonId() == -1 || this.anyOneCovidContactRadioGroup.getCheckedRadioButtonId() == -1) {
            return null;
        }
        boolean z = true;
        if (this.anyIllnessRadioGroup.getCheckedRadioButtonId() != 1 && this.anyOneTravelFromFamilyRadioGroup.getCheckedRadioButtonId() != 1 && this.anyOneCovidContactRadioGroup.getCheckedRadioButtonId() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public void addSelectedFamilyDetails() {
        FamilyDataBean familyDataBean = this.selectedFamily;
        familyDataBean.setMembers(this.fhsService.retrieveActiveMemberByFamilyIdForIdsp(familyDataBean.getFamilyId()));
        memberSelectionScreen();
    }

    public void memberSelectionScreen() {
        this.screenName = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        LinearLayout detailsLayout = MyStaticComponents.getDetailsLayout(this.context, -1, 1, this.bodyLayoutContainer.getPaddingTop());
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, "Family ID:"));
        detailsLayout.addView(MyStaticComponents.generateBoldAnswerView(this.context, UtilBean.getMyLabel(this.selectedFamily.getFamilyId())));
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, "Family Head:"));
        detailsLayout.addView(MyStaticComponents.generateAnswerView(this.context, this.familyHeadText));
        this.bodyLayoutContainer.addView(detailsLayout);
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this.context, LabelConstants.SEARCH_MEMBER));
        ArrayList arrayList = new ArrayList();
        if (this.selectedFamily.getMembers() != null && !this.selectedFamily.getMembers().isEmpty()) {
            this.verifiedMemberCounters = new ArrayList();
            int i = 0;
            for (MemberDataBean memberDataBean : this.selectedFamily.getMembers()) {
                String strReplace = (memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName()).replace(" null", "");
                if (this.verifiedMemberList.contains(memberDataBean.getId())) {
                    this.verifiedMemberCounters.add(Integer.valueOf(i));
                    arrayList.add(new ListItemDataBean(null, memberDataBean.getUniqueHealthId(), null, null, strReplace, true));
                } else {
                    arrayList.add(new ListItemDataBean(null, memberDataBean.getUniqueHealthId(), null, null, strReplace, false));
                }
                i++;
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.8
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    IDSP2Activity.this.selectedMemberIndex = i2;
                }
            }, null));
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND));
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        hideProcessDialog();
    }

    public void setFormSubmissionScreen() {
        this.nextButton.setText("Okay");
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.YOUR_FORM_IS_COMPLETE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.COMPLETED_SURVEILLANCE_FORM_FOR_THE_FAMILY));
    }

    public void storeIDSPForm() {
        IDSP2FamilyDataBean iDSP2FamilyDataBean = new IDSP2FamilyDataBean();
        iDSP2FamilyDataBean.setFamilyId(this.selectedFamily.getId());
        iDSP2FamilyDataBean.setAnyIllness(this.anyIllnessRadioGroup.getCheckedRadioButtonId() == 1);
        iDSP2FamilyDataBean.setAnyOneTravelFromFamily(this.anyOneTravelFromFamilyRadioGroup.getCheckedRadioButtonId() == 1);
        iDSP2FamilyDataBean.setAnyOneCovidContact(this.anyOneCovidContactRadioGroup.getCheckedRadioButtonId() == 1);
        iDSP2FamilyDataBean.setServiceDate(Long.valueOf(new Date().getTime()));
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
        storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        storeAnswerBean.setChecksum(sb.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(-1L);
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        storeAnswerBean.setAnswerEntity(FormConstants.IDSP_FAMILY_2);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setBeneficiaryName(this.selectedFamily.getFamilyId() + " - " + this.familyHeadText);
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        loggerBean.setTaskName(UtilBean.getMyLabel("Surveillance"));
        loggerBean.setFormType(FormConstants.IDSP_FAMILY_2);
        storeAnswerBean.setAnswer(new Gson().toJson(iDSP2FamilyDataBean));
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        this.sewaService.createLoggerBean(loggerBean);
        FamilyBean familyBeanRetrieveFamilyBeanByActualId = this.fhsService.retrieveFamilyBeanByActualId(Long.valueOf(this.selectedFamily.getId()));
        familyBeanRetrieveFamilyBeanByActualId.setLastIdsp2ScreeningDate(iDSP2FamilyDataBean.getServiceDate());
        this.fhsService.updateFamily(familyBeanRetrieveFamilyBeanByActualId);
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.9
            @Override // java.lang.Runnable
            public void run() {
                SewaUtil.generateToast(IDSP2Activity.this.context, UtilBean.getMyLabel(LabelConstants.SURVEILLANCE_FORM_SUBMITTED_SUCCESSFULLY));
                IDSP2Activity.this.bodyLayoutContainer.removeAllViews();
                IDSP2Activity.this.screenName = IDSP2Activity.FAMILY_SELECTION_SCREEN;
                IDSP2Activity.this.addSearchTextBox();
                IDSP2Activity.this.addFamilyList();
            }
        });
    }

    public void setScreenTOAskForNextMemberVerfication() {
        this.screenName = NEXT_MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.PROCEED_FOR_NEXT_MEMBER));
        this.bodyLayoutContainer.addView(this.nextMemberGroup);
    }

    private void startDynamicFormActivity() {
        showProcessDialog();
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        this.formMetaDataUtil.setMetaDataForRchFormByFormType(FormConstants.IDSP_MEMBER_2, this.selectedMember.getId(), this.selectedMember.getFamilyId(), null, PreferenceManager.getDefaultSharedPreferences(this));
        StringBuilder sb = new StringBuilder("-11!");
        sb.append(this.anyIllnessRadioGroup.getCheckedRadioButtonId() == 1 ? "T" : "F");
        sb.append("~-12!");
        sb.append(this.anyOneTravelFromFamilyRadioGroup.getCheckedRadioButtonId() == 1 ? "T" : "F");
        sb.append("~-13!");
        sb.append(this.anyOneCovidContactRadioGroup.getCheckedRadioButtonId() == 1 ? "T" : "F");
        sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        SharedStructureData.relatedPropertyHashTable.put("familyQuestions", sb.toString());
        SharedStructureData.relatedPropertyHashTable.put("anyMemberTravelled", this.anyOneTravelFromFamilyRadioGroup.getCheckedRadioButtonId() != 1 ? "F" : "T");
        intent.putExtra("entity", FormConstants.IDSP_MEMBER_2);
        startActivityForResult(intent, 1008);
        hideProcessDialog();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1008) {
            if (i == 1009) {
                this.bodyLayoutContainer.removeAllViews();
                addSearchTextBox();
                addFamilyList();
                this.screenName = FAMILY_SELECTION_SCREEN;
                return;
            }
            navigateToHomeScreen(false);
            return;
        }
        if (i2 == -1) {
            this.verifiedMemberList.add(this.selectedMember.getId());
            if (this.verifiedMemberList.size() == this.selectedFamily.getMembers().size()) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.10
                    @Override // java.lang.Runnable
                    public void run() {
                        IDSP2Activity.this.canMoveBack = false;
                        IDSP2Activity.this.screenName = IDSP2Activity.FINAL_SUBMISSION_SCREEN;
                        IDSP2Activity.this.setFormSubmissionScreen();
                    }
                });
                return;
            } else {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.11
                    @Override // java.lang.Runnable
                    public void run() {
                        IDSP2Activity iDSP2Activity = IDSP2Activity.this;
                        iDSP2Activity.nextMemberGroup = iDSP2Activity.initializeRadioGroup();
                        IDSP2Activity.this.setScreenTOAskForNextMemberVerfication();
                    }
                });
                return;
            }
        }
        memberSelectionScreen();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.WANT_TO_CLOSE_SURVEILLANCE, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    IDSP2Activity.this.alertDialog.dismiss();
                    IDSP2Activity.this.navigateToHomeScreen(false);
                    IDSP2Activity.this.finish();
                    return;
                }
                IDSP2Activity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r5) {
        /*
            r4 = this;
            super.onOptionsItemSelected(r5)
            java.lang.String r0 = r4.screenName
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lb8
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto Lb8
        L11:
            int r5 = r5.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r5 != r0) goto Lb7
            r5 = 0
            r4.setSubTitle(r5)
            java.lang.String r5 = r4.screenName
            r5.hashCode()
            int r0 = r5.hashCode()
            r3 = -1
            switch(r0) {
                case -2123593796: goto L64;
                case -1337649826: goto L59;
                case -635151389: goto L4e;
                case -169448172: goto L43;
                case 289380462: goto L38;
                case 754789150: goto L2d;
                default: goto L2b;
            }
        L2b:
            r1 = -1
            goto L6d
        L2d:
            java.lang.String r0 = "memberSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L36
            goto L2b
        L36:
            r1 = 5
            goto L6d
        L38:
            java.lang.String r0 = "finalSubmissionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L41
            goto L2b
        L41:
            r1 = 4
            goto L6d
        L43:
            java.lang.String r0 = "familySelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L4c
            goto L2b
        L4c:
            r1 = 3
            goto L6d
        L4e:
            java.lang.String r0 = "optionSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L57
            goto L2b
        L57:
            r1 = 2
            goto L6d
        L59:
            java.lang.String r0 = "newMemberSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L62
            goto L2b
        L62:
            r1 = 1
            goto L6d
        L64:
            java.lang.String r0 = "formSubmissionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L6d
            goto L2b
        L6d:
            switch(r1) {
                case 0: goto Lad;
                case 1: goto La7;
                case 2: goto L99;
                case 3: goto L90;
                case 4: goto L80;
                case 5: goto L74;
                default: goto L70;
            }
        L70:
            r4.finish()
            goto Lb7
        L74:
            android.widget.RadioGroup r5 = r4.nextMemberGroup
            if (r5 == 0) goto L7c
            r4.setScreenTOAskForNextMemberVerfication()
            goto Lb7
        L7c:
            r4.setOptionSelectionScreen()
            goto Lb7
        L80:
            boolean r5 = r4.canMoveBack
            if (r5 != 0) goto L8a
            java.lang.String r5 = "Form for all members has been filled. Please press \"Okay\" to continue."
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r4, r5)
            goto Lb7
        L8a:
            r4.setScreenTOAskForNextMemberVerfication()
            r4.canMoveBack = r2
            goto Lb7
        L90:
            android.widget.LinearLayout r5 = r4.bodyLayoutContainer
            r5.removeAllViews()
            r4.getVillageList()
            goto Lb7
        L99:
            r4.selectedFamilyIndex = r3
            android.widget.LinearLayout r5 = r4.bodyLayoutContainer
            r5.removeAllViews()
            r4.addSearchTextBox()
            r4.addFamilyList()
            goto Lb7
        La7:
            java.lang.String r5 = "Form for a member is already stored. Please move ahead."
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r4, r5)
            goto Lb7
        Lad:
            android.widget.Button r5 = r4.nextButton
            java.lang.String r0 = "Next"
            r5.setText(r0)
            r4.setOptionSelectionScreen()
        Lb7:
            return r2
        Lb8:
            r4.navigateToHomeScreen(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.IDSP2Activity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        if (FAMILY_SELECTION_SCREEN.equals(this.screenName)) {
            onLoadMoreBackground();
        }
    }

    public void onLoadMoreBackground() {
        List<FamilyDataBean> listRetrieveFamilyDataBeansForIDSPByVillage = this.fhsService.retrieveFamilyDataBeansForIDSPByVillage(this.selectedVillage, this.selectedAshaAreas, this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUi(listRetrieveFamilyDataBeansForIDSPByVillage);
    }

    public void onLoadMoreUi(List<FamilyDataBean> list) {
        if (!list.isEmpty()) {
            List<ListItemDataBean> familyList = getFamilyList(list);
            this.familyDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, familyList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
