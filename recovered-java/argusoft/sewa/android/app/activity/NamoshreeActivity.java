package com.argusoft.sewa.android.app.activity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
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
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class NamoshreeActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    public static final String COUNT_DETAILS_SCREEN = "countDetailsScreen";
    private static final long DELAY = 500;
    private static final String PREGNANT_WOMEN_SCREEN = "pregnantWomenScreen";
    private static final int REQUEST_CODE_FOR_NAMOSHREE_ACTIVITY = 600;
    private static final String TYPE_SELECTION_SCREEN = "typeSelectionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private EditText abortionCountEditText;
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private MaterialTextView listTitleView;
    private PagingListView memberListView;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberAvailableTextView;
    private long offset;
    private RadioGroup prevAbortionYesOrNo;
    private String screen;
    private Integer selectedVillage;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private Spinner villageSpinner;
    private List<Integer> selectedVillages = new LinkedList();
    private MemberDataBean memberSelected = null;
    private List<LocationBean> villageList = new ArrayList();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<Integer> selectedAshaAreas = new ArrayList();
    private List<MemberDataBean> pregnantWomen = new ArrayList();
    private int selectedMemberIndex = -1;
    private int selectedTypeIndex = -1;
    private final long limit = 30;
    private Timer timer = new Timer();
    private CharSequence searchString = null;

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
        setTitle(UtilBean.getTitleText(LabelConstants.NAMOSHREE_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.villageList = distinctLocationsAssignedToUser;
        this.screen = VILLAGE_SELECTION_SCREEN;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.selectedVillage = this.villageList.get(0).getActualID();
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
            addVillageSelectionSpinner();
        } else if (this.villageList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
            addVillageSelectionSpinner();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screen;
            str.hashCode();
            if (!str.equals(VILLAGE_SELECTION_SCREEN)) {
                if (str.equals(PREGNANT_WOMEN_SCREEN)) {
                    setSubTitle(null);
                    if (this.selectedMemberIndex != -1) {
                        this.bodyLayoutContainer.removeAllViews();
                        MemberDataBean memberDataBean = this.pregnantWomen.get(this.selectedMemberIndex);
                        this.memberSelected = memberDataBean;
                        if (this.selectedTypeIndex == 3) {
                            String id = memberDataBean.getId();
                            if (id != null) {
                                if (this.techoService.checkIfOfflineAnyFormFilledForMemberWithFormType(Long.valueOf(id), "FHW_NS").booleanValue()) {
                                    showAlertAndFinish(LabelConstants.MSG_REFRESH_AND_TRY_AGAIN);
                                    return;
                                } else {
                                    showCountDetailsAndQuestionScreen();
                                    return;
                                }
                            }
                            return;
                        }
                        startDynamicFormActivity("FHW_NS", memberDataBean);
                        return;
                    }
                    SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_A_MEMBER));
                    return;
                }
                return;
            }
            showProcessDialog();
            setSubTitle(null);
            String string = this.villageSpinner.getSelectedItem().toString();
            Iterator<LocationBean> it = this.villageList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                LocationBean next = it.next();
                if (string.equals(next.getName())) {
                    this.selectedVillage = next.getActualID();
                    break;
                }
            }
            String string2 = this.ashaAreaSpinner.getSelectedItem().toString();
            if (string2.equals(LabelConstants.ALL)) {
                Iterator<LocationBean> it2 = this.ashaAreaList.iterator();
                while (it2.hasNext()) {
                    this.selectedAshaAreas.add(it2.next().getActualID());
                }
            } else {
                Iterator<LocationBean> it3 = this.ashaAreaList.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    LocationBean next2 = it3.next();
                    if (string2.equals(next2.getName())) {
                        this.selectedAshaAreas.add(next2.getActualID());
                        break;
                    }
                }
            }
            setSelectionType();
        }
    }

    public void showCountDetailsAndQuestionScreen() {
        this.screen = COUNT_DETAILS_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBER_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.memberSelected.getUniqueHealthId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBER_NAME));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(this.memberSelected)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.GRAVIDA_VALUE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.memberSelected.getCurrentGravida())));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.DELIVERY_COUNT));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.memberSelected.getDeliveryCount())));
        String str = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(SewaTransformer.loginBean.getServerDate() != null ? SewaTransformer.loginBean.getServerDate() : Calendar.getInstance().getTime());
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SERVICE_DATE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, str));
        RadioGroup radioGroup = this.prevAbortionYesOrNo;
        if (radioGroup == null) {
            RadioGroup radioGroup2 = new RadioGroup(this.context);
            this.prevAbortionYesOrNo = radioGroup2;
            radioGroup2.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel("Yes"), IdConstants.RADIO_BUTTON_ID_YES));
            this.prevAbortionYesOrNo.addView(MyStaticComponents.getRadioButton(this.context, UtilBean.getMyLabel("No"), IdConstants.RADIO_BUTTON_ID_NO));
        } else {
            radioGroup.clearCheck();
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.HAVE_YOU_HAD_PREVIOUS_ABORTION));
        this.bodyLayoutContainer.addView(this.prevAbortionYesOrNo);
        final MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ENTER_PREVIOUS_ABORTION_COUNT);
        final TextInputLayout editText = MyStaticComponents.getEditText(this.context, LabelConstants.ENTER_PREVIOUS_ABORTION_COUNT, -1, 2, 2);
        this.abortionCountEditText = editText.getEditText();
        this.prevAbortionYesOrNo.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda2
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup3, int i) {
                this.f$0.m439x25b0b18(materialTextViewGenerateQuestionView, editText, radioGroup3, i);
            }
        });
        this.nextButton.setText(GlobalTypes.EVENT_SUBMIT);
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity.1
            /* JADX WARN: Code restructure failed: missing block: B:26:0x00a8, code lost:
            
                if ((r8 + r2.intValue()) <= r3) goto L27;
             */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onClick(android.view.View r8) throws java.lang.NumberFormatException {
                /*
                    r7 = this;
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this
                    android.widget.RadioGroup r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$000(r8)
                    int r8 = r8.getCheckedRadioButtonId()
                    r0 = 10003(0x2713, float:1.4017E-41)
                    if (r8 != r0) goto L14
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$100(r8)
                    return
                L14:
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this
                    android.widget.EditText r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$200(r8)
                    if (r8 == 0) goto Ld8
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this
                    android.widget.EditText r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$200(r8)
                    android.text.Editable r8 = r8.getText()
                    if (r8 == 0) goto Ld8
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this
                    android.widget.EditText r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$200(r8)
                    android.text.Editable r8 = r8.getText()
                    java.lang.String r8 = r8.toString()
                    boolean r0 = r8.isEmpty()
                    if (r0 != 0) goto Lcf
                    int r8 = java.lang.Integer.parseInt(r8)     // Catch: java.lang.NumberFormatException -> Lc1
                    java.lang.Integer r0 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.NumberFormatException -> Lc1
                    r0.getClass()     // Catch: java.lang.NumberFormatException -> Lc1
                    java.lang.String r1 = "Invalid abortion count"
                    if (r8 != 0) goto L53
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this     // Catch: java.lang.NumberFormatException -> Lc1
                    android.content.Context r8 = r8.context     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r8, r1)     // Catch: java.lang.NumberFormatException -> Lc1
                    return
                L53:
                    r2 = 0
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r3 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.databean.MemberDataBean r3 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$300(r3)     // Catch: java.lang.NumberFormatException -> Lc1
                    java.lang.Integer r3 = r3.getDeliveryCount()     // Catch: java.lang.NumberFormatException -> Lc1
                    if (r3 == 0) goto L6e
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r2 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.databean.MemberDataBean r2 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$300(r2)     // Catch: java.lang.NumberFormatException -> Lc1
                    java.lang.Integer r2 = r2.getDeliveryCount()     // Catch: java.lang.NumberFormatException -> Lc1
                L6e:
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r3 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.databean.MemberDataBean r3 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$300(r3)     // Catch: java.lang.NumberFormatException -> Lc1
                    java.lang.Short r3 = r3.getCurrentGravida()     // Catch: java.lang.NumberFormatException -> Lc1
                    short r3 = r3.shortValue()     // Catch: java.lang.NumberFormatException -> Lc1
                    long r3 = (long) r3     // Catch: java.lang.NumberFormatException -> Lc1
                    java.lang.Boolean r5 = java.lang.Boolean.TRUE     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r6 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.databean.MemberDataBean r6 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$300(r6)     // Catch: java.lang.NumberFormatException -> Lc1
                    java.lang.Boolean r6 = r6.getIsPregnantFlag()     // Catch: java.lang.NumberFormatException -> Lc1
                    boolean r5 = r5.equals(r6)     // Catch: java.lang.NumberFormatException -> Lc1
                    if (r5 == 0) goto L9d
                    r0.getClass()     // Catch: java.lang.NumberFormatException -> Lc1
                    int r2 = r2.intValue()     // Catch: java.lang.NumberFormatException -> Lc1
                    int r8 = r8 + r2
                    long r5 = (long) r8     // Catch: java.lang.NumberFormatException -> Lc1
                    int r8 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
                    if (r8 >= 0) goto Lb9
                    goto Laa
                L9d:
                    r0.getClass()     // Catch: java.lang.NumberFormatException -> Lc1
                    int r2 = r2.intValue()     // Catch: java.lang.NumberFormatException -> Lc1
                    int r8 = r8 + r2
                    long r5 = (long) r8     // Catch: java.lang.NumberFormatException -> Lc1
                    int r8 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
                    if (r8 > 0) goto Lb9
                Laa:
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.databean.MemberDataBean r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$300(r8)     // Catch: java.lang.NumberFormatException -> Lc1
                    r8.setAbortionCount(r0)     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity.access$100(r8)     // Catch: java.lang.NumberFormatException -> Lc1
                    goto Ld8
                Lb9:
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this     // Catch: java.lang.NumberFormatException -> Lc1
                    android.content.Context r8 = r8.context     // Catch: java.lang.NumberFormatException -> Lc1
                    com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r8, r1)     // Catch: java.lang.NumberFormatException -> Lc1
                    goto Ld8
                Lc1:
                    r8 = move-exception
                    java.lang.Class r0 = r7.getClass()
                    java.lang.String r0 = r0.getSimpleName()
                    r1 = 0
                    android.util.Log.e(r0, r1, r8)
                    goto Ld8
                Lcf:
                    com.argusoft.sewa.android.app.activity.NamoshreeActivity r8 = com.argusoft.sewa.android.app.activity.NamoshreeActivity.this
                    android.content.Context r8 = r8.context
                    java.lang.String r0 = "Please enter abortion count"
                    com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r8, r0)
                Ld8:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NamoshreeActivity.AnonymousClass1.onClick(android.view.View):void");
            }
        });
    }

    /* renamed from: lambda$showCountDetailsAndQuestionScreen$0$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m439x25b0b18(TextView textView, TextInputLayout textInputLayout, RadioGroup radioGroup, int i) {
        if (i != 10002) {
            this.bodyLayoutContainer.removeView(textView);
            this.bodyLayoutContainer.removeView(textInputLayout);
            this.memberSelected.setPrevAbortion(false);
        } else if (textView.getParent() == null && textInputLayout.getParent() == null) {
            this.bodyLayoutContainer.addView(textView);
            this.bodyLayoutContainer.addView(textInputLayout);
            this.memberSelected.setPrevAbortion(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showConfirmationDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setTitle("Confirm Submission");
        builder.setMessage("Do you want to submit the form?");
        builder.setPositiveButton("Yes", new DialogInterface.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m438xf248403c(dialogInterface, i);
            }
        });
        builder.setNegativeButton("No", new DialogInterface.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        Button button = alertDialogCreate.getButton(-2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.setMargins(20, 0, 20, 0);
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: lambda$showConfirmationDialog$1$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m438xf248403c(DialogInterface dialogInterface, int i) {
        generateNamoshreeDetailAnswerString(this.memberSelected);
        showProcessDialog();
        this.bodyLayoutContainer.removeAllViews();
        searchTextBox();
        retrievePregnantWomenList(null);
        hideProcessDialog();
    }

    public void addVillageSelectionSpinner() {
        setSubTitle(null);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE)));
        String[] strArr = new String[this.villageList.size()];
        Iterator<LocationBean> it = this.villageList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                NamoshreeActivity.this.bodyLayoutContainer.removeView(NamoshreeActivity.this.ashaAreaSpinner);
                NamoshreeActivity namoshreeActivity = NamoshreeActivity.this;
                namoshreeActivity.ashaAreaList = namoshreeActivity.fhsService.retrieveAshaAreaAssignedToUser(((LocationBean) NamoshreeActivity.this.villageList.get(i2)).getActualID());
                NamoshreeActivity.this.addAshaAreaSelectionSpinner();
            }
        });
        this.bodyLayoutContainer.addView(this.villageSpinner);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_ASHA_AREA)));
        addAshaAreaSelectionSpinner();
    }

    public void addAshaAreaSelectionSpinner() {
        String[] strArr = new String[this.ashaAreaList.size() + 1];
        strArr[0] = LabelConstants.ALL;
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 1;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 3);
        this.ashaAreaSpinner = spinner;
        this.bodyLayoutContainer.addView(spinner);
        hideProcessDialog();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_NAMOSHREE_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m428xa92e42f2(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$3$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m428xa92e42f2(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    public void setSelectionType() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = "typeSelectionScreen";
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(LabelConstants.WITH_NO_DOCUMENTS));
        arrayList.add(new ListItemDataBean(LabelConstants.WITH_SELECTED_DOCUMENTS));
        arrayList.add(new ListItemDataBean(LabelConstants.REJECTED_MEMBERS_BY_MO));
        arrayList.add(new ListItemDataBean(LabelConstants.WRONG_PREG_REGISTERED));
        arrayList.add(new ListItemDataBean(LabelConstants.NAMOSHREE_PENDING_MEMBERS));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda3
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m437x96858baf(adapterView, view, i, j);
            }
        }, null));
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    /* renamed from: lambda$setSelectionType$4$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m437x96858baf(AdapterView adapterView, View view, int i, long j) {
        showProcessDialog();
        this.selectedTypeIndex = i;
        this.footerLayout.setVisibility(0);
        setSubTitle(null);
        this.bodyLayoutContainer.removeAllViews();
        searchTextBox();
        retrievePregnantWomenList(null);
    }

    public void retrievePregnantWomenList(String str) {
        this.selectedVillages.add(this.selectedVillage);
        this.offset = 0L;
        this.searchString = str;
        if (this.selectedTypeIndex == 4) {
            this.pregnantWomen = fetchPendingNamoshreeMembersFromQuery(this.selectedVillages, str);
        } else {
            this.pregnantWomen = getMemberListFromDataBase();
        }
        synchronized (this) {
            pregnantWomenSelectionScreen();
        }
    }

    private List<MemberDataBean> getMemberListFromDataBase() {
        ArrayList arrayList = new ArrayList();
        List<String> valueOfListValuesByField = this.fhsService.getValueOfListValuesByField("namoshreeRejectionReason");
        do {
            SewaFhsServiceImpl sewaFhsServiceImpl = this.fhsService;
            List<Integer> list = this.selectedAshaAreas;
            List<Integer> list2 = this.selectedVillages;
            CharSequence charSequence = this.searchString;
            long j = this.offset;
            int i = this.selectedTypeIndex;
            List<MemberBean> listRetrievePregnantWomenByAshaAreaByEligibleScheme = sewaFhsServiceImpl.retrievePregnantWomenByAshaAreaByEligibleScheme(list, list2, charSequence, 30L, j, i < 2, i == 2);
            this.offset += 30;
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (MemberBean memberBean : listRetrievePregnantWomenByAshaAreaByEligibleScheme) {
                MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                if (memberAdditionalInfoDataBean == null) {
                    memberAdditionalInfoDataBean = new MemberAdditionalInfoDataBean();
                }
                if (shouldIncludeMember(memberBean, memberAdditionalInfoDataBean, valueOfListValuesByField)) {
                    MemberDataBean memberDataBean = new MemberDataBean(memberBean);
                    if (memberBean.getEdd() != null) {
                        arrayList2.add(memberDataBean);
                    } else {
                        arrayList3.add(memberDataBean);
                    }
                }
            }
            arrayList.addAll(arrayList2);
            arrayList.addAll(arrayList3);
            if (listRetrievePregnantWomenByAshaAreaByEligibleScheme.isEmpty()) {
                break;
            }
        } while (arrayList.size() < 30);
        return arrayList;
    }

    private boolean shouldIncludeMember(MemberBean memberBean, MemberAdditionalInfoDataBean memberAdditionalInfoDataBean, List<String> list) {
        int i = this.selectedTypeIndex;
        boolean z = i == 2;
        boolean z2 = i == 0;
        if (i == 3) {
            return isEligibleForScheme(memberBean, memberAdditionalInfoDataBean);
        }
        if (z) {
            return isRejectedMember(memberAdditionalInfoDataBean, list);
        }
        return z2 == isUploadingFirstTimeEligible(memberAdditionalInfoDataBean) || isNamoshreeEligible(memberBean, memberAdditionalInfoDataBean);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isEligibleForScheme(com.argusoft.sewa.android.app.model.MemberBean r4, com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean r5) {
        /*
            r3 = this;
            java.lang.String r0 = r5.getAncEligibleSchemes()
            r1 = 0
            if (r0 == 0) goto L80
            java.lang.String r5 = r5.getAncEligibleSchemes()
            java.lang.String r0 = "None"
            boolean r5 = r5.equalsIgnoreCase(r0)
            if (r5 != 0) goto L80
            java.lang.Boolean r5 = java.lang.Boolean.TRUE
            java.lang.Boolean r0 = r4.getIsPregnantFlag()
            boolean r5 = r5.equals(r0)
            r0 = 1
            if (r5 == 0) goto L4a
            java.lang.Short r5 = r4.getCurrentGravida()
            if (r5 == 0) goto L2f
            java.lang.Short r5 = r4.getCurrentGravida()
            short r5 = r5.shortValue()
            goto L30
        L2f:
            r5 = 1
        L30:
            java.lang.Integer r2 = java.lang.Integer.valueOf(r5)
            r2.getClass()
            java.lang.Integer r2 = r4.getDeliveryCount()
            if (r2 == 0) goto L47
            java.lang.Integer r2 = r4.getDeliveryCount()
            int r2 = r2.intValue()
            int r2 = r2 + r0
            goto L48
        L47:
            r2 = 1
        L48:
            if (r5 > r2) goto L7f
        L4a:
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            java.lang.Boolean r2 = r4.getIsPregnantFlag()
            boolean r5 = r5.equals(r2)
            if (r5 == 0) goto L80
            java.lang.Short r5 = r4.getCurrentGravida()
            if (r5 == 0) goto L65
            java.lang.Short r5 = r4.getCurrentGravida()
            short r5 = r5.shortValue()
            goto L66
        L65:
            r5 = 0
        L66:
            java.lang.Integer r2 = java.lang.Integer.valueOf(r5)
            r2.getClass()
            java.lang.Integer r2 = r4.getDeliveryCount()
            if (r2 == 0) goto L7c
            java.lang.Integer r4 = r4.getDeliveryCount()
            int r4 = r4.intValue()
            goto L7d
        L7c:
            r4 = 0
        L7d:
            if (r5 <= r4) goto L80
        L7f:
            r1 = 1
        L80:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NamoshreeActivity.isEligibleForScheme(com.argusoft.sewa.android.app.model.MemberBean, com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean):boolean");
    }

    private boolean isUploadingFirstTimeEligible(MemberAdditionalInfoDataBean memberAdditionalInfoDataBean) {
        return memberAdditionalInfoDataBean.getAncEligibleSchemes() == null || memberAdditionalInfoDataBean.getAncEligibleSchemes().isEmpty() || memberAdditionalInfoDataBean.getAncEligibleSchemes().contains("NONE");
    }

    private boolean isRejectedMember(MemberAdditionalInfoDataBean memberAdditionalInfoDataBean, List<String> list) {
        return list != null && ((Boolean.TRUE.equals(memberAdditionalInfoDataBean.getNsRejectedMo()) && list.contains(memberAdditionalInfoDataBean.getNsRejectionCmtMo())) || (Boolean.TRUE.equals(memberAdditionalInfoDataBean.getNsRejectedDist()) && list.contains(memberAdditionalInfoDataBean.getNsRejectionCmtDist())));
    }

    private boolean isNamoshreeEligible(MemberBean memberBean, MemberAdditionalInfoDataBean memberAdditionalInfoDataBean) {
        String nsUploadedPregIds = memberAdditionalInfoDataBean.getNsUploadedPregIds();
        Long curPregRegDetId = memberBean.getCurPregRegDetId();
        if ((nsUploadedPregIds == null || nsUploadedPregIds.trim().isEmpty() || curPregRegDetId == null) ? false : Arrays.asList(nsUploadedPregIds.split(GlobalTypes.COMMA)).contains(String.valueOf(curPregRegDetId))) {
            return false;
        }
        if (memberAdditionalInfoDataBean.getNoneSelectionCount() != null && memberAdditionalInfoDataBean.getNoneSelectionCount().intValue() >= 2) {
            return false;
        }
        if (memberAdditionalInfoDataBean.getNsRejectedDist() == null || Boolean.FALSE.equals(memberAdditionalInfoDataBean.getNsRejectedDist())) {
            return memberAdditionalInfoDataBean.getNsRejectedMo() == null || Boolean.FALSE.equals(memberAdditionalInfoDataBean.getNsRejectedMo());
        }
        return false;
    }

    public void pregnantWomenSelectionScreen() {
        this.screen = PREGNANT_WOMEN_SCREEN;
        this.bodyLayoutContainer.removeView(this.listTitleView);
        this.bodyLayoutContainer.removeView(this.memberListView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableTextView);
        this.selectedMemberIndex = -1;
        int i = this.selectedTypeIndex;
        if (i == 0 || i == 1) {
            List<ListItemDataBean> listAddMemberList = addMemberList(this.pregnantWomen);
            if (listAddMemberList.isEmpty()) {
                MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_PREGNANT_WOMEN_IN_AREA));
                this.noMemberAvailableTextView = materialTextViewGenerateInstructionView;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m432x32fbc85b(view);
                    }
                });
            } else {
                MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
                this.listTitleView = listTitleView;
                this.bodyLayoutContainer.addView(listTitleView);
                PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddMemberList, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                        this.f$0.m433xbfe8df7a(adapterView, view, i2, j);
                    }
                }, this);
                this.memberListView = paginatedListViewWithItem;
                this.bodyLayoutContainer.addView(paginatedListViewWithItem);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            }
        } else if (i == 2) {
            List<ListItemDataBean> listAddRejectedMemberList = addRejectedMemberList(this.pregnantWomen);
            if (listAddRejectedMemberList.isEmpty()) {
                MaterialTextView materialTextViewGenerateInstructionView2 = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_MEMBER_FOUND_IN_YOUR_AREA));
                this.noMemberAvailableTextView = materialTextViewGenerateInstructionView2;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView2);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m434x4cd5f699(view);
                    }
                });
            } else {
                MaterialTextView listTitleView2 = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
                this.listTitleView = listTitleView2;
                this.bodyLayoutContainer.addView(listTitleView2);
                PagingListView paginatedListViewWithItem2 = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddRejectedMemberList, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda6
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                        this.f$0.m435xd9c30db8(adapterView, view, i2, j);
                    }
                }, this);
                this.memberListView = paginatedListViewWithItem2;
                this.bodyLayoutContainer.addView(paginatedListViewWithItem2);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            }
        } else if (i == 3) {
            List<ListItemDataBean> listAddWrongPregRegWomenList = addWrongPregRegWomenList(this.pregnantWomen);
            if (listAddWrongPregRegWomenList.isEmpty()) {
                MaterialTextView materialTextViewGenerateInstructionView3 = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_MEMBER_FOUND_IN_YOUR_AREA));
                this.noMemberAvailableTextView = materialTextViewGenerateInstructionView3;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView3);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m436x66b024d7(view);
                    }
                });
            } else {
                MaterialTextView listTitleView3 = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
                this.listTitleView = listTitleView3;
                this.bodyLayoutContainer.addView(listTitleView3);
                PagingListView paginatedListViewWithItem3 = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddWrongPregRegWomenList, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda8
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                        this.f$0.m429x76088551(adapterView, view, i2, j);
                    }
                }, this);
                this.memberListView = paginatedListViewWithItem3;
                this.bodyLayoutContainer.addView(paginatedListViewWithItem3);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            }
        } else if (i == 4) {
            List<ListItemDataBean> listAddMemberList2 = addMemberList(this.pregnantWomen);
            if (listAddMemberList2.isEmpty()) {
                MaterialTextView materialTextViewGenerateInstructionView4 = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_MEMBER_FOUND_IN_YOUR_AREA));
                this.noMemberAvailableTextView = materialTextViewGenerateInstructionView4;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView4);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m430x2f59c70(view);
                    }
                });
            } else {
                MaterialTextView listTitleView4 = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
                this.listTitleView = listTitleView4;
                this.bodyLayoutContainer.addView(listTitleView4);
                PagingListView paginatedListViewWithItem4 = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddMemberList2, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity$$ExternalSyntheticLambda10
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                        this.f$0.m431x8fe2b38f(adapterView, view, i2, j);
                    }
                }, null);
                this.memberListView = paginatedListViewWithItem4;
                this.bodyLayoutContainer.addView(paginatedListViewWithItem4);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            }
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$pregnantWomenSelectionScreen$5$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m432x32fbc85b(View view) {
        navigateToHomeScreen(false);
    }

    /* renamed from: lambda$pregnantWomenSelectionScreen$6$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m433xbfe8df7a(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberIndex = i;
    }

    /* renamed from: lambda$pregnantWomenSelectionScreen$7$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m434x4cd5f699(View view) {
        navigateToHomeScreen(false);
    }

    /* renamed from: lambda$pregnantWomenSelectionScreen$8$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m435xd9c30db8(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberIndex = i;
    }

    /* renamed from: lambda$pregnantWomenSelectionScreen$9$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m436x66b024d7(View view) {
        navigateToHomeScreen(false);
    }

    /* renamed from: lambda$pregnantWomenSelectionScreen$10$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m429x76088551(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberIndex = i;
    }

    /* renamed from: lambda$pregnantWomenSelectionScreen$11$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m430x2f59c70(View view) {
        navigateToHomeScreen(false);
    }

    /* renamed from: lambda$pregnantWomenSelectionScreen$12$com-argusoft-sewa-android-app-activity-NamoshreeActivity, reason: not valid java name */
    /* synthetic */ void m431x8fe2b38f(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberIndex = i;
    }

    private List<MemberDataBean> fetchPendingNamoshreeMembersFromQuery(List<Integer> list, String str) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            try {
                try {
                } catch (Exception e) {
                    Log.e("PendingNamoshree", "Unexpected error in fetching members: " + e.getMessage(), e);
                }
            } catch (RestHttpException e2) {
                Log.e("PendingNamoshree", "Network/Server error: " + e2.getMessage(), e2);
            }
            if (!list.isEmpty()) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("locationId", TextUtils.join(GlobalTypes.COMMA, list));
                linkedHashMap.put("searchString", str);
                QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("pending_namoshree_members_list", null, linkedHashMap, 0));
                List<LinkedHashMap<String, Object>> result = queryMobDataBeanExecuteQuery != null ? queryMobDataBeanExecuteQuery.getResult() : null;
                if (result != null && !result.isEmpty()) {
                    Iterator<LinkedHashMap<String, Object>> it = result.iterator();
                    while (it.hasNext()) {
                        Object obj = it.next().get("unique_health_id");
                        if (obj != null) {
                            try {
                                String string = obj instanceof String ? obj.toString() : String.valueOf(Long.parseLong(obj.toString()));
                                try {
                                    MemberBean memberBeanRetrieveMemberBeanByHealthId = this.fhsService.retrieveMemberBeanByHealthId(string);
                                    if (memberBeanRetrieveMemberBeanByHealthId != null) {
                                        arrayList.add(new MemberDataBean(memberBeanRetrieveMemberBeanByHealthId));
                                    }
                                } catch (Exception e3) {
                                    Log.e("fetchInfo", "Error retrieving member for ID " + string + ": " + e3.getMessage(), e3);
                                }
                            } catch (NumberFormatException unused) {
                                Log.e("fetchInfo", "Invalid member ID: " + obj);
                            }
                        }
                    }
                    Log.i("fetchInfo", "✅ Total members fetched: " + arrayList.size());
                } else {
                    Log.i("fetchInfo", "Query executed successfully but returned 0 rows (empty result).");
                }
                return arrayList;
            }
        }
        Log.w("fetchInfo", "No location IDs provided.");
        return arrayList;
    }

    private List<ListItemDataBean> addMemberList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                String id = memberDataBean.getId();
                if (id != null) {
                    arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), null, null, this.techoService.checkIfOfflineAnyFormFilledForMemberWithFormType(Long.valueOf(id), "FHW_NS").booleanValue()));
                }
            }
        }
        return arrayList;
    }

    private List<ListItemDataBean> addRejectedMemberList(List<MemberDataBean> list) {
        String namoshreeDistRejectionComment;
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                if (memberDataBean.getNamoshreeRejectionComment() != null) {
                    namoshreeDistRejectionComment = memberDataBean.getNamoshreeRejectionComment();
                } else {
                    namoshreeDistRejectionComment = memberDataBean.getNamoshreeDistRejectionComment();
                }
                String str = namoshreeDistRejectionComment;
                String id = memberDataBean.getId();
                if (id != null) {
                    arrayList.add(new ListItemDataBean(null, memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), str, null, this.techoService.checkIfOfflineAnyFormFilledForMemberWithFormType(Long.valueOf(id), "FHW_NS").booleanValue()));
                }
            }
        }
        return arrayList;
    }

    private List<ListItemDataBean> addWrongPregRegWomenList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                String id = memberDataBean.getId();
                if (id != null) {
                    arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), null, null, this.techoService.checkIfOfflineAnyFormFilledForMemberWithFormType(Long.valueOf(id), "FHW_NS").booleanValue()));
                }
            }
        }
        return arrayList;
    }

    private void startDynamicFormActivity(String str, MemberDataBean memberDataBean) {
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        try {
            this.formMetaDataUtil.setMetaDataForRchFormByFormType(str, memberDataBean.getId(), memberDataBean.getFamilyId(), null, PreferenceManager.getDefaultSharedPreferences(this));
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", str);
            startActivityForResult(intent, REQUEST_CODE_FOR_NAMOSHREE_ACTIVITY);
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NamoshreeActivity.this.alertDialog.dismiss();
                    NamoshreeActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    public void searchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity.4
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
                    NamoshreeActivity.this.timer.cancel();
                    NamoshreeActivity.this.timer = new Timer();
                    NamoshreeActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.NamoshreeActivity.4.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            CharSequence charSequence2 = charSequence;
                            if (charSequence2 != null && charSequence2.length() > 2) {
                                NamoshreeActivity.this.retrievePregnantWomenList(charSequence.toString());
                                return;
                            }
                            CharSequence charSequence3 = charSequence;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                NamoshreeActivity.this.retrievePregnantWomenList(null);
                            }
                        }
                    }, NamoshreeActivity.DELAY);
                }
            });
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_NAMOSHREE_ACTIVITY) {
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            searchTextBox();
            retrievePregnantWomenList(null);
            hideProcessDialog();
            return;
        }
        navigateToHomeScreen(false);
        hideProcessDialog();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r7) {
        /*
            r6 = this;
            super.onOptionsItemSelected(r7)
            java.lang.String r0 = r6.screen
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lb6
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto Lb6
        L11:
            int r7 = r7.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r7 != r0) goto Lb5
            java.lang.String r7 = r6.screen
            r7.hashCode()
            int r0 = r7.hashCode()
            java.lang.String r3 = "villageSelectionScreen"
            java.lang.String r4 = "typeSelectionScreen"
            r5 = -1
            switch(r0) {
                case -1196731778: goto L4c;
                case -329684276: goto L43;
                case 857079533: goto L38;
                case 1872999551: goto L2d;
                default: goto L2b;
            }
        L2b:
            r7 = -1
            goto L54
        L2d:
            java.lang.String r0 = "countDetailsScreen"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L36
            goto L2b
        L36:
            r7 = 3
            goto L54
        L38:
            java.lang.String r0 = "pregnantWomenScreen"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L41
            goto L2b
        L41:
            r7 = 2
            goto L54
        L43:
            boolean r7 = r7.equals(r3)
            if (r7 != 0) goto L4a
            goto L2b
        L4a:
            r7 = 1
            goto L54
        L4c:
            boolean r7 = r7.equals(r4)
            if (r7 != 0) goto L53
            goto L2b
        L53:
            r7 = 0
        L54:
            java.lang.String r0 = "Next"
            switch(r7) {
                case 0: goto L72;
                case 1: goto L6e;
                case 2: goto L5a;
                case 3: goto L5a;
                default: goto L59;
            }
        L59:
            goto Lb4
        L5a:
            r6.showProcessDialog()
            r6.setSelectionType()
            r6.selectedTypeIndex = r5
            android.widget.Button r7 = r6.nextButton
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r7.setText(r0)
            r6.screen = r4
            goto Lb4
        L6e:
            r6.navigateToHomeScreen(r2)
            goto Lb4
        L72:
            r6.showProcessDialog()
            android.widget.Button r7 = r6.nextButton
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r7.setText(r0)
            android.widget.Button r7 = r6.nextButton
            r7.setOnClickListener(r6)
            android.widget.LinearLayout r7 = r6.footerLayout
            r7.setVisibility(r2)
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r7 = r6.villageList
            int r7 = r7.size()
            if (r7 != r1) goto L99
            android.widget.LinearLayout r7 = r6.bodyLayoutContainer
            r7.removeAllViews()
            r6.addVillageSelectionSpinner()
            goto Lb2
        L99:
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r7 = r6.villageList
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto La5
            r6.navigateToHomeScreen(r2)
            goto Lb2
        La5:
            android.widget.LinearLayout r7 = r6.bodyLayoutContainer
            r7.removeAllViews()
            java.util.List<java.lang.Integer> r7 = r6.selectedAshaAreas
            r7.clear()
            r6.addVillageSelectionSpinner()
        Lb2:
            r6.screen = r3
        Lb4:
            return r1
        Lb5:
            return r2
        Lb6:
            r6.navigateToHomeScreen(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NamoshreeActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        if (this.selectedTypeIndex != 4) {
            onLoadMoreUi(getMemberListFromDataBase());
        }
    }

    public void onLoadMoreUi(List<MemberDataBean> list) {
        int i = this.selectedTypeIndex;
        if (i == 0 || i == 1) {
            if (!list.isEmpty()) {
                this.pregnantWomen.addAll(list);
                this.memberListView.onFinishLoadingWithItem(true, addMemberList(list));
                return;
            }
            this.memberListView.onFinishLoadingWithItem(false, null);
            return;
        }
        if (i == 2) {
            if (!list.isEmpty()) {
                this.pregnantWomen.addAll(list);
                this.memberListView.onFinishLoadingWithItem(true, addRejectedMemberList(list));
                return;
            }
            this.memberListView.onFinishLoadingWithItem(false, null);
            return;
        }
        if (i != 3) {
            return;
        }
        if (!list.isEmpty()) {
            this.pregnantWomen.addAll(list);
            this.memberListView.onFinishLoadingWithItem(true, addWrongPregRegWomenList(list));
            return;
        }
        this.memberListView.onFinishLoadingWithItem(false, null);
    }

    public void storeNamoshreeForm(StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb2.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
        storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        storeAnswerBean.setChecksum(sb2.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(-1L);
        storeAnswerBean.setAnswer(String.valueOf(sb));
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        storeAnswerBean.setAnswerEntity("FHW_NS");
        storeAnswerBean.setMemberId(Long.valueOf(this.memberSelected.getId()));
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setCheckSum(sb2.toString());
        loggerBean.setBeneficiaryName(this.memberSelected.getUniqueHealthId());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        loggerBean.setTaskName(UtilBean.getMyLabel("NAMOSHREE"));
        loggerBean.setFormType("FHW_NS");
        this.sewaService.createLoggerBean(loggerBean);
    }

    public void generateNamoshreeDetailAnswerString(MemberDataBean memberDataBean) {
        StringBuilder sb = new StringBuilder();
        sb.append("-4!");
        sb.append(memberDataBean.getId());
        sb.append("~29!");
        sb.append(SewaTransformer.loginBean.getServerDate() != null ? SewaTransformer.loginBean.getServerDate() : Calendar.getInstance().getTime());
        sb.append("~9027!");
        sb.append(memberDataBean.getPrevAbortion());
        sb.append("~9026!");
        sb.append(memberDataBean.getAbortionCount());
        sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        storeNamoshreeForm(sb);
    }
}
