package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.AnswerBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.LibraryBean;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberCbacDetailBean;
import com.argusoft.sewa.android.app.model.QuestionBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class TechoAshaServiceImpl_ extends TechoAshaServiceImpl {
    private static TechoAshaServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private TechoAshaServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static TechoAshaServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            TechoAshaServiceImpl_ techoAshaServiceImpl_ = new TechoAshaServiceImpl_(context.getApplicationContext());
            instance_ = techoAshaServiceImpl_;
            techoAshaServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this.context_);
        this.sewaFhsService = SewaFhsServiceImpl_.getInstance_(this.context_);
        this.sewaService = SewaServiceImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.familyBeanDao = dBConnection.getDao(FamilyBean.class);
        } catch (SQLException e) {
            Log.e("TechoAshaServiceImpl_", "Could not create DAO familyBeanDao", e);
        }
        try {
            this.memberBeanDao = this.dBConnection_.getDao(MemberBean.class);
        } catch (SQLException e2) {
            Log.e("TechoAshaServiceImpl_", "Could not create DAO memberBeanDao", e2);
        }
        try {
            this.locationBeanDao = this.dBConnection_.getDao(LocationBean.class);
        } catch (SQLException e3) {
            Log.e("TechoAshaServiceImpl_", "Could not create DAO locationBeanDao", e3);
        }
        try {
            this.listValueBeanDao = this.dBConnection_.getDao(ListValueBean.class);
        } catch (SQLException e4) {
            Log.e("TechoAshaServiceImpl_", "Could not create DAO listValueBeanDao", e4);
        }
        try {
            this.labelBeanDao = this.dBConnection_.getDao(LabelBean.class);
        } catch (SQLException e5) {
            Log.e("TechoAshaServiceImpl_", "Could not create DAO labelBeanDao", e5);
        }
        try {
            this.versionBeanDao = this.dBConnection_.getDao(VersionBean.class);
        } catch (SQLException e6) {
            Log.e("TechoAshaServiceImpl_", "Could not create DAO versionBeanDao", e6);
        }
        try {
            this.questionBeanDao = this.dBConnection_.getDao(QuestionBean.class);
        } catch (SQLException e7) {
            Log.e("TechoAshaServiceImpl_", "Could not create DAO questionBeanDao", e7);
        }
        try {
            this.answerBeanDao = this.dBConnection_.getDao(AnswerBean.class);
        } catch (SQLException e8) {
            Log.e("TechoAshaServiceImpl_", "Could not create DAO answerBeanDao", e8);
        }
        try {
            this.memberCbacDetailBeanDao = this.dBConnection_.getDao(MemberCbacDetailBean.class);
        } catch (SQLException e9) {
            Log.e("TechoAshaServiceImpl_", "Could not create DAO memberCbacDetailBeanDao", e9);
        }
        try {
            this.libraryBeanDao = this.dBConnection_.getDao(LibraryBean.class);
        } catch (SQLException e10) {
            Log.e("TechoAshaServiceImpl_", "Could not create DAO libraryBeanDao", e10);
        }
    }
}
