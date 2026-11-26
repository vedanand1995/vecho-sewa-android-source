package com.argusoft.sewa.android.app.support;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.SupportActionBean;
import com.argusoft.sewa.android.app.model.SupportAttachmentBean;
import com.argusoft.sewa.android.app.model.SupportCommentBean;
import com.argusoft.sewa.android.app.model.SupportTicketBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class SupportStore_ extends SupportStore {
    private static SupportStore_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private SupportStore_(Context context) {
        this.context_ = context;
    }

    public static SupportStore_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            SupportStore_ supportStore_ = new SupportStore_(context.getApplicationContext());
            instance_ = supportStore_;
            supportStore_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.api = SupportApi_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.tickets = dBConnection.getDao(SupportTicketBean.class);
        } catch (SQLException e) {
            Log.e("SupportStore_", "Could not create DAO tickets", e);
        }
        try {
            this.comments = this.dBConnection_.getDao(SupportCommentBean.class);
        } catch (SQLException e2) {
            Log.e("SupportStore_", "Could not create DAO comments", e2);
        }
        try {
            this.attachments = this.dBConnection_.getDao(SupportAttachmentBean.class);
        } catch (SQLException e3) {
            Log.e("SupportStore_", "Could not create DAO attachments", e3);
        }
        try {
            this.actions = this.dBConnection_.getDao(SupportActionBean.class);
        } catch (SQLException e4) {
            Log.e("SupportStore_", "Could not create DAO actions", e4);
        }
    }
}
