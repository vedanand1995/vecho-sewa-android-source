package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import androidx.core.app.ActivityCompat;
import androidx.core.content.PermissionChecker;
import com.argusoft.sewa.android.app.BuildConfig;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.restclient.impl.RestRequestImpl;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.j256.ormlite.dao.Dao;
import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class WelcomeActivity extends MenuActivity {
    private static final int MY_PERMISSIONS_REQUEST = 101;
    private static final int WELCOME_TIME_OUT = 3000;
    private MyAlertDialog dialogForExit;
    LocationMasterServiceImpl locationMasterService;
    Dao<LoginBean, Integer> loginBeanDao;
    RestRequestImpl restRequest;
    SewaFhsServiceImpl sewaFhsService;
    SewaServiceImpl sewaService;
    TechoServiceImpl techoService;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_welcome);
        SharedStructureData.welcomeContext = this;
        if (getSupportActionBar() != null) {
            getSupportActionBar().hide();
        }
        checkPermissions();
    }

    public void checkPermissions() {
        ArrayList arrayList = new ArrayList();
        String[] strArr = {"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.RECEIVE_BOOT_COMPLETED", "android.permission.RECORD_AUDIO", "android.permission.CALL_PHONE", "android.permission.READ_PHONE_STATE", "android.permission.VIBRATE", "android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
        HashMap map = new HashMap();
        for (int i = 0; i < 12; i++) {
            String str = strArr[i];
            map.put(str, Integer.valueOf(PermissionChecker.checkSelfPermission(getApplicationContext(), str)));
        }
        for (Map.Entry entry : map.entrySet()) {
            if (((Integer) entry.getValue()).intValue() != 0) {
                arrayList.add((String) entry.getKey());
            }
        }
        if (!arrayList.isEmpty()) {
            ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[0]), MY_PERMISSIONS_REQUEST);
        } else {
            init();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == MY_PERMISSIONS_REQUEST) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (iArr[i2] != 0) {
                    this.alertDialog = new MyAlertDialog(this, false, LabelConstants.ALLOW_ALL_PERMISSIONS_TO_RUN, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WelcomeActivity.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            WelcomeActivity.this.alertDialog.dismiss();
                            System.exit(0);
                        }
                    }, DynamicUtils.BUTTON_OK);
                    this.alertDialog.show();
                    return;
                }
            }
        }
        init();
    }

    private void init() {
        createDirectories();
        injectLoginBean();
    }

    private void createDirectories() {
        createDirIfNotExists(SewaConstants.DIR_IMAGE);
        createDirIfNotExists(SewaConstants.DIR_AUDIO);
        createDirIfNotExists(SewaConstants.DIR_VIDEO);
        createDirIfNotExists(SewaConstants.DIR_DATABASE);
        createDirIfNotExists(SewaConstants.DIR_DOWNLOADED);
        createDirIfNotExists(SewaConstants.DIR_APK_DOWNLOADED);
        createDirIfNotExists(SewaConstants.DIR_APK_DOWNLOADED_TEMP);
        createDirIfNotExists(SewaConstants.DIR_LIBRARY);
        createDirIfNotExists(SewaConstants.DIR_LIBRARY_TEMP);
        createDirIfNotExists(SewaConstants.DIR_BOOKMARK);
        createDirIfNotExists(SewaConstants.DIR_LMS);
        createDirIfNotExists(SewaConstants.DIR_LMS_TEMP);
    }

    private void createDirIfNotExists(String str) {
        File file = new File(str);
        if (!file.exists()) {
            if (!file.mkdirs()) {
                Log.w(getClass().getSimpleName(), file.getAbsolutePath() + " is not created!");
                return;
            }
            Log.i(getClass().getSimpleName(), file.getAbsolutePath() + " is created!");
            return;
        }
        Log.i(getClass().getSimpleName(), file.getAbsolutePath() + " is already created!");
    }

    private void injectLoginBean() {
        if (this.loginBeanDao != null) {
            Log.i(getClass().getSimpleName(), "TeCHO - Injecting Login Bean Dao");
            try {
                List<LoginBean> listQueryForAll = this.loginBeanDao.queryForAll();
                if (listQueryForAll != null && !listQueryForAll.isEmpty()) {
                    SewaTransformer.loginBean = listQueryForAll.get(0);
                    if (!SewaTransformer.loginBean.isTrainingUser()) {
                        WSConstants.setLiveContextUrl();
                    } else {
                        WSConstants.setTrainingContextUrl();
                    }
                }
                Log.i(getClass().getSimpleName(), "TeCHO - Login Bean Dao Is Injected");
            } catch (SQLException e) {
                Log.e(getClass().getSimpleName(), "TeCHO - Login Bean Dao Is not Injected, Exception Occurs", e);
            }
        } else {
            Log.w(getClass().getSimpleName(), "TeCHO - Login Bean Dao Is Not Injected, It Is Null");
        }
        setAdditionalData();
        hideProcessDialog();
        switchToLoginActivity();
    }

    public void showDBUpgradeProcessDialog() {
        if (this.processDialog == null || !this.processDialog.isShowing()) {
            this.processDialog = new MyProcessDialog(this, UtilBean.getMyLabel(LabelConstants.UPGRADING_DATABASES));
            this.processDialog.show();
        }
    }

    public void showDbDowngradeAlert() {
        if (this.processDialog != null && this.processDialog.isShowing()) {
            this.processDialog.dismiss();
        }
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, false, LabelConstants.DATABASE_DOWNGRADASION_IS_NOT_POSSIBLE, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WelcomeActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WelcomeActivity.this.dialogForExit.dismiss();
                Process.killProcess(Process.myPid());
                Runtime.getRuntime().exit(0);
            }
        }, DynamicUtils.BUTTON_OK);
        this.dialogForExit = myAlertDialog;
        myAlertDialog.show();
    }

    private void setAdditionalData() {
        SharedStructureData.telephonyManager = (TelephonyManager) getSystemService("phone");
        if (this.sewaService != null) {
            Log.i(getClass().getSimpleName(), "TeCHO - sewaService Is Injected");
            SharedStructureData.sewaService = this.sewaService;
            this.sewaService.initLabelBeanMap();
        } else {
            Log.w(getClass().getSimpleName(), "TeCHO - Sewa Service Is Not Injected");
        }
        TechoServiceImpl techoServiceImpl = this.techoService;
        if (techoServiceImpl != null) {
            SharedStructureData.techoService = techoServiceImpl;
        }
        SewaFhsServiceImpl sewaFhsServiceImpl = this.sewaFhsService;
        if (sewaFhsServiceImpl != null) {
            SharedStructureData.sewaFhsService = sewaFhsServiceImpl;
        }
        LocationMasterServiceImpl locationMasterServiceImpl = this.locationMasterService;
        if (locationMasterServiceImpl != null) {
            SharedStructureData.locationMasterService = locationMasterServiceImpl;
        }
        if (this.restRequest != null) {
            HashMap map = new HashMap();
            map.put("application-version", String.valueOf(BuildConfig.VERSION_CODE));
            if (SewaTransformer.loginBean != null) {
                map.put("userToken", SewaTransformer.loginBean.getUserToken());
            }
            this.restRequest.addFixedHeader(map);
            Log.i(getClass().getSimpleName(), "TeCHO - restRequest Fixed Headers Added");
            return;
        }
        Log.w(getClass().getSimpleName(), "TeCHO - restRequest Is Not Injected");
    }

    public void switchToLoginActivity() {
        new Handler().postDelayed(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WelcomeActivity.3
            @Override // java.lang.Runnable
            public void run() {
                WelcomeActivity.this.startActivity(new Intent(WelcomeActivity.this, (Class<?>) LoginActivity_.class));
                WelcomeActivity.this.finish();
            }
        }, 3000L);
    }
}
