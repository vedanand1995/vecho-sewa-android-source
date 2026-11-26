package com.argusoft.sewa.android.app.activity.DueList;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DueListPagerAdapter extends FragmentPagerAdapter {
    private final List<Fragment> fragmentList;
    private final List<String> titleList;

    public DueListPagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager, 1);
        this.fragmentList = new ArrayList();
        this.titleList = new ArrayList();
    }

    public void addFragment(Fragment fragment, String str) {
        this.fragmentList.add(fragment);
        this.titleList.add(str);
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return this.fragmentList.get(i);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.fragmentList.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return this.titleList.get(i);
    }
}
