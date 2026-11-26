package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import androidx.room.RoomDatabase;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.CampaignSessionService;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.CampaignMasterBean;
import com.argusoft.sewa.android.app.model.CampaignRescheduleBean;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.service.GPSTracker;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class CampaignSessionServiceImpl implements CampaignSessionService {
    Dao<CampaignMasterBean, Integer> campaignMasterBeanDao;
    Dao<CampaignRescheduleBean, Integer> campaignRescheduleBeanDao;
    Dao<CampaignSessionBean, Integer> campaignSessionBeanDao;
    Dao<RISessionInventoryBean, Integer> inventoryBeanDao;
    SewaServiceImpl sewaService;

    @Override // com.argusoft.sewa.android.app.core.CampaignSessionService
    public List<CampaignMasterBean> getCampaignMasterByLocationId(List<Integer> list, CampaignSessionBean campaignSessionBean) {
        CampaignMasterBean campaignMasterByConfigIdAndWeek;
        Calendar calendar = Calendar.getInstance();
        Date time = calendar.getTime();
        int i = calendar.get(4);
        int i2 = calendar.get(7) - 1;
        try {
            Where<CampaignMasterBean, Integer> where = this.campaignMasterBeanDao.queryBuilder().orderBy("dayNumber", true).where();
            where.and(where.in("locationId", list), where.le("dayNumber", Integer.valueOf(i2)), where.eq("weekNumber", Integer.valueOf(i)), where.eq("campaignActive", Boolean.TRUE), where.eq("locationActive", Boolean.TRUE));
            if (campaignSessionBean == null) {
                CampaignSessionBean campaignSessionByLocationId = getCampaignSessionByLocationId(list, Boolean.FALSE);
                if (campaignSessionByLocationId != null) {
                    campaignMasterByConfigIdAndWeek = getCampaignMasterByConfigIdAndWeek(campaignSessionByLocationId.getConfigId(), Integer.valueOf(i));
                    if (campaignMasterByConfigIdAndWeek != null) {
                        where.and().gt("dayNumber", campaignMasterByConfigIdAndWeek.getDayNumber());
                    }
                } else {
                    campaignMasterByConfigIdAndWeek = null;
                }
            } else {
                campaignMasterByConfigIdAndWeek = getCampaignMasterByConfigIdAndWeek(campaignSessionBean.getConfigId(), Integer.valueOf(i));
                if (campaignMasterByConfigIdAndWeek != null) {
                    where.and().ge("dayNumber", campaignMasterByConfigIdAndWeek.getDayNumber());
                }
            }
            List<CampaignMasterBean> listQuery = where.query();
            ArrayList arrayList = new ArrayList();
            for (CampaignMasterBean campaignMasterBean : listQuery) {
                CampaignRescheduleBean campaignRescheduleBeanQueryForFirst = this.campaignRescheduleBeanDao.queryBuilder().orderBy(FieldNameConstants.MODIFIED_ON, false).where().eq("configId", campaignMasterBean.getConfigId()).and().eq("activeFlag", Boolean.TRUE).queryForFirst();
                if (campaignRescheduleBeanQueryForFirst != null && campaignRescheduleBeanQueryForFirst.getNewDate() != null) {
                    Date newDate = campaignRescheduleBeanQueryForFirst.getNewDate();
                    if (!newDate.after(time)) {
                        if (campaignMasterByConfigIdAndWeek == null || newDate.after(getSelectedCampaignDate(campaignMasterByConfigIdAndWeek))) {
                            Calendar calendar2 = Calendar.getInstance();
                            calendar2.setTime(newDate);
                            campaignMasterBean.setWeekNumber(Integer.valueOf(calendar2.get(4)));
                            campaignMasterBean.setDayNumber(Integer.valueOf(calendar2.get(7) - 1));
                            arrayList.add(campaignMasterBean);
                        }
                    }
                }
                arrayList.add(campaignMasterBean);
            }
            return arrayList;
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getLocalizedMessage());
            return Collections.emptyList();
        }
    }

    private Date getSelectedCampaignDate(CampaignMasterBean campaignMasterBean) {
        if (campaignMasterBean != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(4, campaignMasterBean.getWeekNumber().intValue());
            calendar.set(7, campaignMasterBean.getDayNumber().intValue() + 1);
            return calendar.getTime();
        }
        return new Date();
    }

    @Override // com.argusoft.sewa.android.app.core.CampaignSessionService
    public CampaignSessionBean startNewSession(CampaignMasterBean campaignMasterBean) {
        long time = new Date().getTime();
        CampaignSessionBean campaignSessionBean = new CampaignSessionBean();
        campaignSessionBean.setConfigId(campaignMasterBean.getConfigId());
        campaignSessionBean.setSessionId(SewaTransformer.loginBean.getUsername().concat(String.valueOf(new Date().getTime())));
        campaignSessionBean.setStartedOn(Long.valueOf(time));
        campaignSessionBean.setLocationId(campaignMasterBean.getLocationId());
        campaignSessionBean.setMobileStartDate(Long.valueOf(time));
        SharedStructureData.gps.getLocation();
        campaignSessionBean.setLatitude(String.valueOf(GPSTracker.latitude));
        campaignSessionBean.setLongitude(String.valueOf(GPSTracker.longitude));
        try {
            this.campaignMasterBeanDao.update((Dao<CampaignMasterBean, Integer>) campaignMasterBean);
            this.campaignSessionBeanDao.createOrUpdate(campaignSessionBean);
        } catch (Exception e) {
            Log.e(DynamicUtils.TAG, e.getMessage(), e);
        }
        createStoreAnswerBeanForCampaignSession(campaignSessionBean);
        return campaignSessionBean;
    }

    private void createStoreAnswerBeanForCampaignSession(CampaignSessionBean campaignSessionBean) {
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.CAMPAIGN_SESSION);
        storeAnswerBean.setAnswer(new Gson().toJson(campaignSessionBean));
        storeAnswerBean.setChecksum(SewaTransformer.loginBean.getUsername() + Calendar.getInstance().getTimeInMillis());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(-1L);
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
        storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
    }

    @Override // com.argusoft.sewa.android.app.core.CampaignSessionService
    public CampaignSessionBean getCampaignSessionByConfigId(Integer num) {
        try {
            return this.campaignSessionBeanDao.queryBuilder().where().eq("configId", num).and().isNull("endedOn").queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.CampaignSessionService
    public CampaignSessionBean getCampaignSessionByLocationId(List<Integer> list, Boolean bool) {
        try {
            if (bool.booleanValue()) {
                return this.campaignSessionBeanDao.queryBuilder().where().in("locationId", list).and().isNull("endedOn").queryForFirst();
            }
            return this.campaignSessionBeanDao.queryBuilder().orderBy("startedOn", false).where().in("locationId", list).and().isNotNull("endedOn").queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.CampaignSessionService
    public CampaignMasterBean getCampaignMasterByConfigIdAndWeek(Integer num, Integer num2) {
        try {
            if (num2 == null) {
                return this.campaignMasterBeanDao.queryBuilder().where().eq("configId", num).and().eq("campaignActive", Boolean.TRUE).queryForFirst();
            }
            return this.campaignMasterBeanDao.queryBuilder().where().eq("configId", num).and().eq("campaignActive", Boolean.TRUE).and().eq("weekNumber", num2).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.CampaignSessionService
    public CampaignSessionBean getCampaignSessionBySessionId(String str) {
        try {
            return this.campaignSessionBeanDao.queryBuilder().where().eq(RelatedPropertyNameConstants.SESSION_ID, str).and().isNull("endedOn").queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.CampaignSessionService
    public CampaignSessionBean getCompletedSessionForTodayByLocationId(List<Integer> list) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.set(11, 23);
        calendar2.set(12, 59);
        calendar2.set(13, 59);
        calendar2.set(14, RoomDatabase.MAX_BIND_PARAMETER_CNT);
        try {
            return this.campaignSessionBeanDao.queryBuilder().orderBy("startedOn", false).where().in("locationId", list).and().isNotNull("startedOn").and().isNotNull("endedOn").and().ge("startedOn", Long.valueOf(calendar.getTime().getTime())).and().le("endedOn", Long.valueOf(calendar2.getTime().getTime())).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
            return null;
        }
    }

    public RISessionInventoryBean getRiInventoryByCampaignSessionId(String str) {
        try {
            return this.inventoryBeanDao.queryBuilder().where().eq(RelatedPropertyNameConstants.SESSION_ID, str).queryForFirst();
        } catch (SQLException e) {
            Log.e(DynamicUtils.TAG, e.getMessage(), e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.CampaignSessionService
    public void submitCampaignInventoryForm(RISessionInventoryBean rISessionInventoryBean) {
        try {
            this.inventoryBeanDao.create((Dao<RISessionInventoryBean, Integer>) rISessionInventoryBean);
        } catch (SQLException e) {
            Log.e(DynamicUtils.TAG, e.getMessage(), e);
        }
        String str = SewaTransformer.loginBean.getUsername() + Calendar.getInstance().getTimeInMillis();
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.CAMPAIGN_SESSION_INVENTORY);
        storeAnswerBean.setAnswer(new Gson().toJson(rISessionInventoryBean));
        storeAnswerBean.setChecksum(str);
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(-1L);
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        if (SewaTransformer.loginBean != null) {
            storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
            storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        }
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setCheckSum(str);
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        loggerBean.setBeneficiaryName(UtilBean.getMyLabel("Campaign Inventory for Session"));
        loggerBean.setTaskName(UtilBean.getMyLabel("Campaign Inventory"));
        loggerBean.setFormType(FormConstants.CAMPAIGN_SESSION_INVENTORY);
        this.sewaService.createLoggerBean(loggerBean);
    }

    @Override // com.argusoft.sewa.android.app.core.CampaignSessionService
    public void submitCampaignInventoryReturnForm(RISessionInventoryBean rISessionInventoryBean) {
        try {
            this.inventoryBeanDao.update((Dao<RISessionInventoryBean, Integer>) rISessionInventoryBean);
        } catch (SQLException e) {
            Log.e(DynamicUtils.TAG, e.getMessage(), e);
        }
        String str = SewaTransformer.loginBean.getUsername() + Calendar.getInstance().getTimeInMillis();
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.CAMPAIGN_SESSION_INVENTORY_RETURN);
        storeAnswerBean.setAnswer(new Gson().toJson(rISessionInventoryBean));
        storeAnswerBean.setChecksum(str);
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(-1L);
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        if (SewaTransformer.loginBean != null) {
            storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
            storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        }
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setCheckSum(str);
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        loggerBean.setBeneficiaryName(UtilBean.getMyLabel("Campaign Inventory Return after session end"));
        loggerBean.setTaskName(UtilBean.getMyLabel("Campaign Inventory Return"));
        loggerBean.setFormType(FormConstants.CAMPAIGN_SESSION_INVENTORY);
        this.sewaService.createLoggerBean(loggerBean);
    }

    @Override // com.argusoft.sewa.android.app.core.CampaignSessionService
    public void endSessionBySessionId(String str) {
        CampaignSessionBean campaignSessionBeanQueryForFirst;
        try {
            campaignSessionBeanQueryForFirst = this.campaignSessionBeanDao.queryBuilder().where().eq(RelatedPropertyNameConstants.SESSION_ID, str).queryForFirst();
        } catch (SQLException e) {
            Log.e(DynamicUtils.TAG, e.getMessage(), e);
            campaignSessionBeanQueryForFirst = null;
        }
        if (campaignSessionBeanQueryForFirst == null || campaignSessionBeanQueryForFirst.getEndedOn() != null) {
            return;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.add(14, -1);
        if (campaignSessionBeanQueryForFirst.getStartedOn().longValue() > calendar.getTimeInMillis()) {
            campaignSessionBeanQueryForFirst.setEndedOn(Long.valueOf(new Date().getTime()));
        } else {
            campaignSessionBeanQueryForFirst.setEndedOn(Long.valueOf(calendar.getTimeInMillis()));
        }
        try {
            this.campaignSessionBeanDao.createOrUpdate(campaignSessionBeanQueryForFirst);
        } catch (SQLException e2) {
            Log.e(DynamicUtils.TAG, e2.getMessage(), e2);
        }
        createStoreAnswerBeanForSession(campaignSessionBeanQueryForFirst);
    }

    private void createStoreAnswerBeanForSession(CampaignSessionBean campaignSessionBean) {
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.CAMPAIGN_SESSION);
        storeAnswerBean.setAnswer(new Gson().toJson(campaignSessionBean));
        storeAnswerBean.setChecksum(SewaTransformer.loginBean.getUsername() + Calendar.getInstance().getTimeInMillis());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(-1L);
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
        storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
    }

    public CampaignSessionBean endOnlinePreviousSession(CampaignSessionBean campaignSessionBean) {
        try {
            campaignSessionBean.setEndedOn(Long.valueOf(new Date().getTime()));
            this.campaignSessionBeanDao.update((Dao<CampaignSessionBean, Integer>) campaignSessionBean);
            return campaignSessionBean;
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
            return null;
        }
    }
}
