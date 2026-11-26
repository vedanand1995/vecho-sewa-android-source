package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.comparator.MenuConstantComparator;
import com.argusoft.sewa.android.app.component.HomeMenuAdapter;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.component.OnMenuItemViewVClickListener;
import com.argusoft.sewa.android.app.component.listeners.MenuClickListener;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.MenuConstants;
import com.argusoft.sewa.android.app.core.impl.DailyPresenceReportServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LmsEventServiceImpl;
import com.argusoft.sewa.android.app.core.impl.MenuServiceImpl;
import com.argusoft.sewa.android.app.core.impl.MoveToProductionServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.DailyPresenceReport;
import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import com.argusoft.sewa.android.app.model.MenuBean;
import com.argusoft.sewa.android.app.restclient.impl.ApiManager;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class GenericHomeScreenActivity extends HomeScreenMenuActivity implements OnMenuItemViewVClickListener {
    public static Timer choAttendanceTimer;
    ApiManager apiManager;
    private Handler backgroundHandler;
    Dao<DailyPresenceReport, Integer> dailyPresenceReportBeanDao;
    DailyPresenceReportServiceImpl dailyPresenceReportService;
    HomeMenuAdapter homeMenuAdapter;
    LmsEventServiceImpl lmsEventService;
    MenuServiceImpl menuService;
    MoveToProductionServiceImpl moveToProdService;
    SewaServiceImpl sewaService;
    private Handler uIHandler;
    public int markPresenceIconIndex = -1;
    private List<MenuBean> orderList = new ArrayList();

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedStructureData.relatedPropertyHashTable.clear();
        this.context = this;
        this.uIHandler = new Handler(Looper.getMainLooper());
        HandlerThread handlerThread = new HandlerThread("HandlerThread");
        handlerThread.start();
        this.backgroundHandler = new Handler(handlerThread.getLooper());
        init();
    }

    private void init() {
        setContentView(R.layout.activity_generic_home_screen);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setActionBarDesign();
        setNavigationView();
        menuDetails();
    }

    private int[] integerListToIntArray(LinkedList<Integer> linkedList) {
        int[] iArr = new int[linkedList.size()];
        Iterator<Integer> it = linkedList.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next().intValue();
            i++;
        }
        return iArr;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(GlobalTypes.MSG_CANCEL_APPLICATION), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.logoutAlertDialogClick(view);
            }
        }, DynamicUtils.BUTTON_HIDE_LOGOUT);
        this.alertDialog.show();
    }

    private boolean checkMenuAccessibleToUser(View view, String str) {
        String formCodeFromMenuConstant = MenuConstants.getFormCodeFromMenuConstant(str);
        System.out.println("formcode =" + formCodeFromMenuConstant);
        if (formCodeFromMenuConstant == null) {
            return true;
        }
        FormAccessibilityBean formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType = this.moveToProductionService.retrieveFormAccessibilityBeanByFormType(formCodeFromMenuConstant);
        if (Boolean.TRUE.equals(Boolean.valueOf(SewaTransformer.loginBean.isTrainingUser()))) {
            return checkIfFormIsAccessibleInTraining(formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType, view, str);
        }
        return checkIfFormIsAccessibleInProduction(formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType, view, str);
    }

    private boolean checkIfFormIsAccessibleInProduction(FormAccessibilityBean formAccessibilityBean, View view, String str) {
        if (formAccessibilityBean == null) {
            showAlertDialogForFormNotAccessible(view, str);
            return false;
        }
        if (!Boolean.TRUE.equals(formAccessibilityBean.getTrainingReq())) {
            return true;
        }
        if (formAccessibilityBean.getState() != null && formAccessibilityBean.getState().equals(GlobalTypes.MOVE_TO_PRODUCTION)) {
            return true;
        }
        showAlertDialogForFormNotAccessible(view, str);
        return false;
    }

    private boolean checkIfFormIsAccessibleInTraining(FormAccessibilityBean formAccessibilityBean, View view, String str) {
        if (formAccessibilityBean != null && Boolean.TRUE.equals(formAccessibilityBean.getTrainingReq()) && formAccessibilityBean.getState() != null && formAccessibilityBean.getState().equals(GlobalTypes.MOVE_TO_PRODUCTION_RESPONSE_PENDING)) {
            startActivity(new Intent(this.context, (Class<?>) MoveToProductionActivity_.class));
            return false;
        }
        if (formAccessibilityBean == null || !Boolean.TRUE.equals(formAccessibilityBean.getTrainingReq()) || formAccessibilityBean.getState() == null || !formAccessibilityBean.getState().equals(GlobalTypes.MOVE_TO_PRODUCTION)) {
            return true;
        }
        showAlertDialogForFormNotAccessible(view, str);
        return false;
    }

    public void showAlertDialogForFormNotAccessible(View view, String str) {
        String str2;
        String myLabel;
        String myLabel2;
        this.processDialog.dismiss();
        String myLabel3 = UtilBean.getMyLabel(LabelConstants.GO_TO_TRAINING_MODE);
        String myLabel4 = UtilBean.getMyLabel("Cancel");
        if (!Boolean.TRUE.equals(Boolean.valueOf(SewaTransformer.loginBean.isTrainingUser()))) {
            str2 = myLabel3;
            myLabel = LabelConstants.TRAINING_REQUIRED_AND_PRACTICE;
            myLabel2 = myLabel4;
        } else {
            myLabel = UtilBean.getMyLabel(LabelConstants.PRACTICE_COMPLETED);
            String myLabel5 = UtilBean.getMyLabel(LabelConstants.EXIT_TRAINING_MODE);
            myLabel2 = UtilBean.getMyLabel("Cancel");
            str2 = myLabel5;
        }
        this.alertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(myLabel), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m189x53d77528(view2);
            }
        }, DynamicUtils.BUTTON_YES_NO, str2, myLabel2, true);
        this.alertDialog.show();
    }

    /* renamed from: lambda$showAlertDialogForFormNotAccessible$0$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity, reason: not valid java name */
    /* synthetic */ void m189x53d77528(View view) {
        this.alertDialog.dismiss();
        if (view.getId() == -1) {
            if (Boolean.TRUE.equals(Boolean.valueOf(SewaTransformer.loginBean.isTrainingUser()))) {
                loginIntoProduction();
            } else {
                loginIntoTraining();
            }
        }
    }

    public void showTrainingCompletedForm() {
        List<FormAccessibilityBean> listIsAnyFormTrainingCompleted = this.moveToProdService.isAnyFormTrainingCompleted();
        if (listIsAnyFormTrainingCompleted == null || listIsAnyFormTrainingCompleted.isEmpty()) {
            return;
        }
        startActivity(new Intent(this.context, (Class<?>) MoveToProductionActivity_.class));
    }

    @Override // com.argusoft.sewa.android.app.component.OnMenuItemViewVClickListener
    public void onItemClickListener(final int i, final View view) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m188x281e3ff(i, view);
            }
        }).start();
    }

    /* renamed from: lambda$onItemClickListener$2$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity, reason: not valid java name */
    /* synthetic */ void m188x281e3ff(int i, final View view) {
        final MenuBean menuBean = this.orderList.get(i);
        if (checkMenuAccessibleToUser(view, menuBean.getConstant())) {
            if (MenuConstants.MARK_PRESENCE_AT_HWC.equals(menuBean.getConstant())) {
                checkNetworkAvailability();
                return;
            } else {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m187x98525be0(menuBean, view);
                    }
                });
                return;
            }
        }
        this.processDialog.dismiss();
    }

    /* renamed from: lambda$onItemClickListener$1$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity, reason: not valid java name */
    /* synthetic */ void m187x98525be0(MenuBean menuBean, View view) {
        new MenuClickListener(this.context, menuBean.getConstant()).onClick(view);
        this.processDialog.dismiss();
    }

    private void loginIntoProduction() {
        if (!this.sewaService.isOnline()) {
            SewaUtil.generateToast(this.context, LabelConstants.NO_INTERNET_CONNECTION_AVAILABLE);
            return;
        }
        if (this.processDialog != null && this.processDialog.isShowing()) {
            this.processDialog.dismiss();
        }
        this.processDialog = new MyProcessDialog(this.context, LabelConstants.PLEASE_WAIT_WHILE_LOADING_PRODUCTION);
        this.processDialog.show();
        this.backgroundHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m182xf1c27844();
            }
        });
    }

    /* renamed from: lambda$loginIntoProduction$5$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity, reason: not valid java name */
    /* synthetic */ void m182xf1c27844() {
        try {
            this.sewaService.updateAnswerBeanTokensAndUserIdsOnce();
            this.sewaService.uploadDataToServer();
            this.lmsEventService.uploadLmsEventToServer();
            this.sewaService.uploadUncaughtExceptionDetailToServer();
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getMessage());
            this.sewaService.storeException(e, "DATA_SYNC");
        }
        WSConstants.setLiveContextUrl();
        this.apiManager.createApiService();
        String username = SewaTransformer.loginBean.getUsername();
        if (username.endsWith("_t")) {
            username = username.substring(0, username.length() - 2);
        }
        final String strValidateUser = this.sewaService.validateUser(username, SewaTransformer.loginBean.getPasswordPlain(), 1, false);
        this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m180x1d636806(strValidateUser);
            }
        });
        if (strValidateUser.equalsIgnoreCase(SewaConstants.LOGIN_SUCCESS_WEB) || strValidateUser.contains(GlobalTypes.MOBILE_DATE_NOT_SAME_SERVER)) {
            SewaUtil.CURRENT_THEME = R.style.techo_app;
            this.sewaService.doAfterSuccessfulLogin(true);
        } else {
            WSConstants.setTrainingContextUrl();
            this.apiManager.createApiService();
        }
        this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m181x8792f025();
            }
        });
    }

    /* renamed from: lambda$loginIntoProduction$3$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity, reason: not valid java name */
    /* synthetic */ void m180x1d636806(String str) {
        SewaUtil.generateToast(this.context, str);
    }

    /* renamed from: lambda$loginIntoProduction$4$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity, reason: not valid java name */
    /* synthetic */ void m181x8792f025() {
        if (this.processDialog != null && this.processDialog.isShowing()) {
            this.processDialog.dismiss();
        }
        Intent intent = new Intent(this.context, (Class<?>) GenericHomeScreenActivity_.class);
        intent.setFlags(335544320);
        this.context.startActivity(intent);
        ((Activity) this.context).finish();
    }

    private void loginIntoTraining() {
        if (!this.sewaService.isOnline()) {
            SewaUtil.generateToast(this.context, LabelConstants.NO_INTERNET_CONNECTION_AVAILABLE);
            return;
        }
        if (this.processDialog != null && this.processDialog.isShowing()) {
            this.processDialog.dismiss();
        }
        this.processDialog = new MyProcessDialog(this.context, LabelConstants.PLEASE_WAIT_WHILE_LOADING_PRACTICE);
        this.processDialog.show();
        this.backgroundHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m185x10e315e0();
            }
        });
    }

    /* renamed from: lambda$loginIntoTraining$8$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity, reason: not valid java name */
    /* synthetic */ void m185x10e315e0() {
        try {
            this.sewaService.updateAnswerBeanTokensAndUserIdsOnce();
            this.sewaService.uploadDataToServer();
            this.lmsEventService.uploadLmsEventToServer();
            this.sewaService.uploadUncaughtExceptionDetailToServer();
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getMessage());
            this.sewaService.storeException(e, "DATA_SYNC");
        }
        WSConstants.setTrainingContextUrl();
        this.apiManager.createApiService();
        final String strValidateUser = this.sewaService.validateUser(SewaTransformer.loginBean.getUsername() + "_t", SewaTransformer.loginBean.getPasswordPlain(), 2, false);
        this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m183x3c8405a2(strValidateUser);
            }
        });
        if (strValidateUser.equalsIgnoreCase(SewaConstants.LOGIN_SUCCESS_WEB) || strValidateUser.contains(GlobalTypes.MOBILE_DATE_NOT_SAME_SERVER)) {
            SewaUtil.CURRENT_THEME = R.style.techo_training_app;
            this.sewaService.doAfterSuccessfulLogin(true);
        } else {
            WSConstants.setLiveContextUrl();
            this.apiManager.createApiService();
        }
        this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m184xa6b38dc1();
            }
        });
    }

    /* renamed from: lambda$loginIntoTraining$6$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity, reason: not valid java name */
    /* synthetic */ void m183x3c8405a2(String str) {
        SewaUtil.generateToast(this.context, str);
    }

    /* renamed from: lambda$loginIntoTraining$7$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity, reason: not valid java name */
    /* synthetic */ void m184xa6b38dc1() {
        List<FormAccessibilityBean> listIsAnyFormTrainingCompleted;
        if (this.processDialog != null && this.processDialog.isShowing()) {
            this.processDialog.dismiss();
        }
        if (Boolean.TRUE.equals(Boolean.valueOf(SewaTransformer.loginBean.isTrainingUser())) && (listIsAnyFormTrainingCompleted = this.moveToProductionService.isAnyFormTrainingCompleted()) != null && !listIsAnyFormTrainingCompleted.isEmpty()) {
            this.context.startActivity(new Intent(this, (Class<?>) MoveToProductionActivity_.class));
            ((Activity) this.context).finish();
        } else {
            Intent intent = new Intent(this.context, (Class<?>) GenericHomeScreenActivity_.class);
            intent.setFlags(335544320);
            this.context.startActivity(intent);
            ((Activity) this.context).finish();
        }
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity, android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.menu_home).setVisible(false);
        menu.findItem(R.id.menu_refresh).setVisible(true);
        menu.findItem(R.id.menu_about).setVisible(true);
        super.onPrepareOptionsMenu(menu);
        return true;
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.menu_refresh) {
            checkIsMobileTimeSyncedProperly();
            this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
            this.processDialog.show();
            doUpdate(false, new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.menuDetails();
                }
            });
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void menuDetails() {
        GridLayoutManager gridLayoutManager;
        List<MenuBean> listRetrieveMenus = this.menuService.retrieveMenus();
        this.orderList = listRetrieveMenus;
        Log.e("menu", listRetrieveMenus.toString());
        Collections.sort(this.orderList, new MenuConstantComparator());
        LinkedList<Integer> linkedList = new LinkedList<>();
        LinkedList linkedList2 = new LinkedList();
        LinkedList linkedList3 = new LinkedList();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (MenuBean menuBean : this.orderList) {
            Integer menuIcons = MenuConstants.getMenuIcons(menuBean.getConstant());
            if (MenuConstants.MARK_PRESENCE_AT_HWC.equals(menuBean.getConstant())) {
                this.markPresenceIconIndex = i;
            }
            if (menuIcons == null) {
                arrayList.add(menuBean);
            } else {
                linkedList.add(menuIcons);
                linkedList2.add(menuBean.getDisplayName());
                linkedList3.add(menuBean.getConstant());
                i++;
            }
        }
        this.orderList.removeAll(arrayList);
        if (this.orderList.isEmpty()) {
            showAlert(LabelConstants.NO_FEATURE_FOUND, GlobalTypes.MSG_NO_MENU, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m186x1aed853f(view);
                }
            }, DynamicUtils.BUTTON_OK);
        }
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_home_screen_icons);
        this.homeMenuAdapter = new HomeMenuAdapter(this.context, integerListToIntArray(linkedList), (String[]) linkedList2.toArray(new String[0]), (String[]) linkedList3.toArray(new String[0]), true, this.techoService.isNewNotification(), this.lmsService.isAnyUpdatedDataAvailable(), new OnMenuItemViewVClickListener() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity$$ExternalSyntheticLambda6
            @Override // com.argusoft.sewa.android.app.component.OnMenuItemViewVClickListener
            public final void onItemClickListener(int i2, View view) {
                this.f$0.onItemClickListener(i2, view);
            }
        });
        if (getResources().getConfiguration().orientation == 2) {
            gridLayoutManager = new GridLayoutManager(this.context, 6);
        } else {
            gridLayoutManager = new GridLayoutManager(this.context, 3);
        }
        recyclerView.setLayoutManager(gridLayoutManager);
        recyclerView.setAdapter(this.homeMenuAdapter);
        hideProcessDialog();
        if (this.markPresenceIconIndex != -1) {
            checkLastActivity();
        }
    }

    /* renamed from: lambda$menuDetails$9$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity, reason: not valid java name */
    /* synthetic */ void m186x1aed853f(View view) {
        this.alertDialog.dismiss();
    }

    private void checkLastActivity() {
        try {
            this.dailyPresenceReportService.removePreviousReport();
            List<DailyPresenceReport> listQueryForAll = this.dailyPresenceReportBeanDao.queryForAll();
            if (listQueryForAll != null && !listQueryForAll.isEmpty() && listQueryForAll.get(0).getEndTime() == null) {
                SharedStructureData.CHO_ATTENDANCE_IS_MARKED_PRESENCE = true;
                setVisit();
                setTimer();
            } else {
                if (SharedStructureData.choAttendanceTimer != null) {
                    SharedStructureData.choAttendanceTimer.cancel();
                }
                SharedStructureData.CHO_ATTENDANCE_IS_MARKED_PRESENCE = false;
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    public void checkNetworkAvailability() {
        if (!this.sewaService.isOnline()) {
            hideProcessDialog();
            this.alertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GenericHomeScreenActivity.this.alertDialog.dismiss();
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
            this.alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity.2
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    GenericHomeScreenActivity.this.alertDialog.dismiss();
                }
            });
            return;
        }
        checkGps();
    }

    public void checkGps() {
        if (!SharedStructureData.gps.isLocationProviderEnabled()) {
            SharedStructureData.gps.showSettingsAlert(this.context);
        } else {
            setVisit();
        }
    }

    public void setVisit() {
        if (Boolean.FALSE.equals(Boolean.valueOf(SharedStructureData.CHO_ATTENDANCE_IS_MARKED_PRESENCE))) {
            if (this.dailyPresenceReportService.createReport().equals(Boolean.TRUE)) {
                SharedStructureData.CHO_ATTENDANCE_IS_MARKED_PRESENCE = true;
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        GenericHomeScreenActivity.this.homeMenuAdapter.setIconAtPosition(R.drawable.menu_present, GenericHomeScreenActivity.this.markPresenceIconIndex);
                        GenericHomeScreenActivity.this.homeMenuAdapter.setLabelAtPosition("Mark Absent", GenericHomeScreenActivity.this.markPresenceIconIndex);
                        GenericHomeScreenActivity.this.homeMenuAdapter.notifyDataSetChanged();
                        GenericHomeScreenActivity.this.setTimer();
                    }
                });
            }
        } else if (this.dailyPresenceReportService.closeReport().equals(Boolean.TRUE)) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    SharedStructureData.choAttendanceTimer.cancel();
                    GenericHomeScreenActivity.this.homeMenuAdapter.setIconAtPosition(R.drawable.menu_absent, GenericHomeScreenActivity.this.markPresenceIconIndex);
                    GenericHomeScreenActivity.this.homeMenuAdapter.setLabelAtPosition("Mark Present", GenericHomeScreenActivity.this.markPresenceIconIndex);
                    GenericHomeScreenActivity.this.homeMenuAdapter.notifyDataSetChanged();
                }
            });
        }
        hideProcessDialog();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 111) {
            checkGps();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimer() {
        if (choAttendanceTimer == null) {
            SharedStructureData.choAttendanceTimer = new Timer();
            SharedStructureData.choAttendanceTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.GenericHomeScreenActivity.5
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    GenericHomeScreenActivity.this.dailyPresenceReportService.addLocations();
                }
            }, 0L, UtilBean.HOUR_LONG_VALUE);
        }
    }
}
