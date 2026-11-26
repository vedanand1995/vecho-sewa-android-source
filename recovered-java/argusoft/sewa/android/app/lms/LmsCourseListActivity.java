package com.argusoft.sewa.android.app.lms;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import androidx.viewpager.widget.ViewPager;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.LoginActivity_;
import com.argusoft.sewa.android.app.activity.MenuActivity;
import com.argusoft.sewa.android.app.core.impl.LmsDownloadServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LmsCourseListActivity extends MenuActivity {
    private LmsFragmentPagerAdaptor adapter;
    private List<LmsCourseDataBean> archivedCourseDataBeans;
    private List<LmsCourseDataBean> completedCourseDataBeans;
    LmsDownloadServiceImpl lmsDownloadService;
    LmsServiceImpl lmsService;
    private List<LmsCourseDataBean> pendingCourseDataBeans;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        setContentView(R.layout.activity_lms_course_list);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (SharedStructureData.isLogin) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
        intent.setFlags(335544320);
        startActivity(intent);
        finish();
    }

    private void initView() {
        MaterialToolbar materialToolbar = (MaterialToolbar) findViewById(R.id.lms_toolbar);
        materialToolbar.setTitle(UtilBean.getMyLabel("MY COURSES"));
        setSupportActionBar(materialToolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setHomeAsUpIndicator(R.drawable.ic_menu_back);
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        setBodyDetail();
    }

    public void setBodyDetail() {
        this.pendingCourseDataBeans = new ArrayList();
        this.completedCourseDataBeans = new ArrayList();
        this.archivedCourseDataBeans = new ArrayList();
        setCourseList();
        setCourseScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCourseList() {
        List<LmsCourseDataBean> listRetrieveCourses = this.lmsService.retrieveCourses();
        this.archivedCourseDataBeans.clear();
        this.pendingCourseDataBeans.clear();
        this.completedCourseDataBeans.clear();
        for (LmsCourseDataBean lmsCourseDataBean : listRetrieveCourses) {
            if (lmsCourseDataBean.getArchived() != null && Boolean.TRUE.equals(lmsCourseDataBean.getArchived())) {
                this.archivedCourseDataBeans.add(lmsCourseDataBean);
            } else if (lmsCourseDataBean.getCompletionStatus().intValue() < 100) {
                this.pendingCourseDataBeans.add(lmsCourseDataBean);
            } else {
                this.completedCourseDataBeans.add(lmsCourseDataBean);
            }
        }
    }

    public void setCourseScreen() {
        ViewPager viewPager = (ViewPager) findViewById(R.id.course_view_pager);
        TabLayout tabLayout = (TabLayout) findViewById(R.id.course_tabs);
        tabLayout.addTab(tabLayout.newTab());
        tabLayout.addTab(tabLayout.newTab());
        setupViewPager(viewPager);
        tabLayout.setupWithViewPager(viewPager);
        setupTabIcons(tabLayout);
        tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseListActivity.1
            @Override // com.google.android.material.tabs.TabLayout.OnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.OnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.OnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                if (LmsCourseListActivity.this.adapter != null) {
                    LmsCourseListActivity.this.setCourseList();
                    int position = tab.getPosition();
                    if (position == 0) {
                        ((LmsPendingCourseListFragment) LmsCourseListActivity.this.adapter.getItem(position)).resetList(LmsCourseListActivity.this.pendingCourseDataBeans);
                    } else if (position == 1) {
                        ((LmsCompletedCourseListFragment) LmsCourseListActivity.this.adapter.getItem(position)).resetList(LmsCourseListActivity.this.completedCourseDataBeans);
                    } else {
                        if (position != 2) {
                            return;
                        }
                        ((LmsArchivedCourseListFragment) LmsCourseListActivity.this.adapter.getItem(position)).resetList(LmsCourseListActivity.this.archivedCourseDataBeans);
                    }
                }
            }
        });
    }

    private void setupViewPager(ViewPager viewPager) throws Resources.NotFoundException {
        this.adapter = new LmsFragmentPagerAdaptor(getSupportFragmentManager());
        LmsPendingCourseListFragment lmsPendingCourseListFragmentNewInstance = LmsPendingCourseListFragment.newInstance(this.lmsDownloadService, this.lmsService, this.pendingCourseDataBeans);
        LmsCompletedCourseListFragment lmsCompletedCourseListFragmentNewInstance = LmsCompletedCourseListFragment.newInstance(this.lmsDownloadService, this.lmsService, this.completedCourseDataBeans);
        LmsArchivedCourseListFragment lmsArchivedCourseListFragmentNewInstance = LmsArchivedCourseListFragment.newInstance(this.lmsDownloadService, this.lmsService, this.archivedCourseDataBeans);
        this.adapter.addFrag(lmsPendingCourseListFragmentNewInstance, UtilBean.getMyLabel("Pending"));
        this.adapter.addFrag(lmsCompletedCourseListFragmentNewInstance, UtilBean.getMyLabel("Completed"));
        this.adapter.addFrag(lmsArchivedCourseListFragmentNewInstance, UtilBean.getMyLabel("Archived"));
        viewPager.setAdapter(this.adapter);
    }

    private void setupTabIcons(TabLayout tabLayout) {
        TabLayout.Tab tabAt = tabLayout.getTabAt(0);
        if (tabAt != null) {
            tabAt.setIcon(R.drawable.ic_pending_course);
        }
        TabLayout.Tab tabAt2 = tabLayout.getTabAt(1);
        if (tabAt2 != null) {
            tabAt2.setIcon(R.drawable.ic_completed_course);
        }
        TabLayout.Tab tabAt3 = tabLayout.getTabAt(2);
        if (tabAt3 != null) {
            tabAt3.setIcon(R.drawable.ic_archive_course);
        }
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        finish();
        return true;
    }
}
