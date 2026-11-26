package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.MenuItem;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.MyWorkLogAdapter;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.WorkLogScreenDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.receiver.UploadResultReceiver;
import com.argusoft.sewa.android.app.service.FileUploadForegroundService;
import com.argusoft.sewa.android.app.service.FileUploadForegroundService_;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class WorkLogActivity extends MenuActivity {
    private Handler backgroundHandler;
    private LinearLayout bodyLayoutContainer;
    MyProcessDialog processDialog;
    SewaServiceImpl sewaService;

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, null);
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) linearLayoutGenerateDynamicScreenTemplate.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        linearLayoutGenerateDynamicScreenTemplate.removeView((LinearLayout) linearLayoutGenerateDynamicScreenTemplate.findViewById(DynamicUtils.ID_FOOTER));
        HandlerThread handlerThread = new HandlerThread("HandlerThread");
        handlerThread.start();
        this.backgroundHandler = new Handler(handlerThread.getLooper());
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.WORK_LOG_TITLE));
        retrieveWorkLog();
    }

    public void retrieveWorkLog() {
        showProcessDialog();
        List<LoggerBean> workLog = this.sewaService.getWorkLog();
        ArrayList arrayList = new ArrayList();
        if (workLog != null && !workLog.isEmpty()) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss", Locale.getDefault());
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -1);
            for (LoggerBean loggerBean : workLog) {
                List<UploadFileDataBean> fileWorkLog = this.sewaService.getFileWorkLog(loggerBean.getCheckSum());
                if (loggerBean.getStatus().equalsIgnoreCase("S")) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.success, loggerBean.getDisplayBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog));
                } else if (loggerBean.getStatus().equalsIgnoreCase("P")) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.pending, loggerBean.getDisplayBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog));
                } else if (loggerBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_QUEUE)) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.queue, loggerBean.getDisplayBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage()));
                } else if (loggerBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_ERROR) && loggerBean.getModifiedOn() != null && loggerBean.getModifiedOn().after(calendar.getTime())) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.error, loggerBean.getDisplayBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog));
                } else if (loggerBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_HANDLED_ERROR) && loggerBean.getModifiedOn() != null && loggerBean.getModifiedOn().after(calendar.getTime())) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.warning, loggerBean.getDisplayBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog));
                }
            }
        } else {
            arrayList.add(new WorkLogScreenDataBean(null, -1, LabelConstants.THERE_IS_NO_WORKLOG_TO_DISPLAY, null, null));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getListView(this, new AnonymousClass1(this, arrayList), null));
        hideProcessDialog();
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.WorkLogActivity$1, reason: invalid class name */
    class AnonymousClass1 extends MyWorkLogAdapter {
        AnonymousClass1(Context context, List list) {
            super(context, list);
        }

        @Override // com.argusoft.sewa.android.app.component.MyWorkLogAdapter
        public void retryUploading(UploadFileDataBean uploadFileDataBean) {
            if (FileUploadForegroundService_.isRunning) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            uploadFileDataBean.setStatus("U");
            WorkLogActivity.this.sewaService.updateUploadFileDataBean(uploadFileDataBean);
            arrayList.add(uploadFileDataBean);
            UploadResultReceiver uploadResultReceiver = new UploadResultReceiver(new Handler(), new UploadResultReceiver.Receiver() { // from class: com.argusoft.sewa.android.app.activity.WorkLogActivity$1$$ExternalSyntheticLambda0
                @Override // com.argusoft.sewa.android.app.receiver.UploadResultReceiver.Receiver
                public final void onUploadFinished() {
                    this.f$0.m556x985d6ad6();
                }
            });
            uploadFileDataBean.setStatus("U");
            Intent intent = new Intent(WorkLogActivity.this.context, (Class<?>) FileUploadForegroundService_.class);
            intent.putExtra(FileUploadForegroundService.EXTRA_BEANS_LIST, new Gson().toJson(arrayList));
            intent.putExtra("receiver", uploadResultReceiver);
            ContextCompat.startForegroundService(WorkLogActivity.this.context, intent);
        }

        /* renamed from: lambda$retryUploading$0$com-argusoft-sewa-android-app-activity-WorkLogActivity$1, reason: not valid java name */
        /* synthetic */ void m556x985d6ad6() {
            WorkLogActivity.this.retrieveWorkLog();
        }
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        navigateToHomeScreen(false);
        return true;
    }
}
