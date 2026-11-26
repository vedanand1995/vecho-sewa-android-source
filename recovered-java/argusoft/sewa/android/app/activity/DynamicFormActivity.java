package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.work.WorkRequest;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.DailyNutritionLogServiceImpl;
import com.argusoft.sewa.android.app.core.impl.HealthInfraTypeLocationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.HealthInfrastructureServiceImpl;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.MoveToProductionServiceImpl;
import com.argusoft.sewa.android.app.core.impl.NPCBServiceImpl;
import com.argusoft.sewa.android.app.core.impl.NcdScoreServiceImpl;
import com.argusoft.sewa.android.app.core.impl.NcdServiceImpl;
import com.argusoft.sewa.android.app.core.impl.RchHighRiskServiceImpl;
import com.argusoft.sewa.android.app.core.impl.RoutineImmunisationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SchoolServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl;
import com.argusoft.sewa.android.app.datastructure.FormEngine;
import com.argusoft.sewa.android.app.datastructure.PageFormBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.service.GPSTracker;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FileUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.PointInPolygon;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class DynamicFormActivity extends MenuActivity implements View.OnClickListener {
    private static final String TAG = "DynamicFormActivity";
    public static FormEngine formEngine;
    private boolean allowForm;
    private String answerString;
    private String currentLatitude;
    private String currentLongitude;
    DailyNutritionLogServiceImpl dailyNutritionLogService;
    FormMetaDataUtil formMetaDataUtil;
    private View formRootView;
    private String formType;
    HealthInfraTypeLocationServiceImpl healthInfraTypeLocationService;
    HealthInfrastructureServiceImpl healthInfrastructureService;
    ImmunisationServiceImpl immunisationService;
    private Boolean isOnlineSearchPropagated;
    private Boolean isVeryHighRisk;
    private Integer labTestFormDetId;
    private String labTestVersion;
    private String lastStoredFormChecksum;
    LocationMasterServiceImpl locationMasterService;
    MoveToProductionServiceImpl moveToProductionService;
    private MyAlertDialog myDialog;
    NcdScoreServiceImpl ncdScoreService;
    NcdServiceImpl ncdService;
    NPCBServiceImpl npcbService;
    RchHighRiskServiceImpl rchHighRiskService;
    RoutineImmunisationServiceImpl routineImmunisationService;
    SchoolServiceImpl schoolService;
    SewaServiceRestClientImpl serviceRestClient;
    SewaFhsServiceImpl sewaFhsService;
    SewaServiceImpl sewaService;
    private SharedPreferences sharedPref;
    TechoAshaServiceImpl techoAshaService;
    TechoServiceImpl techoService;
    private boolean isLabTestForm = false;
    private boolean isProperFinish = true;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws SQLException, JsonSyntaxException {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        showProcessDialog();
        getLgdWiseCoordinates();
        this.context = this;
        getWindow().setSoftInputMode(16);
        try {
            this.formType = getIntent().getStringExtra("entity");
            this.isVeryHighRisk = Boolean.valueOf(getIntent().getBooleanExtra(RelatedPropertyNameConstants.IS_VERY_HIGH_RISK, false));
            this.isOnlineSearchPropagated = Boolean.valueOf(getIntent().getBooleanExtra("isOnlineSearchPropagated", false));
            this.allowForm = getIntent().getBooleanExtra(SewaConstants.ALLOW_SECOND_FORM_SAME_MEMBER_OFFLINE, Boolean.FALSE.booleanValue());
            boolean booleanExtra = getIntent().getBooleanExtra("isOPDLabTestForm", Boolean.FALSE.booleanValue());
            this.isLabTestForm = booleanExtra;
            if (booleanExtra) {
                this.labTestFormDetId = Integer.valueOf(Integer.parseInt(getIntent().getStringExtra("labTestDetId")));
                this.labTestVersion = getIntent().getStringExtra("version");
            }
            SharedStructureData.isOnlineSearch = Boolean.TRUE.equals(this.isOnlineSearchPropagated);
            initView();
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
            this.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_DYNAMIC_FORM);
            showToaster(LabelConstants.ERROR_OCCURRED_SO_TRY_AGAIN_LATER);
            this.formType = "DynamicForm";
        }
    }

    public void getLgdWiseCoordinates() throws SQLException, JsonSyntaxException {
        this.techoService.getLgdCodeWiseCoordinates();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        retrieveSheet();
    }

    private void initView() {
        checkIfAnyFormSyncIsPending();
    }

    private void checkIfAnyFormSyncIsPending() {
        boolean zBooleanValue;
        if (this.allowForm) {
            return;
        }
        if (this.formType == null || !(FormConstants.NCD_SHEETS.contains(this.formType) || FormConstants.IDSP_MEMBER.equals(this.formType) || FormConstants.IDSP_MEMBER_2.equals(this.formType))) {
            String str = SharedStructureData.relatedPropertyHashTable.get("memberId");
            String str2 = SharedStructureData.relatedPropertyHashTable.get("locationId");
            if (str != null) {
                if (this.formType.equalsIgnoreCase("FHW_NS")) {
                    zBooleanValue = this.techoService.checkIfOfflineAnyFormFilledForMemberWithFormType(Long.valueOf(str), this.formType).booleanValue();
                } else {
                    zBooleanValue = this.techoService.checkIfOfflineAnyFormFilledForMember(Long.valueOf(str)).booleanValue();
                }
                if (zBooleanValue) {
                    showAlertAndFinish(LabelConstants.MSG_REFRESH_AND_TRY_AGAIN);
                    return;
                }
            }
            if (str2 != null && this.formType.equalsIgnoreCase(FormConstants.TECHO_GAURAVI_DIWAS) && this.techoService.checkIfOfflineAnyFormFilledForLocation(Long.valueOf(str2)).booleanValue()) {
                showAlertAndFinish(LabelConstants.MSG_REFRESH_AND_TRY_AGAIN_FOR_SAME_LOCATION);
            }
        }
    }

    public void retrieveSheet() {
        try {
            if (formEngine == null && this.formType != null) {
                SharedStructureData.formFillUpTime = new Date().getTime();
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
                this.sharedPref = defaultSharedPreferences;
                defaultSharedPreferences.edit().putString(RelatedPropertyNameConstants.FORM_START_DATE, String.valueOf(new Date().getTime())).apply();
                loadQuestionsAndQuestion();
                checkForGpsEnabledForms();
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m160xcf21c0c9();
                    }
                });
            } else {
                setContentView();
            }
        } catch (Exception e) {
            hideProcessDialog();
            this.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_DYNAMIC_FORM);
            showToaster(LabelConstants.ERROR_OCCURRED_SO_TRY_AGAIN_LATER);
            Log.e(getClass().getName(), null, e);
            finish();
        }
    }

    /* renamed from: lambda$retrieveSheet$0$com-argusoft-sewa-android-app-activity-DynamicFormActivity, reason: not valid java name */
    /* synthetic */ void m160xcf21c0c9() {
        formEngine = FormEngine.generateForm(this, this.formType);
        setContentView();
    }

    public void setContentView() {
        FormEngine formEngine2 = formEngine;
        if (formEngine2 != null) {
            View pageView = formEngine2.getPageView();
            this.formRootView = pageView;
            setContentView(pageView);
            String fullFormName = DynamicUtils.getFullFormName(this.formType);
            if (fullFormName != null && fullFormName.equals(LabelConstants.NAMOSHREE_TITLE) && this.isVeryHighRisk.booleanValue()) {
                fullFormName = DynamicUtils.getFullFormName(FormConstants.VHRPW);
            }
            if (this.isLabTestForm) {
                setTitle(UtilBean.getMyLabel(LabelConstants.OPD_LAB_TEST));
                if (SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY) != null) {
                    setSubTitle(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
                }
            } else if (SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY) != null) {
                setTitle(fullFormName);
                setSubTitle(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
            } else {
                if (this.formType.equals(FormConstants.FHS_MEMBER_UPDATE)) {
                    fullFormName = UtilBean.getFullFormOfEntity().get(FormConstants.FHS_ADD_MEMBER);
                }
                setTitle(fullFormName);
            }
            hideProcessDialog();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        try {
            try {
                destroyWebViews(this.formRootView);
            } catch (Exception e) {
                Log.e(TAG, "Error while destroying webviews", e);
            }
        } finally {
            this.formRootView = null;
            super.onDestroy();
        }
    }

    private void destroyWebViews(View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                destroyWebViews(viewGroup.getChildAt(childCount));
            }
        }
        if (view instanceof WebView) {
            WebView webView = (WebView) view;
            ViewParent parent = webView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(webView);
            }
            webView.stopLoading();
            webView.loadUrl("about:blank");
            webView.removeAllViews();
            webView.destroy();
        }
    }

    private void loadQuestionsAndQuestion() throws NumberFormatException {
        Log.d(TAG, "Form Title : " + this.formType + " is Loaded ...................");
        SharedStructureData.initIndexQuestionMap(this, this.sewaService, this.sewaFhsService, this.techoAshaService, this.rchHighRiskService, this.immunisationService, this.ncdService, this.ncdScoreService, this.healthInfrastructureService, this.locationMasterService, this.schoolService, this.serviceRestClient, this.dailyNutritionLogService, this.npcbService, this.healthInfraTypeLocationService, this.routineImmunisationService);
        this.sewaService.loadQuestionsBySheet(this.formType);
    }

    public void checkForGpsEnabledForms() {
        if (this.isLabTestForm || SharedStructureData.gpsEnabledForms.contains(this.formType)) {
            if (!SharedStructureData.gps.isLocationProviderEnabled()) {
                SharedStructureData.gps.showSettingsAlert(this.context);
                return;
            }
            SharedStructureData.gps.getLocation();
            this.currentLatitude = String.valueOf(GPSTracker.latitude);
            this.currentLongitude = String.valueOf(GPSTracker.longitude);
            SharedStructureData.relatedPropertyHashTable.put("currentLatitude", this.currentLatitude);
            SharedStructureData.relatedPropertyHashTable.put("currentLongitude", this.currentLongitude);
            if (PointInPolygon.coordinateInsidePolygon()) {
                return;
            }
            UtilBean.showAlertAndExit(GlobalTypes.MSG_GEO_FENCING_VIOLATION, this);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        SharedStructureData.isOnlineSearch = false;
        String str = this.formType;
        if (str != null && !str.equalsIgnoreCase("DynamicForm")) {
            MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.CLOSE_THE_REGISTRATION, this, DynamicUtils.BUTTON_YES_NO);
            this.myDialog = myAlertDialog;
            myAlertDialog.show();
        } else {
            this.processDialog = new MyProcessDialog(this, GlobalTypes.MSG_PROCESSING);
            this.processDialog.show();
            changeActivity();
            this.processDialog.dismiss();
            finish();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != -1) {
            if (id == -2) {
                this.myDialog.dismiss();
            }
        } else {
            if (SharedStructureData.ordtTimer != null) {
                SharedStructureData.ordtTimer.cancel();
            }
            this.isProperFinish = false;
            this.myDialog.dismiss();
            changeActivity();
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws IOException {
        IntentResult activityResult = IntentIntegrator.parseActivityResult(i, i2, intent);
        if (i != 111) {
            if (i == 15555) {
                try {
                    if (i2 == -1) {
                        Bundle extras = intent.getExtras();
                        if (extras != null) {
                            Bitmap bitmap = (Bitmap) extras.get(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                            QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                            if (queFormBean != null) {
                                ImageView imageView = (ImageView) ((LinearLayout) queFormBean.getQuestionTypeView()).findViewById(GlobalTypes.PHOTO_CAPTURE_ACTIVITY);
                                imageView.setVisibility(0);
                                imageView.setImageBitmap(bitmap);
                                queFormBean.setAnswer(SewaTransformer.loginBean.getUsername() + "_" + SharedStructureData.currentQuestion + "_" + new Date().getTime() + GlobalTypes.IMAGE_CAPTURE_FORMAT);
                                SewaUtil.generateToast(this, LabelConstants.PHOTO_CAPTURED);
                            }
                        }
                    } else {
                        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                        if (queFormBean2 != null) {
                            ((ImageView) ((LinearLayout) queFormBean2.getQuestionTypeView()).findViewById(GlobalTypes.PHOTO_CAPTURE_ACTIVITY)).setVisibility(8);
                            queFormBean2.setAnswer(null);
                        }
                        SewaUtil.generateToast(this, LabelConstants.FAILED_TO_TAKE_PHOTO);
                    }
                } catch (Exception e) {
                    Log.e(TAG, null, e);
                }
            } else if (activityResult != null) {
                if (activityResult.getContents() == null) {
                    SewaUtil.generateToast(this, LabelConstants.FAILED_TO_SCAN_QR);
                } else {
                    String contents = activityResult.getContents();
                    QueFormBean queFormBean3 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                    if (queFormBean3 != null) {
                        TextView textView = (TextView) ((LinearLayout) queFormBean3.getQuestionTypeView()).findViewById(GlobalTypes.QR_SCAN_ACTIVITY);
                        Log.i(TAG, "QR Scanner Data : " + contents);
                        try {
                            Map<String, String> xml = SewaUtil.parseXml(contents);
                            textView.setText(UtilBean.getAadharTextToBeDisplayedAfterScan(xml));
                            queFormBean3.setAnswer(xml);
                            textView.setVisibility(0);
                        } catch (XmlPullParserException e2) {
                            Log.e(TAG, null, e2);
                            textView.setVisibility(8);
                            queFormBean3.setAnswer(null);
                            SewaUtil.generateToast(this, LabelConstants.PLEASE_SCAN_AADHAAR);
                        }
                    } else {
                        Log.e(TAG, "No Question found from structure having id " + SharedStructureData.currentQuestion);
                    }
                }
            } else if (i == 1015) {
                if (SharedStructureData.ordtTimer != null) {
                    SharedStructureData.ordtTimer.cancel();
                }
                SharedStructureData.ordtTimer = new Timer();
                SharedStructureData.ordtTimer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        if (SharedStructureData.ordtIntent.hasExtra("trainingMode")) {
                            SharedStructureData.ordtIntent.removeExtra("trainingMode");
                        }
                        DynamicFormActivity.this.startActivityForResult(SharedStructureData.ordtIntent, 1014);
                    }
                }, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
            } else if (i == 1014) {
                QueFormBean queFormBean4 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                if (queFormBean4 != null) {
                    if (intent != null) {
                        HashMap map = new HashMap();
                        map.put("requestId", intent.getStringExtra("requestId"));
                        map.put("timestamp", intent.getStringExtra("timestamp"));
                        map.put("userObservedResult", intent.getStringExtra("userObservedResult"));
                        map.put("capturedImageUri", intent.getStringExtra("capturedImageUri"));
                        queFormBean4.setAnswer(new Gson().toJson(map));
                        MyDynamicComponents.setORDTTestResult(this.context, queFormBean4, map);
                    } else {
                        MyDynamicComponents.resetORDPTestClick(queFormBean4);
                    }
                }
            } else if (i == 1020) {
                QueFormBean queFormBean5 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                if (queFormBean5 != null && intent != null && intent.getStringExtra("healthIdNumber") != null) {
                    queFormBean5.setAnswer(intent.getStringExtra("healthIdNumber"));
                }
            } else if (i == 1021) {
                QueFormBean queFormBean6 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                if (queFormBean6 != null && intent != null && intent.getStringExtra("OfflineHealthIdBean") != null) {
                    queFormBean6.setAnswer(intent.getStringExtra("OfflineHealthIdBean"));
                }
            } else if (i == 1023) {
                QueFormBean queFormBean7 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                if (queFormBean7 != null && intent != null && intent.getStringExtra("RequestId") != null) {
                    queFormBean7.setAnswer(intent.getStringExtra("RequestId"));
                }
            } else if (i == 1025) {
                if (i2 != -1) {
                    SewaUtil.generateToast(this.context, "Failed to upload photo");
                } else {
                    try {
                        Uri data = intent.getData();
                        Bitmap scaledBitmapForDisplay = UtilBean.getScaledBitmapForDisplay(this, data);
                        Bitmap bitmap2 = MediaStore.Images.Media.getBitmap(getContentResolver(), data);
                        String str = "IMG_" + new Date().getTime() + GlobalTypes.IMAGE_CAPTURE_FORMAT;
                        if (FileUtils.getInstance().convertBitmapToFile(bitmap2, SewaConstants.DIR_IMAGE + str) == null) {
                            SewaUtil.generateToast(this.context, "Failed to upload photo");
                        } else {
                            QueFormBean queFormBean8 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                            if (queFormBean8 != null) {
                                String string = UUID.randomUUID().toString();
                                ((ImageView) ((LinearLayout) queFormBean8.getQuestionTypeView()).findViewById(R.id.captued_image_view)).setImageBitmap(scaledBitmapForDisplay);
                                queFormBean8.setAnswer(string);
                                SharedStructureData.imageFilesToUpload.put(string, str);
                            }
                        }
                    } catch (IOException unused) {
                        SewaUtil.generateToast(this.context, "Failed to upload photo");
                    }
                }
            } else if (i == 1024) {
                if (i2 != -1) {
                    SewaUtil.generateToast(this.context, "Failed to capture photo");
                } else {
                    Bundle extras2 = intent.getExtras();
                    Bitmap bitmap3 = extras2 != null ? (Bitmap) extras2.get(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) : null;
                    if (bitmap3 == null) {
                        SewaUtil.generateToast(this.context, "Failed to capture photo");
                    } else {
                        String str2 = "IMG_" + new Date().getTime() + GlobalTypes.IMAGE_CAPTURE_FORMAT;
                        if (FileUtils.getInstance().convertBitmapToFile(bitmap3, SewaConstants.DIR_IMAGE + str2) == null) {
                            SewaUtil.generateToast(this.context, "Failed to capture photo");
                        } else {
                            QueFormBean queFormBean9 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                            if (queFormBean9 != null) {
                                String string2 = UUID.randomUUID().toString();
                                ((ImageView) ((LinearLayout) queFormBean9.getQuestionTypeView()).findViewById(R.id.captued_image_view)).setImageBitmap(bitmap3);
                                queFormBean9.setAnswer(string2);
                                SharedStructureData.imageFilesToUpload.put(string2, str2);
                            }
                        }
                    }
                }
            }
        } else if (!SharedStructureData.gps.isLocationProviderEnabled()) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m158x53d1d4c6();
                }
            });
        } else {
            SharedStructureData.gps.getLocation();
            this.currentLatitude = String.valueOf(GPSTracker.latitude);
            this.currentLongitude = String.valueOf(GPSTracker.longitude);
            SharedStructureData.relatedPropertyHashTable.put("currentLatitude", this.currentLatitude);
            SharedStructureData.relatedPropertyHashTable.put("currentLongitude", this.currentLongitude);
            if (!PointInPolygon.coordinateInsidePolygon()) {
                UtilBean.showAlertAndExit(GlobalTypes.MSG_GEO_FENCING_VIOLATION, this);
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    /* renamed from: lambda$onActivityResult$1$com-argusoft-sewa-android-app-activity-DynamicFormActivity, reason: not valid java name */
    /* synthetic */ void m158x53d1d4c6() {
        SharedStructureData.gps.showSettingsAlert(this.context);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        setContentView(new TextView(this));
    }

    public void storeOpdLabTestForm(String str) {
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m161xc9a53f49();
            }
        });
        String str2 = str + "-1!" + this.currentLongitude + "~-2!" + this.currentLatitude + "~-8!" + this.sharedPref.getString(RelatedPropertyNameConstants.FORM_START_DATE, null) + "~-9!" + new Date().getTime() + GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR;
        this.answerString = str2;
        try {
            if (this.serviceRestClient.storeOpdLabFormDetails(str2, this.labTestFormDetId, this.labTestVersion) != null) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m162xcfa90aa8();
                    }
                });
            }
            finishOpdLabTestForm(true);
        } catch (RestHttpException e) {
            hideProcessDialog();
            Log.e(TAG, null, e);
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m163xd5acd607();
                }
            });
        }
    }

    /* renamed from: lambda$storeOpdLabTestForm$2$com-argusoft-sewa-android-app-activity-DynamicFormActivity, reason: not valid java name */
    /* synthetic */ void m161xc9a53f49() {
        this.processDialog = new MyProcessDialog(this, LabelConstants.SAVING_DATA);
        this.processDialog.show();
    }

    /* renamed from: lambda$storeOpdLabTestForm$3$com-argusoft-sewa-android-app-activity-DynamicFormActivity, reason: not valid java name */
    /* synthetic */ void m162xcfa90aa8() {
        SewaUtil.generateToast(this, LabelConstants.FORM_HAS_BEEN_SAVED_SUCCESSFULLY);
    }

    /* renamed from: lambda$storeOpdLabTestForm$4$com-argusoft-sewa-android-app-activity-DynamicFormActivity, reason: not valid java name */
    /* synthetic */ void m163xd5acd607() {
        this.alertDialog = new MyAlertDialog(this, false, LabelConstants.ERROR_OCCURRED_DURING_FORM_SUBMISSION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() != -1) {
                    DynamicFormActivity.this.finishOpdLabTestForm(false);
                } else {
                    DynamicFormActivity dynamicFormActivity = DynamicFormActivity.this;
                    dynamicFormActivity.storeOpdLabTestForm(dynamicFormActivity.answerString);
                }
            }
        }, DynamicUtils.BUTTON_RETRY_CANCEL);
        this.alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishOpdLabTestForm(boolean z) {
        try {
            formEngine = null;
            PageFormBean.context = null;
            SharedStructureData.resetSharedStructureData();
            this.techoService.deleteQuestionAndAnswersByFormCode(this.formType);
            if (z) {
                setResult(-1);
            } else {
                setResult(0);
            }
        } finally {
            super.finish();
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.DynamicFormActivity$3] */
    public void onFormFillFinish(String str, boolean z) {
        this.answerString = str;
        this.isProperFinish = z;
        this.processDialog = new MyProcessDialog(this, LabelConstants.MSG_SAVING_DATA);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Calendar calendar = Calendar.getInstance();
                Date date = new Date();
                Calendar.getInstance().setTimeInMillis(calendar.getTimeInMillis() - SharedStructureData.formFillUpTime);
                SharedStructureData.formFillUpTime = date.getTime() - SharedStructureData.formFillUpTime;
                DynamicFormActivity.this.answerString = DynamicFormActivity.this.answerString + "-8!" + DynamicFormActivity.this.sharedPref.getString(RelatedPropertyNameConstants.FORM_START_DATE, null) + "~-9!" + new Date().getTime() + GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR;
                DynamicFormActivity dynamicFormActivity = DynamicFormActivity.this;
                dynamicFormActivity.lastStoredFormChecksum = DynamicUtils.storeForm(dynamicFormActivity.formType, DynamicFormActivity.this.answerString);
                SharedStructureData.isOnlineSearch = false;
                try {
                    try {
                        if (SharedStructureData.fhwSheets.contains(DynamicFormActivity.this.formType) || DynamicFormActivity.this.formType.equalsIgnoreCase(FormConstants.ASHA_PNC)) {
                            DynamicFormActivity.this.changeActivity();
                        } else {
                            DynamicFormActivity.this.finish();
                        }
                    } catch (Exception e) {
                        Log.e(DynamicFormActivity.TAG, null, e);
                    }
                } finally {
                    DynamicFormActivity.this.hideProcessDialog();
                }
            }
        }.start();
    }

    @Override // android.app.Activity
    public void finish() {
        formEngine = null;
        PageFormBean.context = null;
        SharedStructureData.resetSharedStructureData();
        try {
            if (this.isProperFinish) {
                navigationFlowForActivity();
            }
            if (this.answerString != null) {
                Intent intent = new Intent();
                String str = this.lastStoredFormChecksum;
                if (str != null) {
                    intent.putExtra(SewaConstants.STORED_FORM_CHECKSUM, str);
                }
                setResult(-1, intent);
            } else {
                setResult(0);
            }
            hideProcessDialog();
        } finally {
            super.finish();
        }
    }

    private void navigationFlowForActivity() {
        try {
            String str = this.formType;
            if (str != null) {
                showMorbidity(str);
            }
        } catch (Exception e) {
            SharedStructureData.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_DYNAMIC_FORM);
            Log.e(TAG, null, e);
        }
    }

    private void showMorbidity(String str) {
        MorbiditiesConstant.morbidities = null;
        MorbiditiesConstant.nextEntity = null;
        String str2 = SharedStructureData.relatedPropertyHashTable.get("isPresent");
        String str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_STATUS);
        if (str2 == null || !str2.equalsIgnoreCase("T") || str3 == null || str3.equals(RchConstants.MEMBER_STATUS_DEATH) || !str.equalsIgnoreCase(FormConstants.ASHA_ANC)) {
            return;
        }
        MorbiditiesConstant.morbidities = SewaUtil.showANCMorbidity(this.answerString);
        MorbiditiesConstant.nextEntity = FormConstants.ANC_MORBIDITY;
        startActivity(new Intent(this, (Class<?>) DisplayMorbiditiesActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void changeActivity() {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.DynamicFormActivity.changeActivity():void");
    }

    /* renamed from: lambda$changeActivity$5$com-argusoft-sewa-android-app-activity-DynamicFormActivity, reason: not valid java name */
    /* synthetic */ void m157x3c17846e(View view) {
        this.alertDialog.dismiss();
        navigateToHomeScreen(false);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            FormEngine formEngine2 = formEngine;
            if (formEngine2 == null) {
                return true;
            }
            formEngine2.backButtonClicked();
            return true;
        }
        if (menuItem.getItemId() == R.id.menu_home) {
            this.alertDialog = new MyAlertDialog(this, LabelConstants.WANT_TO_GO_BACK_TO_HOME_SCREEN, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m159x26d3a699(view);
                }
            }, DynamicUtils.BUTTON_YES_NO);
            this.alertDialog.show();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* renamed from: lambda$onOptionsItemSelected$6$com-argusoft-sewa-android-app-activity-DynamicFormActivity, reason: not valid java name */
    /* synthetic */ void m159x26d3a699(View view) {
        if (view.getId() == -1) {
            this.alertDialog.dismiss();
            this.isProperFinish = false;
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.alertDialog.dismiss();
    }

    public FormEngine getFormEngine() {
        return formEngine;
    }

    public void showToaster(String str) {
        SewaUtil.generateToast(this.context, str);
    }
}
