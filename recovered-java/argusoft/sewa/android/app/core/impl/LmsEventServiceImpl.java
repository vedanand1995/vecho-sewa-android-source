package com.argusoft.sewa.android.app.core.impl;

import com.argusoft.sewa.android.app.core.LmsEventService;
import com.argusoft.sewa.android.app.databean.RecordStatusBean;
import com.argusoft.sewa.android.app.model.LmsEventBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.List;

/* loaded from: classes.dex */
public class LmsEventServiceImpl implements LmsEventService {
    Dao<LmsEventBean, Integer> eventBeanDao;
    SewaServiceRestClientImpl restClient;

    public void uploadLmsEventToServer() {
        try {
            LmsEventBean lmsEventBean = new LmsEventBean();
            lmsEventBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
            lmsEventBean.setUserId(Integer.valueOf(SewaTransformer.loginBean.getUserID().intValue()));
            List<LmsEventBean> listQueryForMatchingArgs = this.eventBeanDao.queryForMatchingArgs(lmsEventBean);
            if (listQueryForMatchingArgs != null && !listQueryForMatchingArgs.isEmpty()) {
                evaluateResponse(this.restClient.lmsEventEntryFromMobileToDBeans(listQueryForMatchingArgs));
            }
        } catch (RestHttpException | SQLException e) {
            e.printStackTrace();
        }
    }

    private void evaluateResponse(List<RecordStatusBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            RecordStatusBean recordStatusBean = list.get(i);
            if (recordStatusBean.getStatus() != null && recordStatusBean.getStatus().equals("S")) {
                LmsEventBean lmsEventBean = new LmsEventBean();
                lmsEventBean.setChecksum(recordStatusBean.getChecksum());
                try {
                    this.eventBeanDao.delete(this.eventBeanDao.queryForMatchingArgs(lmsEventBean));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
