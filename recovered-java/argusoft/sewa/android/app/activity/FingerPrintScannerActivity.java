package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.CreateHidAadharBioRequest;
import com.argusoft.sewa.android.app.databean.HealthIdAccountProfileResponse;
import com.argusoft.sewa.android.app.databean.HealthIdConfirmBioRequest;
import com.argusoft.sewa.android.app.rdservice.RDServiceEvents;
import com.argusoft.sewa.android.app.rdservice.RDServiceManager;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import fr.arnaudguyon.xmltojsonlib.XmlToJson;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes.dex */
public class FingerPrintScannerActivity extends MenuActivity implements View.OnClickListener, RDServiceEvents {
    private static final String TAG = "FingerPrintScanner";
    public Context context = this;
    private Boolean isFromAbhaSeeding = false;
    private MyAlertDialog myAlertDialog;
    private RDServiceManager rdServiceManager;
    SewaServiceRestClientImpl restClient;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.isFromAbhaSeeding = Boolean.valueOf(getIntent().getExtras().getBoolean("isFromAbhaSeeding"));
        RDServiceManager rDServiceManagerCreate = new RDServiceManager.Builder(this).create();
        this.rdServiceManager = rDServiceManagerCreate;
        rDServiceManagerCreate.discoverRdService();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        try {
            this.rdServiceManager.onActivityResult(i, i2, intent);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // com.argusoft.sewa.android.app.rdservice.RDServiceEvents
    public void onRDServiceDriverDiscovery(String str, String str2, Boolean bool) throws JSONException {
        if (!new XmlToJson.Builder(str).build().toJson().getJSONObject("RDService").getString("status").equals("READY")) {
            onRDServiceDriverNotFound();
        } else {
            this.rdServiceManager.captureRdService(str2, "<PidOptions ver=\"1.0\"> <Opts fCount=\"1\" fType=\"2\" pCount=\"0\" format=\"0\" pidVer=\"2.0\" \nwadh=\"RZ+k4w9ySTzOibQdDHPzCFqrKScZ74b3EibKYy1WyGw=\" \ntimeout=\"20000\" posh=\"UNKNOWN\" env=\"P\" /> </PidOptions>");
        }
    }

    @Override // com.argusoft.sewa.android.app.rdservice.RDServiceEvents
    public void onRDServiceCaptureResponse(String str, String str2) throws JSONException {
        XmlToJson xmlToJsonBuild = new XmlToJson.Builder(str).build();
        String string = xmlToJsonBuild.toJson().getJSONObject("PidData").getJSONObject("Resp").getString("errCode");
        String string2 = xmlToJsonBuild.toJson().getJSONObject("PidData").getJSONObject("Resp").getString("errInfo");
        if (string.equals("0")) {
            showProcessDialog();
            Intent intent = new Intent();
            intent.putExtra("pid", str);
            setResult(-1, intent);
            finish();
            return;
        }
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, string2, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FingerPrintScannerActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m176x74e446c(view);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onRDServiceCaptureResponse$0$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity, reason: not valid java name */
    /* synthetic */ void m176x74e446c(View view) {
        this.myAlertDialog.dismiss();
        setResult(0);
        finish();
    }

    @Override // com.argusoft.sewa.android.app.rdservice.RDServiceEvents
    public void onRDServiceDriverNotFound() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.RD_SERVICE_DRIVERS_NOT_FOUND, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FingerPrintScannerActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m178x769066ab(view);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onRDServiceDriverNotFound$1$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity, reason: not valid java name */
    /* synthetic */ void m178x769066ab(View view) {
        this.myAlertDialog.dismiss();
        setResult(0);
        finish();
    }

    @Override // com.argusoft.sewa.android.app.rdservice.RDServiceEvents
    public void onRDServiceDriverDiscoveryFailed(int i, Intent intent, String str, String str2) {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.RD_SERVICE_DRIVERS_DISCOVERY_FAILED, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FingerPrintScannerActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m177x5c36914c(view);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onRDServiceDriverDiscoveryFailed$2$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity, reason: not valid java name */
    /* synthetic */ void m177x5c36914c(View view) {
        this.myAlertDialog.dismiss();
        setResult(0);
        finish();
    }

    @Override // com.argusoft.sewa.android.app.rdservice.RDServiceEvents
    public void onRDServiceCaptureFailed(int i, Intent intent, String str) {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.RD_SERVICE_CAPTURE_FAILED, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FingerPrintScannerActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m175x2047356b(view);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onRDServiceCaptureFailed$3$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity, reason: not valid java name */
    /* synthetic */ void m175x2047356b(View view) {
        this.myAlertDialog.dismiss();
        setResult(0);
        finish();
    }

    public void generateHealthIdUsingFingerPrint(String str) {
        String token;
        final String[] strArr = {"Issue for creating Health ID"};
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            try {
                String string = extras.getString(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL);
                CreateHidAadharBioRequest createHidAadharBioRequest = new CreateHidAadharBioRequest();
                createHidAadharBioRequest.setAadhaar(extras.getString("aadhaar"));
                createHidAadharBioRequest.setBioType("FMR");
                createHidAadharBioRequest.setMobileNumber(extras.getString(AadharScanUtil.MOBILE_HEX));
                createHidAadharBioRequest.setPid(str);
                HealthIdAccountProfileResponse healthIdAccountProfileResponseCreateUsingAadhaarBiometrics = this.restClient.createUsingAadhaarBiometrics(extras.getInt("memberId"), extras.getString("featureName"), createHidAadharBioRequest, string);
                if (healthIdAccountProfileResponseCreateUsingAadhaarBiometrics != null) {
                    if (healthIdAccountProfileResponseCreateUsingAadhaarBiometrics.getJwtResponse() != null && healthIdAccountProfileResponseCreateUsingAadhaarBiometrics.getJwtResponse().getToken() != null && healthIdAccountProfileResponseCreateUsingAadhaarBiometrics.getHealthIdNumber() != null) {
                        token = healthIdAccountProfileResponseCreateUsingAadhaarBiometrics.getJwtResponse().getToken();
                    } else {
                        token = healthIdAccountProfileResponseCreateUsingAadhaarBiometrics.getToken();
                    }
                    hideProcessDialog();
                    Intent intent = new Intent();
                    intent.putExtra(FieldNameConstants.TOKEN, token);
                    intent.putExtra("healthIdNumber", healthIdAccountProfileResponseCreateUsingAadhaarBiometrics.getHealthIdNumber());
                    intent.putExtra("healthId", healthIdAccountProfileResponseCreateUsingAadhaarBiometrics.getHealthId());
                    setResult(-1, intent);
                    finish();
                    return;
                }
            } catch (Exception e) {
                Log.e(TAG, e.getMessage());
                e.printStackTrace();
                strArr[0] = e.getMessage();
            }
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.FingerPrintScannerActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m174x680c0c39(strArr);
                }
            });
        }
    }

