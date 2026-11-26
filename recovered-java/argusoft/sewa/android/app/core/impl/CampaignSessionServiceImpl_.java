package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.CampaignMasterBean;
import com.argusoft.sewa.android.app.model.CampaignRescheduleBean;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class CampaignSessionServiceImpl_ extends CampaignSessionServiceImpl {
    private static CampaignSessionServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private CampaignSessionServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static CampaignSessionServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            CampaignSessionServiceImpl_ campaignSessionServiceImpl_ = new CampaignSessionServiceImpl_(context.getApplicationContext());
            instance_ = campaignSessionServiceImpl_;
            campaignSessionServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.sewaService = SewaServiceImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.campaignMasterBeanDao = dBConnection.getDao(CampaignMasterBean.class);
        } catch (SQLException e) {
            Log.e("CampaignSessionServiceI", "Could not create DAO campaignMasterBeanDao", e);
        }
        try {
            this.campaignSessionBeanDao = this.dBConnection_.getDao(CampaignSessionBean.class);
        } catch (SQLException e2) {
            Log.e("CampaignSessionServiceI", "Could not create DAO campaignSessionBeanDao", e2);
        }
        try {
            this.inventoryBeanDao = this.dBConnection_.getDao(RISessionInventoryBean.class);
        } catch (SQLException e3) {
            Log.e("CampaignSessionServiceI", "Could not create DAO inventoryBeanDao", e3);
        }
        try {
            this.campaignRescheduleBeanDao = this.dBConnection_.getDao(CampaignRescheduleBean.class);
        } catch (SQLException e4) {
            Log.e("CampaignSessionServiceI", "Could not create DAO campaignRescheduleBeanDao", e4);
        }
    }
}
