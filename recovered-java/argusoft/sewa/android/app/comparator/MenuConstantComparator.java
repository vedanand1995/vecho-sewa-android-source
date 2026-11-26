package com.argusoft.sewa.android.app.comparator;

import com.argusoft.sewa.android.app.model.MenuBean;
import java.util.Comparator;

/* loaded from: classes.dex */
public class MenuConstantComparator implements Comparator<MenuBean> {
    @Override // java.util.Comparator
    public int compare(MenuBean menuBean, MenuBean menuBean2) {
        return menuBean.getOrder() - menuBean2.getOrder();
    }
}