    /* renamed from: lambda$generateHealthIdUsingFingerPrint$4$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity, reason: not valid java name */
    /* synthetic */ void m174x680c0c39(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void verifyAbhaUsingFingerPrint(String str) {
        final String[] strArr = {"Issue for creating Health ID"};
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            try {
                HealthIdConfirmBioRequest healthIdConfirmBioRequest = new HealthIdConfirmBioRequest();
                healthIdConfirmBioRequest.setTxnId(extras.getString("txnId"));
                healthIdConfirmBioRequest.setBioType("FMR");
                healthIdConfirmBioRequest.setAuthType("FINGERSCAN");
                healthIdConfirmBioRequest.setPid(str);
                Map<String, String> mapConfirmBio = this.restClient.confirmBio(healthIdConfirmBioRequest);
                hideProcessDialog();
                Intent intent = new Intent();
                intent.putExtra(FieldNameConstants.TOKEN, mapConfirmBio.get(FieldNameConstants.TOKEN));
                setResult(-1, intent);
                finish();
            } catch (Exception e) {
                Log.e(TAG, e.getMessage());
                e.printStackTrace();
                strArr[0] = e.getMessage();
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.FingerPrintScannerActivity$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m179x60e5cc01(strArr);
                    }
                });
            }
        }
    }

    /* renamed from: lambda$verifyAbhaUsingFingerPrint$5$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity, reason: not valid java name */
    /* synthetic */ void m179x60e5cc01(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }
}
