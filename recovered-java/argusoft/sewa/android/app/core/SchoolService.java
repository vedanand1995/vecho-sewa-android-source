package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.model.SchoolBean;
import java.util.List;

/* loaded from: classes.dex */
public interface SchoolService {
    List<SchoolBean> retrieveSchoolsListByLocationId(Long l, Integer num);

    List<SchoolBean> retrieveSchoolsListByLocationIds(List<Integer> list, Integer num);

    List<SchoolBean> retrieveSchoolsListBySearch(String str, Integer num);
}
