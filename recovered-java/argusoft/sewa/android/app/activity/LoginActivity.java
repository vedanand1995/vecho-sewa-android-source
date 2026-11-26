package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.SewaApplication;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.MoveToProductionServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.service.GPSTracker;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.BackgroundDownloadUtils;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.RootUtil;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.dao.Dao;
import java.io.File;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LoginActivity extends AppCompatActivity implements View.OnClickListener {
    private CheckBox cbRememberMe;
    private MyAlertDialog dialogForExit;
    private EditText etPassword;
    private EditText etUsername;
    private Button loginButton;
    Dao<LoginBean, Integer> loginDao;
    private String loginPassword;
    private String loginUsername;
    MoveToProductionServiceImpl moveToProductionService;
    private MyAlertDialog myDialog;
    private MyProcessDialog processDialog;
    SewaServiceRestClientImpl restClient;
    SewaServiceImpl sewaService;
    TechoServiceImpl techoService;
    Dao<VersionBean, Integer> versionDao;
    private Context context = this;
    private boolean isResume = true;

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        return this;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        startService(new Intent(this, (Class<?>) GPSTracker.class));
        MyProcessDialog myProcessDialog = new MyProcessDialog(this, GlobalTypes.MSG_STARTUP_APPLICATION);
        this.processDialog = myProcessDialog;
        myProcessDialog.show();
        checkDeviceRootAccess();
        this.etUsername = (EditText) findViewById(R.id.txtUsername);
        this.etPassword = (EditText) findViewById(R.id.txtPassword);
        this.cbRememberMe = (CheckBox) findViewById(R.id.cbRememberMe);
        this.loginButton = (Button) findViewById(R.id.loginButton);
    }

    public void checkDeviceRootAccess() {
        if (RootUtil.isDeviceRooted()) {
            showAlertAndExit(LabelConstants.NOT_ALLOW_ON_ROOTED_DEVICE_ALERT);
        } else {
            checkIfDeviceIsBlocked();
        }
    }

    public void checkIfDeviceIsBlocked() {
        Map<String, Boolean> mapCheckIfDeviceIsBlockedOrDeleteDatabase = this.techoService.checkIfDeviceIsBlockedOrDeleteDatabase();
        if (Boolean.TRUE.equals(mapCheckIfDeviceIsBlockedOrDeleteDatabase.get("isBlocked"))) {
            showAlertAndExit(LabelConstants.DEVICE_HAS_BEEN_BLOCKED_ALERT);
        } else if (Boolean.TRUE.equals(mapCheckIfDeviceIsBlockedOrDeleteDatabase.get("isDatabaseDeleted"))) {
            showAlertAndExit(LabelConstants.DEVICE_HAS_BEEN_RESET_ALERT);
        } else {
            onCheckUpdateComplete();
        }
    }

    public void showAlertAndExit(String str) {
        hideProcessDialog();
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, false, str, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LoginActivity.this.dialogForExit.dismiss();
                Process.killProcess(Process.myPid());
                Runtime.getRuntime().exit(0);
            }
        }, DynamicUtils.BUTTON_OK);
        this.dialogForExit = myAlertDialog;
        myAlertDialog.show();
    }

    private void onCheckUpdateComplete() {
        String string;
        final String systemConfigurationByKey = null;
        boolean z = false;
        try {
            Bundle extras = getIntent().getExtras();
            if (extras != null && (string = extras.getString("From")) != null && string.equalsIgnoreCase("logout") && SewaTransformer.loginBean != null) {
                SewaTransformer.loginBean.setFirstLogin(false);
                SewaTransformer.loginBean.setLoggedIn(false);
                SewaTransformer.loginBean.setHidden(false);
                this.loginDao.update((Dao<LoginBean, Integer>) SewaTransformer.loginBean);
                this.isResume = false;
            }
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        String androidVersion = this.sewaService.getAndroidVersion();
        if (androidVersion == null) {
            continueProcess();
            return;
        }
        String strReplace = androidVersion.split(GlobalTypes.KEY_VALUE_SEPARATOR)[0];
        if (strReplace == null) {
            continueProcess();
            return;
        }
        Log.i(getClass().getSimpleName(), "#### DB SEWA APP VERSION :" + strReplace);
        if (strReplace.contains("M") || strReplace.contains("m")) {
            strReplace = strReplace.replace("M", "").replace("m", "");
            z = true;
        }
        final String str = "techo_app_" + strReplace + LabelConstants.APK_EXTENSTION;
        if (checkAuthenticityOfCurrentVersion(androidVersion, str)) {
            if (Integer.parseInt(strReplace) > 192) {
                Log.i(getClass().getSimpleName(), "#### APP NAME (apk name): " + str);
                Log.i(getClass().getSimpleName(), "#### Current Version :" + strReplace + " & Config Local Version : 192");
                if (BackgroundDownloadUtils.isApkExistsOnLocal(this.context, str)) {
                    hideProcessDialog();
                    BackgroundDownloadUtils.showInstallAppDialog(this, str);
                    return;
                }
                if (BackgroundDownloadUtils.isDownloadNotInProgress(this, str)) {
                    try {
                        systemConfigurationByKey = this.restClient.getSystemConfigurationByKey("ANDROID_APP_LINK");
                    } catch (RestHttpException e2) {
                        Log.e(getClass().getSimpleName(), e2.getMessage(), e2);
                    }
                    if (systemConfigurationByKey == null) {
                        continueProcess();
                        return;
                    } else {
                        if (z) {
                            showAlert(UtilBean.getMyLabel(LabelConstants.APP_UPDATE_STATUS), UtilBean.getMyLabel(LabelConstants.NEW_APPLICATION_AVAILABLE), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LoginActivity.2
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    LoginActivity.this.myDialog.dismiss();
                                    BackgroundDownloadUtils.deleteAllFiles(LoginActivity.this.getContext(), new File(SewaConstants.DIR_APK_DOWNLOADED));
                                    BackgroundDownloadUtils.startAppDownloading(LoginActivity.this.getContext(), str, systemConfigurationByKey);
                                    LoginActivity.this.startActivity(new Intent(LoginActivity.this.context, (Class<?>) DownloadProgressActivity.class));
                                    LoginActivity.this.finish();
                                }
                            }, DynamicUtils.BUTTON_OK);
                            return;
                        }
                        BackgroundDownloadUtils.deleteAllFiles(this.context, new File(SewaConstants.DIR_APK_DOWNLOADED));
                        BackgroundDownloadUtils.startAppDownloading(this.context, str, systemConfigurationByKey);
                        continueProcess();
                        return;
                    }
                }
                continueProcess();
                return;
            }
            Log.i(getClass().getSimpleName(), "#### Latest version.... So, Deleting all the files");
            BackgroundDownloadUtils.deleteAllFiles(this, new File(SewaConstants.DIR_APK_DOWNLOADED));
            continueProcess();
        }
    }

    private void continueProcess() {
        try {
            SewaUtil.isUserInTraining = this.loginDao.queryForAll().get(0).isTrainingUser();
        } catch (Exception unused) {
            SewaUtil.isUserInTraining = true;
        }
        if (this.isResume) {
            if (SewaTransformer.loginBean != null && SewaTransformer.loginBean.isHidden()) {
                setUserInProductionOrTraining(this.sewaService.isUserInProduction(SewaTransformer.loginBean.getUsername()));
                doAfterLogin(true);
                return;
            } else {
                setLoginScreen();
                return;
            }
        }
        setLoginScreen();
    }

    public void showAlert(String str, String str2, View.OnClickListener onClickListener, int i) {
        hideProcessDialog();
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, false, str2, onClickListener, i);
        this.myDialog = myAlertDialog;
        myAlertDialog.show();
    }

    public void generateToaster(String str) {
        SewaUtil.generateToast(this, str);
    }

    public void setUserInProductionOrTraining(int i) {
        if (i == 0) {
            if (SharedStructureData.NETWORK_MESSAGE != null && SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.NETWORK_NOT_PROPER)) {
                SewaUtil.generateToast(this, LabelConstants.USER_SERVER_CHECKING_FAIL);
                return;
            } else {
                SewaUtil.generateToast(this, LabelConstants.USER_IS_NOT_AVAILABLE_ON_SERVER);
                return;
            }
        }
        if (i == 1) {
            SewaUtil.generateToast(this, LabelConstants.WORKING_ON_PRODUCTION);
            SewaUtil.CURRENT_THEME = R.style.techo_app;
        } else if (i == 2) {
            SewaUtil.generateToast(this, LabelConstants.WORKING_ON_TRAINING);
            SewaUtil.CURRENT_THEME = R.style.techo_training_app;
        } else if (i == 3) {
            if (SewaUtil.isUserInTraining) {
                SewaUtil.CURRENT_THEME = R.style.techo_training_app;
            } else {
                SewaUtil.CURRENT_THEME = R.style.techo_app;
            }
        }
    }

    public void setLoginScreen() {
        hideProcessDialog();
        setContentView(R.layout.activity_login);
        this.etUsername = (EditText) findViewById(R.id.txtUsername);
        this.etPassword = (EditText) findViewById(R.id.txtPassword);
        this.cbRememberMe = (CheckBox) findViewById(R.id.cbRememberMe);
        this.loginButton = (Button) findViewById(R.id.loginButton);
        ((TextView) findViewById(R.id.versionView)).setText("v. 4.1.5");
        this.loginButton.setOnClickListener(this);
        if (SewaTransformer.loginBean != null) {
            this.etUsername.setText(SewaTransformer.loginBean.getUsername());
            this.cbRememberMe.setChecked(SewaTransformer.loginBean.isRemember());
            if (SewaTransformer.loginBean.isRemember()) {
                this.etPassword.setText(SewaTransformer.loginBean.getPasswordPlain());
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [com.argusoft.sewa.android.app.activity.LoginActivity$3] */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        view.setEnabled(false);
        int id = view.getId();
        if (id == -1) {
            MyAlertDialog myAlertDialog = this.myDialog;
            if (myAlertDialog != null) {
                myAlertDialog.dismiss();
                finish();
            }
        } else if (id == -2) {
            MyAlertDialog myAlertDialog2 = this.myDialog;
            if (myAlertDialog2 != null) {
                myAlertDialog2.dismiss();
            }
        } else if (id == this.loginButton.getId()) {
            this.loginButton.setEnabled(false);
            this.loginUsername = this.etUsername.getText().toString();
            this.loginPassword = this.etPassword.getText().toString();
            String str = this.loginUsername;
            if (str == null || str.trim().length() <= 0) {
                SewaUtil.generateToast(this, LabelConstants.PLEASE_ENTER_USERNAME);
                this.loginButton.setEnabled(true);
            } else {
                String str2 = this.loginPassword;
                if (str2 == null || str2.trim().length() <= 0) {
                    SewaUtil.generateToast(this, LabelConstants.PLEASE_ENTER_PASS_WORD);
                    this.loginButton.setEnabled(true);
                } else {
                    MyProcessDialog myProcessDialog = this.processDialog;
                    if (myProcessDialog == null || !myProcessDialog.isShowing()) {
                        if (this.sewaService.isOnline()) {
                            MyProcessDialog myProcessDialog2 = new MyProcessDialog(this, GlobalTypes.MSG_STARTUP_APPLICATION);
                            this.processDialog = myProcessDialog2;
                            myProcessDialog2.show();
                        }
                        new Thread() { // from class: com.argusoft.sewa.android.app.activity.LoginActivity.3
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                String strValidateUser;
                                int iIsUserInProduction = LoginActivity.this.sewaService.isUserInProduction(LoginActivity.this.loginUsername);
                                if (iIsUserInProduction > 0) {
                                    strValidateUser = LoginActivity.this.sewaService.validateUser(LoginActivity.this.loginUsername, LoginActivity.this.loginPassword, iIsUserInProduction, LoginActivity.this.cbRememberMe.isChecked());
                                } else {
                                    strValidateUser = SewaConstants.USER_NOT_FOUND;
                                }
                                LoginActivity.this.onLoginComplete(strValidateUser, iIsUserInProduction);
                            }
                        }.start();
                    }
                }
            }
        }
        view.setEnabled(true);
    }

    public void onLoginComplete(String str, int i) {
        this.loginButton.setEnabled(true);
        if (str.isEmpty() && SharedStructureData.NETWORK_MESSAGE != null && SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.NETWORK_NOT_PROPER)) {
            str = SharedStructureData.NETWORK_MESSAGE;
        }
        if (!str.isEmpty()) {
            SewaUtil.generateToast(this, str);
        }
        if (str.equalsIgnoreCase(SewaConstants.LOGIN_SUCCESS_WEB) || str.contains(GlobalTypes.MOBILE_DATE_NOT_SAME_SERVER)) {
            if (SewaTransformer.loginBean != null) {
                try {
                    SewaTransformer.loginBean.setLoggedIn(false);
                    this.loginDao.update((Dao<LoginBean, Integer>) SewaTransformer.loginBean);
                } catch (Exception e) {
                    Log.e(getClass().getName(), null, e);
                }
            }
            setUserInProductionOrTraining(i);
            doAfterLogin(true);
            return;
        }
        if (str.equalsIgnoreCase(SewaConstants.LOGIN_SUCCESS_LOCAL) || (SewaTransformer.loginBean != null && SewaTransformer.loginBean.getUsername().equalsIgnoreCase(this.loginUsername) && SharedStructureData.NETWORK_MESSAGE != null && SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.NETWORK_NOT_PROPER))) {
            setUserInProductionOrTraining(i);
            doAfterLogin(false);
        } else {
            hideProcessDialog();
        }
    }

    public void doAfterLogin(boolean z) {
        if (this.sewaService.isOnline()) {
            MyProcessDialog myProcessDialog = this.processDialog;
            if (myProcessDialog != null) {
                TextView textView = (TextView) myProcessDialog.findViewById(10000);
                if (textView != null) {
                    textView.setText(UtilBean.getMyLabel(GlobalTypes.MSG_LOGIN_SCREEN));
                }
            } else {
                this.processDialog = new MyProcessDialog(this, GlobalTypes.MSG_LOGIN_SCREEN);
            }
            this.processDialog.show();
        }
        doAfterSuccessfulLogin(z);
    }

    public void doAfterSuccessfulLogin(boolean z) {
        if (SewaTransformer.loginBean != null) {
            try {
                SewaTransformer.loginBean.setLoggedIn(true);
                this.loginDao.update((Dao<LoginBean, Integer>) SewaTransformer.loginBean);
            } catch (Exception e) {
                Log.e(getClass().getName(), null, e);
            }
        }
        this.sewaService.doAfterSuccessfulLogin(z);
        if (!SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.NETWORK_AVAILABLE) && !SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase("Network Unavailable")) {
            if (SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.SQL_EXCEPTION)) {
                showAlert(LabelConstants.NETWORK, LabelConstants.APP_DATA_ERROR, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LoginActivity$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m261x75857c7a(view);
                    }
                }, DynamicUtils.BUTTON_OK);
            } else {
                showAlert(LabelConstants.NETWORK, SharedStructureData.NETWORK_MESSAGE, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LoginActivity$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m262x8fa0fb19(view);
                    }
                }, DynamicUtils.LOGIN_BUTTON_ALERT);
            }
            if (SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.NETWORK_NOT_PROPER) || SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.EXCEPTION_FETCHING_DATA_FOR_USER)) {
                generateToaster(SharedStructureData.NETWORK_MESSAGE);
                return;
            }
            return;
        }
        VersionBean versionBean = new VersionBean();
        versionBean.setKey(SewaConstants.TIME_STAMP_LAST_REFRESH);
        VersionBean sheetStatusByFiletr = SharedStructureData.sewaService.getSheetStatusByFiletr(versionBean);
        if (sheetStatusByFiletr == null) {
            sheetStatusByFiletr = new VersionBean();
            sheetStatusByFiletr.setKey(SewaConstants.TIME_STAMP_LAST_REFRESH);
        }
        sheetStatusByFiletr.setValue(Calendar.getInstance().getTimeInMillis() + "");
        SharedStructureData.sewaService.updateVersionBean(sheetStatusByFiletr);
        onDoAfterLoginComplete();
    }

    /* renamed from: lambda$doAfterSuccessfulLogin$0$com-argusoft-sewa-android-app-activity-LoginActivity, reason: not valid java name */
    /* synthetic */ void m261x75857c7a(View view) {
        this.techoService.deleteDatabaseFileFromLocal(this.context);
        UtilBean.restartApplication(this.context);
    }

    /* renamed from: lambda$doAfterSuccessfulLogin$1$com-argusoft-sewa-android-app-activity-LoginActivity, reason: not valid java name */
    /* synthetic */ void m262x8fa0fb19(View view) {
        if (view.getId() == -1) {
            onDoAfterLoginComplete();
        } else {
            this.myDialog.dismiss();
        }
    }

    private boolean isShowYearEndSummaryFeatureAvailable() {
        try {
            List<VersionBean> listQueryForEq = this.versionDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_SHOW_YEAR_END_SUMMARY);
            if (listQueryForEq != null && !listQueryForEq.isEmpty()) {
                if (listQueryForEq.get(0).getValue().equalsIgnoreCase(Boolean.TRUE.toString())) {
                    return true;
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return false;
    }

    private void onDoAfterLoginComplete() {
        List<FormAccessibilityBean> listIsAnyFormTrainingCompleted;
        hideProcessDialog();
        if (SewaUtil.isUserInTraining && (listIsAnyFormTrainingCompleted = this.moveToProductionService.isAnyFormTrainingCompleted()) != null && !listIsAnyFormTrainingCompleted.isEmpty()) {
            Intent intent = new Intent(this, (Class<?>) MoveToProductionActivity_.class);
            SharedStructureData.isLogin = true;
            startActivity(intent);
            finish();
            return;
        }
        Intent intent2 = null;
        if (SewaTransformer.loginBean != null) {
            SewaApplication.firebaseAnalyticsInstance().setUserId(String.valueOf(SewaTransformer.loginBean.getUserID()));
            SewaApplication.firebaseAnalyticsInstance().setUserProperty("user_first_name", SewaTransformer.loginBean.getFirstName());
            SewaApplication.firebaseAnalyticsInstance().setUserProperty("user_name", SewaTransformer.loginBean.getUsername());
            SewaApplication.firebaseAnalyticsInstance().setUserProperty("user_role", SewaTransformer.loginBean.getUserRole());
            if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase("Asha")) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityASHA_.class);
                intent2.putExtra("isFromLogin", true);
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_FHW)) {
                if (Boolean.TRUE.equals(SewaTransformer.loginBean.getOtpVerificationRequired())) {
                    Calendar calendar = Calendar.getInstance();
                    if (SewaTransformer.loginBean.getReverificationPeriod() != null) {
                        calendar.add(6, -SewaTransformer.loginBean.getReverificationPeriod().intValue());
                        if (this.sewaService.isOnline() && (SewaTransformer.loginBean.getOtpVerificationDate() == null || SewaTransformer.loginBean.getOtpVerificationDate().before(calendar.getTime()))) {
                            intent2 = new Intent(this, (Class<?>) OtpVerificationActivity_.class);
                        } else {
                            intent2 = new Intent(this, (Class<?>) HomeScreenActivityFHW_.class);
                        }
                    }
                } else {
                    intent2 = new Intent(this, (Class<?>) HomeScreenActivityFHW_.class);
                    intent2.putExtra("isFromLogin", true);
                }
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MPHW)) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityMPHW_.class);
                intent2.putExtra("isFromLogin", true);
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_CHO_HWC) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_UAAM_MO)) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityCHO_.class);
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_FHSR) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_SUPERVISOR_STAFF_NURSE_CORP)) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityFHSR_.class);
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_AWW)) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityAww_.class);
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_RBSK_MO) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_RBSK_PHARMACIST) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_PRIVATE_HOSP_PAEDITRACICAN)) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityRBSK_.class);
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_LAB_TECHNICIAN)) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityLabTechnician_.class);
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MO_PHC) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MO_UPHC)) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityMO_.class);
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_OA)) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityOA_.class);
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_ASHA_FACILITATOR)) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityASHAFacilitator_.class);
            } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MPHS)) {
                intent2 = new Intent(this, (Class<?>) HomeScreenActivityMPHS_.class);
            }
        }
        if (intent2 != null) {
            SharedStructureData.isLogin = true;
            if (isShowYearEndSummaryFeatureAvailable()) {
                Integer num = SharedStructureData.numberOfTimesLoggedIn;
                SharedStructureData.numberOfTimesLoggedIn = Integer.valueOf(SharedStructureData.numberOfTimesLoggedIn.intValue() + 1);
            }
            this.sewaService.uploadAllMediaToServer();
            startActivity(intent2);
            finish();
        }
    }

    private boolean checkIfNotificationIsAccessibleToUser(String str) {
        FormAccessibilityBean formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType = this.moveToProductionService.retrieveFormAccessibilityBeanByFormType(str);
        if (formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType == null || !formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType.getTrainingReq().booleanValue()) {
            return true;
        }
        return formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType.getState() != null && formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType.getState().equals(GlobalTypes.MOVE_TO_PRODUCTION);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, GlobalTypes.MSG_CANCEL_APPLICATION, this, DynamicUtils.BUTTON_YES_NO);
        this.myDialog = myAlertDialog;
        myAlertDialog.show();
    }

    private boolean checkAuthenticityOfCurrentVersion(String str, final String str2) {
        final String systemConfigurationByKey;
        String[] strArrSplit = str.split(GlobalTypes.KEY_VALUE_SEPARATOR);
        if (strArrSplit.length == 1 || 192 >= Integer.parseInt(strArrSplit[1])) {
            return true;
        }
        try {
            systemConfigurationByKey = this.restClient.getSystemConfigurationByKey("ANDROID_APP_LINK");
        } catch (RestHttpException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            systemConfigurationByKey = null;
        }
        if (systemConfigurationByKey == null) {
            continueProcess();
            return true;
        }
        hideProcessDialog();
        showAlert(UtilBean.getMyLabel(LabelConstants.APP_UPDATE_STATUS), UtilBean.getMyLabel(LabelConstants.NEW_APPLICATION_AVAILABLE), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LoginActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m260x6ac82081(str2, systemConfigurationByKey, view);
            }
        }, DynamicUtils.BUTTON_OK);
        return false;
    }

    /* renamed from: lambda$checkAuthenticityOfCurrentVersion$2$com-argusoft-sewa-android-app-activity-LoginActivity, reason: not valid java name */
    /* synthetic */ void m260x6ac82081(String str, String str2, View view) {
        this.myDialog.dismiss();
        if (BackgroundDownloadUtils.isApkExistsOnLocal(this.context, str)) {
            BackgroundDownloadUtils.showInstallAppDialog(getContext(), str);
        } else {
            BackgroundDownloadUtils.deleteAllFiles(getContext(), new File(SewaConstants.DIR_APK_DOWNLOADED));
            BackgroundDownloadUtils.startAppDownloading(getContext(), str, str2);
            startActivity(new Intent(this.context, (Class<?>) DownloadProgressActivity.class));
        }
        finish();
    }

    public void hideProcessDialog() {
        MyProcessDialog myProcessDialog = this.processDialog;
        if (myProcessDialog == null || !myProcessDialog.isShowing() || isFinishing() || isDestroyed()) {
            return;
        }
        try {
            this.processDialog.dismiss();
        } catch (IllegalArgumentException e) {
            Log.e(getClass().getSimpleName(), "hideProcessDialog: dialog window already detached", e);
        }
    }
}
