package com.argusoft.sewa.android.app.core;

import android.content.Context;

/* loaded from: classes.dex */
public interface LmsDownloadService {
    void addCourseMediaToDownload(Integer num);

    void addLmsMediaFilesToDownloadList();

    void deleteCourseMedia(Integer num);

    void startFileDownloading(Context context, Long l, String str);
}
