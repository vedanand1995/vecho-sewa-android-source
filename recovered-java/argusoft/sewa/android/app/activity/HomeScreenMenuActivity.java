package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyMenuAdapter;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.MoveToProductionServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.support.SupportLabels;
import com.argusoft.sewa.android.app.support.SupportStore_;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.BackgroundDownloadUtils;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.textview.MaterialTextView;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.table.TableUtils;
import java.io.File;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class HomeScreenMenuActivity extends AppCompatActivity {
    MyMenuAdapter adapter;
    MyAlertDialog alertDialog;
    LmsServiceImpl lmsService;
    Dao<LoginBean, Integer> loginBeanDao;
    MoveToProductionServiceImpl moveToProductionService;
    MyProcessDialog processDialog;
    SewaServiceRestClientImpl restClient;
    SewaServiceRestClientImpl sewaServiceRestClient;
    TechoServiceImpl techoService;
    Dao<VersionBean, Integer> versionDao;
    Context context = this;
    boolean alertDialogShown = false;
    private boolean isSyncing = false;

    static /* synthetic */ void lambda$getLanguageMenuClickListener$2(DialogInterface dialogInterface, int i) {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(SewaUtil.CURRENT_THEME);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.menu_home).setVisible(false);
        menu.findItem(R.id.menu_refresh).setVisible(true);
        menu.findItem(R.id.menu_about).setVisible(true);
        super.onPrepareOptionsMenu(menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            DrawerLayout drawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
            if (drawerLayout.isDrawerOpen(GravityCompat.START)) {
                drawerLayout.closeDrawer(GravityCompat.START);
            } else {
                drawerLayout.openDrawer(GravityCompat.START);
            }
            return true;
        }
        if (menuItem.getItemId() == R.id.menu_refresh) {
            if (!this.isSyncing) {
                this.isSyncing = true;
                checkIsMobileTimeSyncedProperly();
                MyProcessDialog myProcessDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
                this.processDialog = myProcessDialog;
                myProcessDialog.show();
                doUpdate(false, null);
            }
            return true;
        }
        if (menuItem.getItemId() == R.id.menu_about) {
            startActivity(new Intent(this, (Class<?>) AboutActivity_.class));
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void checkIsMobileTimeSyncedProperly() {
        try {
            final String strCheckIsMobileTimeSyncedProperly = this.restClient.checkIsMobileTimeSyncedProperly(Long.valueOf(new Date().getTime()));
            if (strCheckIsMobileTimeSyncedProperly != null) {
                if (!this.alertDialogShown) {
                    this.alertDialogShown = true;
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity.1
                        @Override // java.lang.Runnable
                        public void run() {
                            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity.1.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    HomeScreenMenuActivity.this.alertDialogShown = false;
                                    HomeScreenMenuActivity.this.alertDialog.dismiss();
                                }
                            };
                            HomeScreenMenuActivity.this.alertDialog = new MyAlertDialog(HomeScreenMenuActivity.this.context, UtilBean.getMyLabel(strCheckIsMobileTimeSyncedProperly), onClickListener, DynamicUtils.BUTTON_OK);
                            HomeScreenMenuActivity.this.alertDialog.show();
                        }
                    });
                }
            } else {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (HomeScreenMenuActivity.this.processDialog != null && HomeScreenMenuActivity.this.processDialog.isShowing()) {
                            try {
                                HomeScreenMenuActivity.this.processDialog.dismiss();
                            } catch (IllegalArgumentException e) {
                                e.printStackTrace();
                            }
                        }
                        HomeScreenMenuActivity.this.processDialog = new MyProcessDialog(HomeScreenMenuActivity.this.context, GlobalTypes.PLEASE_WAIT);
                        HomeScreenMenuActivity.this.processDialog.show();
                        HomeScreenMenuActivity.this.doUpdate(false, null);
                        if (SewaUtil.isUserInTraining) {
                            HomeScreenMenuActivity.this.showTrainingCompletedForm();
                        }
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTrainingCompletedForm() {
        List<FormAccessibilityBean> listIsAnyFormTrainingCompleted = this.moveToProductionService.isAnyFormTrainingCompleted();
        if (listIsAnyFormTrainingCompleted == null || listIsAnyFormTrainingCompleted.isEmpty()) {
            return;
        }
        startActivity(new Intent(this, (Class<?>) MoveToProductionActivity_.class));
    }

    public void checkIfFormIsAccessibleToUser(String str) {
        FormAccessibilityBean formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType = this.moveToProductionService.retrieveFormAccessibilityBeanByFormType(str);
        final View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeScreenMenuActivity.this.alertDialogShown = false;
                HomeScreenMenuActivity.this.alertDialog.dismiss();
            }
        };
        if (SewaUtil.isUserInTraining) {
            return;
        }
        if (formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType != null) {
            if (formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType.getTrainingReq() != null && formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType.getTrainingReq().booleanValue()) {
                if (formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType.getState() == null || !formAccessibilityBeanRetrieveFormAccessibilityBeanByFormType.getState().equals(GlobalTypes.MOVE_TO_PRODUCTION)) {
                    if (this.alertDialogShown) {
                        return;
                    }
                    this.alertDialogShown = true;
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity.4
                        @Override // java.lang.Runnable
                        public void run() {
                            HomeScreenMenuActivity.this.alertDialog = new MyAlertDialog(HomeScreenMenuActivity.this.context, UtilBean.getMyLabel(LabelConstants.TRAINING_REQUIRED_TO_ACCESS_FORM_ALERT), onClickListener, DynamicUtils.BUTTON_OK);
                            HomeScreenMenuActivity.this.alertDialog.show();
                        }
                    });
                    return;
                }
                this.alertDialogShown = false;
                return;
            }
            this.alertDialogShown = false;
            return;
        }
        if (this.alertDialogShown) {
            return;
        }
        this.alertDialogShown = true;
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity.5
            @Override // java.lang.Runnable
            public void run() {
                HomeScreenMenuActivity.this.alertDialog = new MyAlertDialog(HomeScreenMenuActivity.this.context, UtilBean.getMyLabel(LabelConstants.TRAINING_REQUIRED_TO_ACCESS_FORM_ALERT), onClickListener, DynamicUtils.BUTTON_OK);
                HomeScreenMenuActivity.this.alertDialog.show();
            }
        });
    }

    public void showProcessDialog() {
        DrawerLayout drawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawerLayout.isDrawerOpen(GravityCompat.START)) {
            drawerLayout.closeDrawer(GravityCompat.START);
        }
        MyProcessDialog myProcessDialog = this.processDialog;
        if (myProcessDialog == null || !myProcessDialog.isShowing()) {
            MyProcessDialog myProcessDialog2 = new MyProcessDialog(this.context, UtilBean.getMyLabel(LabelConstants.PROCESSING));
            this.processDialog = myProcessDialog2;
            myProcessDialog2.show();
        }
    }

    public void showYearEndSummaryAlert(Context context, String str) {
        if (!(context instanceof Activity)) {
            Log.e("YearEndAlert", "Cannot show dialog. Context is not an Activity instance.");
        } else {
            ((Activity) context).runOnUiThread(new AnonymousClass6(str, context));
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$6, reason: invalid class name */
    class AnonymousClass6 implements Runnable {
        final /* synthetic */ Context val$context;
        final /* synthetic */ String val$userId;

        AnonymousClass6(String str, Context context) {
            this.val$userId = str;
            this.val$context = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            final String strReplace = LabelConstants.YEAR_END_SUMMARY_URL.replace("#userId#", this.val$userId);
            View viewInflate = LayoutInflater.from(this.val$context).inflate(R.layout.dialog_year_end_summary, (ViewGroup) null);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.val$context);
            builder.setView(viewInflate);
            builder.setCancelable(true);
            final AlertDialog alertDialogCreate = builder.create();
            if (alertDialogCreate.getWindow() != null) {
                alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            }
            Button button = (Button) viewInflate.findViewById(R.id.btnViewSummary);
            Button button2 = (Button) viewInflate.findViewById(R.id.btnNotNow);
            ((TextView) viewInflate.findViewById(R.id.tvSummaryHeadline)).setText(UtilBean.getMyLabel("Your Year-End Summary is Here!"));
            ((TextView) viewInflate.findViewById(R.id.tvSummaryBody)).setText(UtilBean.getMyLabel("Thank you for your incredible dedication this year. We’ve prepared a special summary highlighting your impact. Tap below to view it in your browser."));
            button.setText(UtilBean.getMyLabel("VIEW MY SUMMARY"));
            final Context context = this.val$context;
            button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$6$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HomeScreenMenuActivity.AnonymousClass6.lambda$run$0(strReplace, context, alertDialogCreate, view);
                }
            });
            button2.setText(UtilBean.getMyLabel("Not Now"));
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$6$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    alertDialogCreate.dismiss();
                }
            });
            if (((Activity) this.val$context).isFinishing()) {
                return;
            }
            alertDialogCreate.show();
        }

        static /* synthetic */ void lambda$run$0(String str, Context context, AlertDialog alertDialog, View view) {
            try {
                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } catch (ActivityNotFoundException unused) {
                Toast.makeText(context, "No browser found to open the summary.", 0).show();
            }
            alertDialog.dismiss();
        }
    }

    public void showYearEndSummaryAlert(boolean z) {
        if (isShowYearEndSummaryFeatureAvailable() && z && SharedStructureData.numberOfTimesLoggedIn.intValue() < 4) {
            showYearEndSummaryAlert(this.context, String.valueOf(SewaTransformer.loginBean.getUserID()));
        }
    }

    public boolean isShowYearEndSummaryFeatureAvailable() {
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

    void setCardView(Context context, String[] strArr, int[] iArr, AdapterView.OnItemClickListener onItemClickListener) {
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.homescreen_icons);
        this.adapter = new MyMenuAdapter(context, iArr, strArr, true, this.lmsService.isAnyUpdatedDataAvailable());
        GridView gridView = new GridView(context);
        if (getResources().getConfiguration().orientation == 2) {
            gridView.setNumColumns(6);
        } else {
            gridView.setNumColumns(3);
        }
        gridView.setVerticalScrollBarEnabled(false);
        gridView.setGravity(16);
        gridView.setAdapter((ListAdapter) this.adapter);
        gridView.setOnItemClickListener(onItemClickListener);
        linearLayout.addView(gridView);
    }

    public void logoutAlertDialogClick(View view) {
        if (view.getId() == -1) {
            if (SewaTransformer.loginBean != null) {
                try {
                    SewaTransformer.loginBean.setLoggedIn(false);
                    SewaTransformer.loginBean.setHidden(false);
                    this.loginBeanDao.update((Dao<LoginBean, Integer>) SewaTransformer.loginBean);
                } catch (SQLException e) {
                    Logger.getLogger(HomeScreenActivityFHW.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                }
                this.alertDialog.dismiss();
            }
            this.context.startActivity(new Intent(this.context, (Class<?>) LoginActivity_.class));
            finish();
            return;
        }
        if (view.getId() == -2) {
            try {
                SewaTransformer.loginBean.setLoggedIn(true);
                SewaTransformer.loginBean.setHidden(true);
                this.loginBeanDao.update((Dao<LoginBean, Integer>) SewaTransformer.loginBean);
            } catch (SQLException e2) {
                Logger.getLogger(HomeScreenActivityFHW.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            this.alertDialog.dismiss();
            finish();
        }
    }

    protected void setActionBarDesign() {
        MaterialTextView materialTextView = (MaterialTextView) findViewById(R.id.toolbar_title);
        MaterialTextView materialTextView2 = (MaterialTextView) findViewById(R.id.toolbar_subtitle);
        materialTextView.setText(LabelConstants.DASHBOARD);
        materialTextView.setTextAppearance(this.context, R.style.ToolbarTitle);
        materialTextView2.setVisibility(8);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowCustomEnabled(false);
            supportActionBar.setDisplayShowTitleEnabled(false);
            supportActionBar.setHomeAsUpIndicator(R.drawable.menu);
        }
    }

    protected void setNavigationView() {
        LinearLayout linearLayout = (LinearLayout) ((NavigationView) findViewById(R.id.nav_view)).getHeaderView(0);
        if (SewaTransformer.loginBean != null) {
            ((MaterialTextView) linearLayout.getChildAt(1)).setText(SewaTransformer.loginBean.getFirstName());
            ((MaterialTextView) linearLayout.getChildAt(2)).setText(SewaTransformer.loginBean.getUserRole());
            MaterialTextView materialTextView = (MaterialTextView) linearLayout.getChildAt(3);
            materialTextView.setText(UtilBean.getMyLabel(LabelConstants.CHOOSE_LANGUAGE));
            materialTextView.setOnClickListener(getLanguageMenuClickListener());
        }
        MaterialTextView materialTextView2 = (MaterialTextView) linearLayout.findViewById(R.id.nav_get_help);
        if (materialTextView2 != null) {
            materialTextView2.setText(SupportLabels.get(SupportLabels.GET_HELP));
            materialTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m228xe28ba4da(view);
                }
            });
        }
        ((LinearLayout) findViewById(R.id.nav_footer)).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeScreenMenuActivity.this.startLoginActivity();
            }
        });
    }

    /* renamed from: lambda$setNavigationView$0$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity, reason: not valid java name */
    /* synthetic */ void m228xe28ba4da(View view) {
        DrawerLayout drawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawerLayout != null) {
            drawerLayout.closeDrawer(GravityCompat.START);
        }
        startActivity(new Intent(this, (Class<?>) GetHelpActivity_.class));
    }

    private View.OnClickListener getLanguageMenuClickListener() {
        final int[] iArr = {-1};
        return new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m226x73a112b(iArr, view);
            }
        };
    }

    /* renamed from: lambda$getLanguageMenuClickListener$3$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity, reason: not valid java name */
    /* synthetic */ void m226x73a112b(final int[] iArr, View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setIcon(R.drawable.ic_language);
        builder.setTitle("Choose a language");
        String[] strArr = {UtilBean.getMyLabel(LabelConstants.ENGLISH), UtilBean.getMyLabel(LabelConstants.GUJARATI)};
        if (SewaTransformer.loginBean.getLanguageCode().equals("EN")) {
            iArr[0] = 0;
        } else {
            iArr[0] = 1;
        }
        builder.setSingleChoiceItems(strArr, iArr[0], new DialogInterface.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m225x201b08a9(iArr, dialogInterface, i);
            }
        });
        builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                HomeScreenMenuActivity.lambda$getLanguageMenuClickListener$2(dialogInterface, i);
            }
        });
        builder.create().show();
    }

    /* renamed from: lambda$getLanguageMenuClickListener$1$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity, reason: not valid java name */
    /* synthetic */ void m225x201b08a9(int[] iArr, DialogInterface dialogInterface, int i) {
        iArr[0] = i;
        dialogInterface.dismiss();
        if (i == 0) {
            if (SewaTransformer.loginBean.getLanguageCode().equals("EN")) {
                return;
            }
            showProcessDialog();
            networkCallsForLanguageChange("EN");
            return;
        }
        if (SewaTransformer.loginBean.getLanguageCode().equals("GU")) {
            return;
        }
        showProcessDialog();
        networkCallsForLanguageChange("GU");
    }

    public void networkCallsForLanguageChange(String str) {
        try {
            if (SharedStructureData.sewaService.isOnline()) {
                this.restClient.updateLanguagePreference(str);
            } else {
                showAlert(LabelConstants.NETWORK, LabelConstants.INTERNET_CONNECTION_REQUIRED_FOR_LANGUAGE_CHANGE, null, DynamicUtils.BUTTON_OK);
            }
            if (SharedStructureData.sewaService.isOnline()) {
                try {
                    SewaTransformer.loginBean.setLanguageCode(str);
                    this.loginBeanDao.update((Dao<LoginBean, Integer>) SewaTransformer.loginBean);
                    TableUtils.clearTable(this.loginBeanDao.getConnectionSource(), LabelBean.class);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                doUpdate(true, null);
            }
        } catch (RestHttpException e2) {
            e2.printStackTrace();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m227xae45b64d();
                }
            });
            hideProcessDialog();
        }
    }

    /* renamed from: lambda$networkCallsForLanguageChange$4$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity, reason: not valid java name */
    /* synthetic */ void m227xae45b64d() {
        SewaUtil.generateToast(this.context, "Some error occurred, Please try again after sometime");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoginActivity() {
        if (SewaTransformer.loginBean != null) {
            try {
                SewaTransformer.loginBean.setLoggedIn(false);
                SewaTransformer.loginBean.setHidden(false);
                this.loginBeanDao.update((Dao<LoginBean, Integer>) SewaTransformer.loginBean);
            } catch (SQLException e) {
                Log.e(getClass().getName(), null, e);
            }
        }
        startActivity(new Intent(this.context, (Class<?>) LoginActivity_.class));
        finish();
    }

    private void syncGetHelp() {
        try {
            SupportStore_.getInstance_(this).sync(this, SewaTransformer.loginBean == null ? null : SewaTransformer.loginBean.getUserID());
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), "Get Help sync failed", e);
        }
    }

    public void doUpdate(Boolean bool, Runnable runnable) {
        if (SharedStructureData.sewaService != null && SharedStructureData.sewaService.isOnline()) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m221xd6b4f752();
                }
            });
            try {
                try {
                    SharedStructureData.sewaService.revalidateUserTokenForUser();
                    SharedStructureData.sewaService.doAfterSuccessfulLogin(false);
                    hideProcessDialog();
                    SharedStructureData.sewaService.uploadAllMediaToServer();
                    syncGetHelp();
                } catch (Exception e) {
                    SharedStructureData.NETWORK_MESSAGE = SewaConstants.NETWORK_NOT_PROPER;
                    Log.e(getClass().getName(), "Exception", e);
                }
                hideProcessDialog();
                if (!SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.NETWORK_AVAILABLE)) {
                    if (SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.SQL_EXCEPTION)) {
                        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$$ExternalSyntheticLambda6
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m223xbdd3ffd4();
                            }
                        });
                    } else {
                        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$$ExternalSyntheticLambda7
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m224xb1638415();
                            }
                        });
                    }
                } else {
                    VersionBean versionBean = new VersionBean();
                    versionBean.setKey(SewaConstants.TIME_STAMP_LAST_REFRESH);
                    VersionBean sheetStatusByFiletr = SharedStructureData.sewaService.getSheetStatusByFiletr(versionBean);
                    if (sheetStatusByFiletr == null) {
                        sheetStatusByFiletr = new VersionBean();
                        sheetStatusByFiletr.setKey(SewaConstants.TIME_STAMP_LAST_REFRESH);
                    }
                    sheetStatusByFiletr.setValue(Calendar.getInstance().getTimeInMillis() + "");
                    SharedStructureData.sewaService.updateVersionBean(sheetStatusByFiletr);
                }
                onCheckUpdateComplete();
                this.isSyncing = false;
                if (Boolean.TRUE.equals(bool)) {
                    finish();
                    startActivity(getIntent());
                }
            } catch (Throwable th) {
                hideProcessDialog();
                throw th;
            }
        } else {
            showAlert(LabelConstants.NETWORK, LabelConstants.INTERNET_CONNECTION_REQUIRED_TO_REFRESH, null, DynamicUtils.BUTTON_OK);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: lambda$doUpdate$5$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity, reason: not valid java name */
    /* synthetic */ void m221xd6b4f752() {
        TextView textView;
        MyProcessDialog myProcessDialog = this.processDialog;
        if (myProcessDialog == null || (textView = (TextView) myProcessDialog.findViewById(10000)) == null) {
            return;
        }
        textView.setText(UtilBean.getMyLabel(GlobalTypes.MSG_LOAD_DATA_FROM_SERVER));
    }

    /* renamed from: lambda$doUpdate$7$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity, reason: not valid java name */
    /* synthetic */ void m223xbdd3ffd4() {
        showAlert(LabelConstants.NETWORK, LabelConstants.APP_DATA_ERROR, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m222xca447b93(view);
            }
        }, DynamicUtils.BUTTON_OK);
    }

    /* renamed from: lambda$doUpdate$6$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity, reason: not valid java name */
    /* synthetic */ void m222xca447b93(View view) {
        this.techoService.deleteDatabaseFileFromLocal(this.context);
        UtilBean.restartApplication(this.context);
    }

    /* renamed from: lambda$doUpdate$8$com-argusoft-sewa-android-app-activity-HomeScreenMenuActivity, reason: not valid java name */
    /* synthetic */ void m224xb1638415() {
        showAlert(LabelConstants.NETWORK, SharedStructureData.NETWORK_MESSAGE, null, DynamicUtils.BUTTON_OK);
    }

    private void onCheckUpdateComplete() {
        final String systemConfigurationByKey;
        Log.i(getClass().getSimpleName(), "#### onCheckUpdateComplete called from HomeScreenMenuActivity");
        String androidVersion = SharedStructureData.sewaService.getAndroidVersion();
        if (androidVersion == null) {
            return;
        }
        boolean z = false;
        String strReplace = androidVersion.split(GlobalTypes.KEY_VALUE_SEPARATOR)[0];
        if (strReplace == null) {
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
                Log.i(getClass().getName(), "#### APP NAME (apk name): " + str);
                Log.i(getClass().getName(), "#### Current Version :" + strReplace + " & Config Local Version : 192");
                if (BackgroundDownloadUtils.isApkExistsOnLocal(this.context, str)) {
                    hideProcessDialog();
                    BackgroundDownloadUtils.showInstallAppDialog(this, str);
                    return;
                }
                if (BackgroundDownloadUtils.isDownloadNotInProgress(this, str)) {
                    try {
                        systemConfigurationByKey = this.sewaServiceRestClient.getSystemConfigurationByKey("ANDROID_APP_LINK");
                    } catch (RestHttpException e) {
                        Log.e(getClass().getSimpleName(), e.getMessage(), e);
                        systemConfigurationByKey = null;
                    }
                    if (systemConfigurationByKey == null) {
                        return;
                    }
                    if (z) {
                        showAlert(UtilBean.getMyLabel(LabelConstants.APP_UPDATE_STATUS), UtilBean.getMyLabel(LabelConstants.NEW_APPLICATION_AVAILABLE), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity.8
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                HomeScreenMenuActivity.this.alertDialog.dismiss();
                                BackgroundDownloadUtils.deleteAllFiles(HomeScreenMenuActivity.this.context, new File(SewaConstants.DIR_APK_DOWNLOADED));
                                BackgroundDownloadUtils.startAppDownloading(HomeScreenMenuActivity.this.context, str, systemConfigurationByKey);
                                HomeScreenMenuActivity.this.startActivity(new Intent(HomeScreenMenuActivity.this.context, (Class<?>) DownloadProgressActivity.class));
                                HomeScreenMenuActivity.this.finish();
                            }
                        }, DynamicUtils.BUTTON_OK);
                        return;
                    } else {
                        BackgroundDownloadUtils.deleteAllFiles(this.context, new File(SewaConstants.DIR_APK_DOWNLOADED));
                        BackgroundDownloadUtils.startAppDownloading(this.context, str, systemConfigurationByKey);
                        return;
                    }
                }
                return;
            }
            Log.i(getClass().getName(), "#### Latest version.... So, Deleting all the files");
            BackgroundDownloadUtils.deleteAllFiles(this, new File(SewaConstants.DIR_APK_DOWNLOADED));
        }
    }

    private boolean checkAuthenticityOfCurrentVersion(String str, final String str2) throws NumberFormatException {
        final String systemConfigurationByKey;
        String[] strArrSplit = str.split(GlobalTypes.KEY_VALUE_SEPARATOR);
        if (strArrSplit.length == 1) {
            return true;
        }
        int i = Integer.parseInt(strArrSplit[1]);
        if (BackgroundDownloadUtils.isApkExistsOnLocal(this.context, str2)) {
            hideProcessDialog();
            BackgroundDownloadUtils.showInstallAppDialog(this.context, str2);
        } else if (192 < i) {
            try {
                systemConfigurationByKey = this.sewaServiceRestClient.getSystemConfigurationByKey("ANDROID_APP_LINK");
            } catch (RestHttpException e) {
                Log.e(getClass().getSimpleName(), e.getMessage(), e);
                systemConfigurationByKey = null;
            }
            if (systemConfigurationByKey == null) {
                return true;
            }
            showAlert(UtilBean.getMyLabel(LabelConstants.APP_UPDATE_STATUS), UtilBean.getMyLabel(LabelConstants.NEW_APPLICATION_AVAILABLE), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HomeScreenMenuActivity.this.alertDialog.dismiss();
                    BackgroundDownloadUtils.deleteAllFiles(HomeScreenMenuActivity.this.context, new File(SewaConstants.DIR_APK_DOWNLOADED));
                    BackgroundDownloadUtils.startAppDownloading(HomeScreenMenuActivity.this.context, str2, systemConfigurationByKey);
                    HomeScreenMenuActivity.this.startActivity(new Intent(HomeScreenMenuActivity.this.context, (Class<?>) DownloadProgressActivity.class));
                    HomeScreenMenuActivity.this.finish();
                }
            }, DynamicUtils.BUTTON_OK);
            return false;
        }
        return true;
    }

    public void showAlert(String str, String str2, View.OnClickListener onClickListener, int i) {
        hideProcessDialog();
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, false, str2, onClickListener, i);
        this.alertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    public void hideProcessDialog() {
        MyProcessDialog myProcessDialog = this.processDialog;
        if (myProcessDialog == null || !myProcessDialog.isShowing()) {
            return;
        }
        try {
            this.processDialog.dismiss();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }
}
