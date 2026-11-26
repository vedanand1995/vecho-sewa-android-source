package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.LibraryDataBean;
import java.util.List;

/* loaded from: classes.dex */
public interface LibraryDownloadService {
    void deleteFile(String str, Long l);

    List<LibraryDataBean> retrieveLibraryBeansByCategory(String str);

    void retrieveNotDownloadedAndStartDownload();
}
