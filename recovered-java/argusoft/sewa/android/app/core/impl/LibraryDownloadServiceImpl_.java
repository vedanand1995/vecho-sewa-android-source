package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.LibraryBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class LibraryDownloadServiceImpl_ extends LibraryDownloadServiceImpl {
    private static LibraryDownloadServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private LibraryDownloadServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static LibraryDownloadServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            LibraryDownloadServiceImpl_ libraryDownloadServiceImpl_ = new LibraryDownloadServiceImpl_(context.getApplicationContext());
            instance_ = libraryDownloadServiceImpl_;
            libraryDownloadServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.context = this.context_;
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.libraryBeanDao = dBConnection.getDao(LibraryBean.class);
        } catch (SQLException e) {
            Log.e("LibraryDownloadServiceI", "Could not create DAO libraryBeanDao", e);
        }
    }
}
