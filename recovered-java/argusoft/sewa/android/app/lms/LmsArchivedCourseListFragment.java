package com.argusoft.sewa.android.app.lms;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.core.LmsDownloadService;
import com.argusoft.sewa.android.app.core.impl.LmsDownloadServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class LmsArchivedCourseListFragment extends Fragment {
    private LmsCourseListAdaptor adapter;
    private List<LmsCourseDataBean> archivedCourses;
    private List<LmsCourseScreenDataBean> items;
    private RecyclerView listView;
    private LmsDownloadService lmsDownloadService;
    private LmsServiceImpl lmsService;
    private FrameLayout mainLayout;

    public static LmsArchivedCourseListFragment newInstance(LmsDownloadServiceImpl lmsDownloadServiceImpl, LmsServiceImpl lmsServiceImpl, List<LmsCourseDataBean> list) {
        LmsArchivedCourseListFragment lmsArchivedCourseListFragment = new LmsArchivedCourseListFragment();
        lmsArchivedCourseListFragment.lmsDownloadService = lmsDownloadServiceImpl;
        lmsArchivedCourseListFragment.lmsService = lmsServiceImpl;
        Bundle bundle = new Bundle();
        bundle.putString("courses", new Gson().toJson(list));
        lmsArchivedCourseListFragment.setArguments(bundle);
        return lmsArchivedCourseListFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.archivedCourses = (List) new Gson().fromJson(getArguments().getString("courses"), new TypeToken<List<LmsCourseDataBean>>() { // from class: com.argusoft.sewa.android.app.lms.LmsArchivedCourseListFragment.1
            }.getType());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mainLayout = (FrameLayout) layoutInflater.inflate(R.layout.fragment_pending_course_list, viewGroup, false);
        this.items = new ArrayList();
        setItems();
        Iterator<LmsCourseDataBean> it = this.archivedCourses.iterator();
        while (it.hasNext()) {
            this.lmsService.markCourseViewed(it.next().getCourseId());
        }
        return this.mainLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setItems() {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.lms.LmsArchivedCourseListFragment.setItems():void");
    }

    public void resetList(final List<LmsCourseDataBean> list) {
        if (list != null) {
            if (this.mainLayout == null) {
                new Handler().postDelayed(new Runnable() { // from class: com.argusoft.sewa.android.app.lms.LmsArchivedCourseListFragment.3
                    @Override // java.lang.Runnable
                    public void run() {
                        LmsArchivedCourseListFragment.this.archivedCourses = list;
                        LmsArchivedCourseListFragment.this.setItems();
                    }
                }, 1000L);
            } else {
                this.archivedCourses = list;
                setItems();
            }
        }
    }
}
