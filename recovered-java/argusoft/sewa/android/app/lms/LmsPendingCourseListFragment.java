package com.argusoft.sewa.android.app.lms;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.core.impl.LmsDownloadServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class LmsPendingCourseListFragment extends Fragment {
    private LmsCourseListAdaptor adapter;
    private MyAlertDialog alertDialog;
    private List<LmsCourseScreenDataBean> items;
    private RecyclerView listView;
    private LmsDownloadServiceImpl lmsDownloadService;
    private LmsServiceImpl lmsService;
    private FrameLayout mainLayout;
    private List<LmsCourseDataBean> pendingCourses;
    private LmsCourseDataBean selectedCourse;

    public static LmsPendingCourseListFragment newInstance(LmsDownloadServiceImpl lmsDownloadServiceImpl, LmsServiceImpl lmsServiceImpl, List<LmsCourseDataBean> list) {
        LmsPendingCourseListFragment lmsPendingCourseListFragment = new LmsPendingCourseListFragment();
        lmsPendingCourseListFragment.lmsDownloadService = lmsDownloadServiceImpl;
        lmsPendingCourseListFragment.lmsService = lmsServiceImpl;
        Bundle bundle = new Bundle();
        bundle.putString("courses", new Gson().toJson(list));
        lmsPendingCourseListFragment.setArguments(bundle);
        return lmsPendingCourseListFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.pendingCourses = (List) new Gson().fromJson(getArguments().getString("courses"), new TypeToken<List<LmsCourseDataBean>>() { // from class: com.argusoft.sewa.android.app.lms.LmsPendingCourseListFragment.1
            }.getType());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mainLayout = (FrameLayout) layoutInflater.inflate(R.layout.fragment_pending_course_list, viewGroup, false);
        setItems();
        Iterator<LmsCourseDataBean> it = this.pendingCourses.iterator();
        while (it.hasNext()) {
            this.lmsService.markCourseViewed(it.next().getCourseId());
        }
        return this.mainLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setItems() {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.lms.LmsPendingCourseListFragment.setItems():void");
    }

    public void resetList(final List<LmsCourseDataBean> list) {
        if (list != null) {
            if (this.mainLayout == null) {
                new Handler().postDelayed(new Runnable() { // from class: com.argusoft.sewa.android.app.lms.LmsPendingCourseListFragment.3
                    @Override // java.lang.Runnable
                    public void run() {
                        LmsPendingCourseListFragment.this.pendingCourses = list;
                        LmsPendingCourseListFragment.this.setItems();
                    }
                }, 1000L);
            } else {
                this.pendingCourses = list;
                setItems();
            }
        }
    }

    public void openLessonView() {
        Intent intent = new Intent(getContext(), (Class<?>) LmsCourseDetailActivity_.class);
        intent.putExtra(FieldNameConstants.COURSE_ID, this.selectedCourse.getCourseId());
        startActivity(intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LmsCourseListAdaptor lmsCourseListAdaptor = this.adapter;
        if (lmsCourseListAdaptor != null) {
            lmsCourseListAdaptor.updateList(this.items);
        }
    }
}
