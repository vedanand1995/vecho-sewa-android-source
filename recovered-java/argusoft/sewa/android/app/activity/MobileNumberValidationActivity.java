package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MobileNumberUpdationBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class MobileNumberValidationActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final String MEMBER_DETAILS_SCREEN = "memberDetailsScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String MOBILE_NUMBER_VERIFICATION_SCREEN = "mobileNumberVerificationScreen";
    private static final String MSG_MOBILE_NOT_VALID = "Mobile number must contain 10 digits.";
    private static final String MSG_MOBILE_NULL = "Please Enter Mobile Number";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    private FamilyDataBean familyDataBean;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    private TextView headerText;
    private Boolean isDefaultMobileNumber;
    private String locationId;
    private MemberDataBean memberDataBean;
    private TextInputLayout mobileNumberEditText;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noFamilyAvailableView;
    private QueFormBean otpQuestionBean;
    private PagingListView paginatedListView;
    private MaterialTextView pagingHeaderView;
    private RadioGroup radioGroupForYesNo;
    private String screen;
    private CharSequence searchString;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private Spinner spinner;
    TechoServiceImpl techoService;
    private LinearLayout verificationLayoutContainer;
    private List<LocationBean> locationBeans = new ArrayList();
    private List<FamilyDataBean> familyDataBeans = null;
    private List<MemberDataBean> memberDataBeans = new ArrayList();
    private Timer timer = new Timer();
    private boolean isYesChecked = false;
    private int selectedFamilyIndex = -1;
    private int offset = 0;
    private int limit = 30;
    private int selectedMemberIndex = -1;

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
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.MOBILE_NUMBER_VERIFICATION_TITLE));
    }

    private void initView() throws NumberFormatException {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setContentView(this.globalPanel);
        if (!this.sewaService.isOnline()) {
            showNotOnlineMessage();
            return;
        }
        if (SharedStructureData.sewaServiceRestClient == null) {
            SharedStructureData.sewaServiceRestClient = this.sewaServiceRestClient;
        }
        setBodyDetail();
    }

    public void setBodyDetail() throws NumberFormatException {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.locationBeans = distinctLocationsAssignedToUser;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.locationId = this.locationBeans.get(0).getActualID().toString();
            this.bodyLayoutContainer.removeAllViews();
            addSearchTextBox();
            retrieveFamilyListFromDB(null);
            return;
        }
        if (this.locationBeans.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            addVillageSelectionSpinner();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r5) {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.onClick(android.view.View):void");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, GlobalTypes.MSG_CANCEL_MOBILE_VERIFICATION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MobileNumberValidationActivity.this.myAlertDialog.dismiss();
                    MobileNumberValidationActivity.this.navigateToHomeScreen(false);
                } else {
                    MobileNumberValidationActivity.this.myAlertDialog.dismiss();
                }
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    public void addSearchTextBox() {
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 20, 1);
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new AnonymousClass2(editText));
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity$2, reason: invalid class name */
    class AnonymousClass2 implements TextWatcher {
        final /* synthetic */ TextInputLayout val$editText;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass2(TextInputLayout textInputLayout) {
            this.val$editText = textInputLayout;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            MobileNumberValidationActivity.this.timer.cancel();
            MobileNumberValidationActivity.this.timer = new Timer();
            MobileNumberValidationActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.2.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        MobileNumberValidationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MobileNumberValidationActivity.this.retrieveFamilyListFromDB(charSequence);
                                AnonymousClass2.this.val$editText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        MobileNumberValidationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.2.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                MobileNumberValidationActivity.this.showProcessDialog();
                                MobileNumberValidationActivity.this.retrieveFamilyListFromDB(null);
                                AnonymousClass2.this.val$editText.clearFocus();
                            }
                        });
                    }
                }
            }, MobileNumberValidationActivity.DELAY);
        }
    }

    public void addVillageSelectionSpinner() throws NumberFormatException {
        this.screen = VILLAGE_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
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

    public void retrieveFamilyListFromDB(CharSequence charSequence) {
        this.searchString = charSequence;
        this.offset = 0;
        this.selectedFamilyIndex = -1;
        this.familyDataBeans = this.fhsService.retrieveAssignedFamilyDataBeansToUserForMobileNumberUpdationAndVerification(charSequence, this.locationId, this.limit, 0);
        this.offset += this.limit;
        addFamilySelectionScreen();
    }

    public void addFamilySelectionScreen() {
        this.screen = FAMILY_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        this.bodyLayoutContainer.removeView(this.noFamilyAvailableView);
        if (!this.familyDataBeans.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, UtilBean.getMyLabel(LabelConstants.SEARCH_FAMILY));
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getFamilyList(this.familyDataBeans), R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MobileNumberValidationActivity.this.selectedFamilyIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_FAMILIES_FOUND));
            this.noFamilyAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
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
        Map<String, MemberDataBean> mapRetrieveHeadMemberDataBeansByFamilyId = this.fhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList);
        for (FamilyDataBean familyDataBean : list) {
            MemberDataBean memberDataBean = mapRetrieveHeadMemberDataBeansByFamilyId.get(familyDataBean.getFamilyId());
            if (memberDataBean != null) {
                myLabel = (memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName()).replace(" null", "");
            } else {
                myLabel = UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
            }
            arrayList2.add(new ListItemDataBean(familyDataBean.getFamilyId(), myLabel));
        }
        return arrayList2;
    }

    public void retriveMemberListFromDB() {
        this.memberDataBeans = this.fhsService.retrieveMemberDataBeanForMobileNumberUpdation(this.familyDataBean.getFamilyId());
        addMemberSelectionScreen();
    }

    public void addMemberSelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, UtilBean.getMyLabel(LabelConstants.SEARCH_MEMBER)));
        ArrayList arrayList = new ArrayList();
        if (!this.memberDataBeans.isEmpty()) {
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.4
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MobileNumberValidationActivity.this.selectedMemberIndex = i;
                }
            };
            for (MemberDataBean memberDataBean : this.memberDataBeans) {
                arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), memberDataBean.getFirstName() + " " + memberDataBean.getLastName()));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_item, onItemClickListener, null));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER_VERIFIED_FOR_ALL_MEMBER)));
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        hideProcessDialog();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:13:0x015b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addMemberDetailsScreen() {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.addMemberDetailsScreen():void");
    }

    public void addMobileVerificationScreen() {
        this.screen = MOBILE_NUMBER_VERIFICATION_SCREEN;
        super.setAlertRequired(true);
        this.bodyLayoutContainer.removeAllViews();
        if (this.otpQuestionBean == null) {
            QueFormBean queFormBean = new QueFormBean();
            this.otpQuestionBean = queFormBean;
            queFormBean.setLoopCounter(0);
            this.otpQuestionBean.setRelatedpropertyname("mobileNumber");
        }
        if (this.headerText == null) {
            this.headerText = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER));
        }
        if (this.mobileNumberEditText == null) {
            TextInputLayout editText = MyStaticComponents.getEditText(this.context, LabelConstants.MOBILE_NUMBER, -1, 10, 2);
            this.mobileNumberEditText = editText;
            if (editText.getEditText() != null) {
                this.mobileNumberEditText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.6
                    private String before;

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                        if (Pattern.compile("^([6-9]?|[6-9]\\d{0,9})$").matcher(charSequence.toString()).matches()) {
                            this.before = charSequence.toString();
                        }
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        if (Boolean.TRUE.equals(SharedStructureData.isMobileVerificationBlocked)) {
                            SewaUtil.generateToast(MobileNumberValidationActivity.this.context, LabelConstants.MOBILE_VERIFICATION_SERVICE_IS_TEMPORARILY_BLOCKED);
                            return;
                        }
                        if (!Pattern.compile("^([6-9]?|[6-9]\\d{0,9})$").matcher(editable.toString().trim()).matches()) {
                            MobileNumberValidationActivity.this.mobileNumberEditText.getEditText().setText(this.before);
                            MobileNumberValidationActivity.this.mobileNumberEditText.getEditText().setSelection(this.before.length());
                            return;
                        }
                        ValidationTagBean validationTagBean = new ValidationTagBean("mobileNumber", "Please enter valid mobile number");
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(validationTagBean);
                        String strCheckValidation = DynamicUtils.checkValidation(editable.toString(), 0, arrayList);
                        if (Pattern.compile("^\\d{10}$").matcher(editable).matches()) {
                            if (editable.toString().equals(MobileNumberValidationActivity.this.memberDataBean.getMobileNumber()) && MobileNumberValidationActivity.this.memberDataBean.getMobileNumberVerified() != null && !Boolean.FALSE.equals(MobileNumberValidationActivity.this.memberDataBean.getMobileNumberVerified())) {
                                MobileNumberValidationActivity.this.otpQuestionBean.setAnswer("F");
                                MobileNumberValidationActivity.this.bodyLayoutContainer.removeView(MobileNumberValidationActivity.this.verificationLayoutContainer);
                                return;
                            } else {
                                if (strCheckValidation != null) {
                                    SewaUtil.generateToast(MobileNumberValidationActivity.this.context, strCheckValidation);
                                    return;
                                }
                                SharedStructureData.isMobileVerificationBlocked = false;
                                SharedStructureData.relatedPropertyHashTable.put("mobileNumber", editable.toString());
                                MobileNumberValidationActivity.this.otpQuestionBean.setAnswer(null);
                                MobileNumberValidationActivity mobileNumberValidationActivity = MobileNumberValidationActivity.this;
                                mobileNumberValidationActivity.verificationLayoutContainer = MyDynamicComponents.getOTPBasedVerificationComponent(mobileNumberValidationActivity.context, MobileNumberValidationActivity.this.otpQuestionBean);
                                MobileNumberValidationActivity.this.bodyLayoutContainer.addView(MobileNumberValidationActivity.this.verificationLayoutContainer);
                                return;
                            }
                        }
                        MobileNumberValidationActivity.this.otpQuestionBean.setAnswer(null);
                        MobileNumberValidationActivity.this.bodyLayoutContainer.removeView(MobileNumberValidationActivity.this.verificationLayoutContainer);
                    }
                });
            }
        }
        this.bodyLayoutContainer.addView(this.headerText);
        this.bodyLayoutContainer.addView(this.mobileNumberEditText);
        if (this.mobileNumberEditText.getEditText() != null) {
            if (Boolean.TRUE.equals(this.isDefaultMobileNumber) && this.memberDataBean.getMobileNumber() != null) {
                this.mobileNumberEditText.getEditText().setText(this.memberDataBean.getMobileNumber());
            } else if (!this.mobileNumberEditText.getEditText().getText().toString().isEmpty()) {
                this.mobileNumberEditText.getEditText().setText(this.mobileNumberEditText.getEditText().getText());
            }
        }
        this.isDefaultMobileNumber = false;
        hideProcessDialog();
    }

    private void mobileNumberUpdationBean() {
        MobileNumberUpdationBean mobileNumberUpdationBean = new MobileNumberUpdationBean();
        mobileNumberUpdationBean.setMemberId(this.memberDataBean.getId());
        mobileNumberUpdationBean.setMobileNumber(((EditText) Objects.requireNonNull(this.mobileNumberEditText.getEditText())).getText().toString());
        mobileNumberUpdationBean.setWhatsappSmsSchems(Boolean.valueOf(this.otpQuestionBean.getAnswer().toString().endsWith("T")));
        this.fhsService.mobileNumberVerificationAndUpdationOfFamilyMember(mobileNumberUpdationBean, Long.valueOf(this.memberDataBean.getId()));
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER_VERIFIED_SUCCESSFULLY));
    }

    private void showNotOnlineMessage() {
        hideProcessDialog();
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MobileNumberValidationActivity.this.myAlertDialog.dismiss();
                MobileNumberValidationActivity.this.navigateToHomeScreen(false);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
        this.myAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.8
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                MobileNumberValidationActivity.this.myAlertDialog.dismiss();
                MobileNumberValidationActivity.this.navigateToHomeScreen(false);
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r6) throws java.lang.NumberFormatException {
        /*
            r5 = this;
            super.onOptionsItemSelected(r6)
            java.lang.String r0 = r5.screen
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Ld1
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto Ld1
        L11:
            int r6 = r6.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r6 != r0) goto Ld0
            java.lang.String r6 = r5.screen
            r6.hashCode()
            int r0 = r6.hashCode()
            java.lang.String r3 = "villageSelectionScreen"
            r4 = -1
            switch(r0) {
                case -768907182: goto L55;
                case -329684276: goto L4c;
                case -169448172: goto L41;
                case 754789150: goto L36;
                case 1052349652: goto L2b;
                default: goto L29;
            }
        L29:
            r6 = -1
            goto L5f
        L2b:
            java.lang.String r0 = "memberDetailsScreen"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L34
            goto L29
        L34:
            r6 = 4
            goto L5f
        L36:
            java.lang.String r0 = "memberSelectionScreen"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L3f
            goto L29
        L3f:
            r6 = 3
            goto L5f
        L41:
            java.lang.String r0 = "familySelectionScreen"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L4a
            goto L29
        L4a:
            r6 = 2
            goto L5f
        L4c:
            boolean r6 = r6.equals(r3)
            if (r6 != 0) goto L53
            goto L29
        L53:
            r6 = 1
            goto L5f
        L55:
            java.lang.String r0 = "mobileNumberVerificationScreen"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L5e
            goto L29
        L5e:
            r6 = 0
        L5f:
            r0 = 0
            switch(r6) {
                case 0: goto Lbd;
                case 1: goto Lb9;
                case 2: goto L86;
                case 3: goto L75;
                case 4: goto L64;
                default: goto L63;
            }
        L63:
            goto Lcf
        L64:
            r5.showProcessDialog()
            android.widget.LinearLayout r6 = r5.bodyLayoutContainer
            r6.removeAllViews()
            r5.selectedMemberIndex = r4
            r5.setSubTitle(r0)
            r5.addMemberSelectionScreen()
            goto Lcf
        L75:
            r5.showProcessDialog()
            android.widget.LinearLayout r6 = r5.bodyLayoutContainer
            r6.removeAllViews()
            r5.selectedFamilyIndex = r4
            r5.addSearchTextBox()
            r5.retrieveFamilyListFromDB(r0)
            goto Lcf
        L86:
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r6 = r5.locationBeans
            int r6 = r6.size()
            if (r6 != r1) goto L92
            r5.navigateToHomeScreen(r2)
            goto Lcf
        L92:
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r6 = r5.locationBeans
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto L9e
            r5.navigateToHomeScreen(r2)
            goto Lcf
        L9e:
            r5.screen = r3
            android.widget.LinearLayout r6 = r5.bodyLayoutContainer
            r6.removeAllViews()
            r5.addVillageSelectionSpinner()
            android.widget.Button r6 = r5.nextButton
            java.lang.String r0 = "Next"
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r6.setText(r0)
            android.widget.Button r6 = r5.nextButton
            r6.setOnClickListener(r5)
            goto Lcf
        Lb9:
            r5.navigateToHomeScreen(r2)
            goto Lcf
        Lbd:
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r2)
            super.setAlertRequired(r6)
            r5.showProcessDialog()
            android.widget.LinearLayout r6 = r5.bodyLayoutContainer
            r6.removeAllViews()
            r5.addMemberDetailsScreen()
        Lcf:
            return r1
        Ld0:
            return r2
        Ld1:
            r5.navigateToHomeScreen(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<FamilyDataBean> listRetrieveAssignedFamilyDataBeansToUserForMobileNumberUpdationAndVerification = this.fhsService.retrieveAssignedFamilyDataBeansToUserForMobileNumberUpdationAndVerification(this.searchString, this.locationId, this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUi(listRetrieveAssignedFamilyDataBeansToUserForMobileNumberUpdationAndVerification);
    }

    public void onLoadMoreUi(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.familyDataBeans.addAll(list);
            this.offset += this.limit;
            this.paginatedListView.onFinishLoadingWithItem(true, getFamilyList(list));
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
