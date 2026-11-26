package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.MyWorkLogAdapter;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.WorkLogScreenDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class RBSKWorkStatusActivity extends MenuActivity implements View.OnClickListener {
    private LinearLayout bodyLayoutContainer;
    private LinearLayout globalPanel;
    private Button nextButton;
    SewaServiceImpl sewaService;

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
        setTitle(UtilBean.getTitleText(LabelConstants.WORK_STATUS_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    private void setBodyDetail() {
        retrieveWorkLog();
    }

    public void retrieveWorkLog() {
        List<LoggerBean> workLog = this.sewaService.getWorkLog();
        ArrayList arrayList = new ArrayList();
        if (workLog != null && !workLog.isEmpty()) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss", Locale.getDefault());
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -1);
            for (LoggerBean loggerBean : workLog) {
                if (loggerBean.getStatus().equalsIgnoreCase("S")) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.success, loggerBean.getBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage()));
                } else if (loggerBean.getStatus().equalsIgnoreCase("P")) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.pending, loggerBean.getBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage()));
                } else if (loggerBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_ERROR) && loggerBean.getModifiedOn() != null && loggerBean.getModifiedOn().after(calendar.getTime())) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.error, loggerBean.getBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage()));
                } else if (loggerBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_HANDLED_ERROR) && loggerBean.getModifiedOn() != null && loggerBean.getModifiedOn().after(calendar.getTime())) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.warning, loggerBean.getBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage()));
                }
            }
        } else {
            arrayList.add(new WorkLogScreenDataBean(null, -1, LabelConstants.THERE_IS_NO_WORKLOG_TO_DISPLAY, null, null));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getListView(this, new MyWorkLogAdapter(this, arrayList) { // from class: com.argusoft.sewa.android.app.activity.RBSKWorkStatusActivity.1
            @Override // com.argusoft.sewa.android.app.component.MyWorkLogAdapter
            public void retryUploading(UploadFileDataBean uploadFileDataBean) {
            }
        }, null));
        this.nextButton.setText("Okay");
        hideProcessDialog();
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            navigateToHomeScreen(false);
        }
    }
}
