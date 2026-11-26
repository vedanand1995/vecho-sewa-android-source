package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.AnnouncementArrayAdaptor;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.AnnouncementBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.dao.Dao;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AnnouncementActivity extends MenuActivity {
    private List<AnnouncementBean> announcementBeans = null;
    Dao<AnnouncementBean, Integer> announcementBeansDao;
    private LinearLayout bodyLayoutContainer;
    SewaServiceImpl sewaService;

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        setContentView(R.layout.activity_announcement);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) findViewById(R.id.announcementContainer);
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        this.processDialog = new MyProcessDialog(this, GlobalTypes.MSG_PROCESSING);
        this.processDialog.show();
        try {
            retrieveAnnouncements();
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void retrieveAnnouncements() {
        this.announcementBeans = this.sewaService.getAllAnnouncement();
        onRetrieveAnnouncementsComplete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onRetrieveAnnouncementsComplete() {
        setTitle(UtilBean.getTitleText(LabelConstants.ANNOUNCEMENT_TITLE));
        setSubTitle(null);
        ArrayList arrayList = new ArrayList();
        List<AnnouncementBean> list = this.announcementBeans;
        if (list != null && !list.isEmpty()) {
            for (AnnouncementBean announcementBean : this.announcementBeans) {
                arrayList.add(new AnnouncementBean(announcementBean.getAnnouncementId(), announcementBean.getSubject(), announcementBean.getPublishedOn(), announcementBean.getFileName()));
            }
            ListView listView = MyStaticComponents.getListView(this, new AnnouncementArrayAdaptor(this.context, arrayList, this.announcementBeansDao), null);
            listView.setDividerHeight(0);
            this.bodyLayoutContainer.addView(listView);
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_ANNOUNCEMENT_AVAILABLE)));
        }
        this.processDialog.dismiss();
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        Log.i(getClass().getName(), "On Restore CALLED");
        super.onRestoreInstanceState(bundle);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }
}
