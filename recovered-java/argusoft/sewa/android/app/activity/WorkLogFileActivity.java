package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.view.MenuItem;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.MyWorkLogAdapter;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.WorkLogScreenDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class WorkLogFileActivity extends MenuActivity {
    SewaServiceImpl sewaService;

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(LabelConstants.WORK_LOG_FILE_TITLE);
        retrieveWorkLog();
    }

    private void retrieveWorkLog() {
        showProcessDialog();
        List<UploadFileDataBean> fileWorkLog = this.sewaService.getFileWorkLog();
        ArrayList arrayList = new ArrayList();
        if (fileWorkLog != null && !fileWorkLog.isEmpty()) {
            for (UploadFileDataBean uploadFileDataBean : fileWorkLog) {
                if (uploadFileDataBean.getStatus().equalsIgnoreCase("S")) {
                    arrayList.add(new WorkLogScreenDataBean(uploadFileDataBean.getFileName(), R.drawable.success, uploadFileDataBean.getFileType(), uploadFileDataBean.getFormType(), null));
                } else if (uploadFileDataBean.getStatus().equalsIgnoreCase("P")) {
                    arrayList.add(new WorkLogScreenDataBean(uploadFileDataBean.getFileName(), R.drawable.pending, uploadFileDataBean.getFileType(), uploadFileDataBean.getFormType(), null));
                } else if (uploadFileDataBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_ERROR)) {
                    arrayList.add(new WorkLogScreenDataBean(uploadFileDataBean.getFileName(), R.drawable.error, uploadFileDataBean.getFileType(), uploadFileDataBean.getFormType(), null));
                }
            }
        } else {
            arrayList.add(new WorkLogScreenDataBean(UtilBean.getMyLabel(LabelConstants.THERE_IS_NO_WORKLOG_TO_DISPLAY), -1, null, null, null));
        }
        setContentView(MyStaticComponents.getListView(this, new MyWorkLogAdapter(this, arrayList) { // from class: com.argusoft.sewa.android.app.activity.WorkLogFileActivity.1
            @Override // com.argusoft.sewa.android.app.component.MyWorkLogAdapter
            public void retryUploading(UploadFileDataBean uploadFileDataBean2) {
            }
        }, null));
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
}
