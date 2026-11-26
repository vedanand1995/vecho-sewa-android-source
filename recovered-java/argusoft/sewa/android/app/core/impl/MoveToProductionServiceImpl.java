package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.core.MoveToProductionService;
import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.table.TableUtils;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MoveToProductionServiceImpl implements MoveToProductionService {
    Dao<FormAccessibilityBean, Integer> formAccessibilityBeanDao;
    SewaServiceRestClientImpl sewaServiceRestClient;

    @Override // com.argusoft.sewa.android.app.core.MoveToProductionService
    public FormAccessibilityBean retrieveFormAccessibilityBeanByFormType(String str) {
        try {
            return this.formAccessibilityBeanDao.queryBuilder().where().eq(SewaConstants.LIST_VALUE_BEAN_ENTITY, str).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.MoveToProductionService
    public List<FormAccessibilityBean> isAnyFormTrainingCompleted() {
        ArrayList arrayList = new ArrayList();
        try {
            return this.formAccessibilityBeanDao.queryForEq("state", GlobalTypes.MOVE_TO_PRODUCTION_RESPONSE_PENDING);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.MoveToProductionService
    public void saveFormsToMoveToProduction(List<FormAccessibilityBean> list) {
        Iterator<FormAccessibilityBean> it = list.iterator();
        while (it.hasNext()) {
            try {
                FormAccessibilityBean formAccessibilityBeanQueryForFirst = this.formAccessibilityBeanDao.queryBuilder().where().eq(SewaConstants.LIST_VALUE_BEAN_ENTITY, it.next().getFormCode()).queryForFirst();
                formAccessibilityBeanQueryForFirst.setReadyToMoveProduction(Boolean.TRUE);
                formAccessibilityBeanQueryForFirst.setState(GlobalTypes.MOVE_TO_PRODUCTION);
                this.formAccessibilityBeanDao.update((Dao<FormAccessibilityBean, Integer>) formAccessibilityBeanQueryForFirst);
            } catch (SQLException e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
        }
    }

    @Override // com.argusoft.sewa.android.app.core.MoveToProductionService
    public void postUserReadyToMoveProduction() {
        try {
            List<FormAccessibilityBean> listQueryForEq = this.formAccessibilityBeanDao.queryForEq("readyToMoveProduction", Boolean.TRUE);
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                return;
            }
            Iterator<FormAccessibilityBean> it = listQueryForEq.iterator();
            while (it.hasNext()) {
                this.sewaServiceRestClient.postUserReadyToMoveProduction(it.next().getFormCode());
            }
        } catch (RestHttpException | SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.MoveToProductionService
    public void saveFormAccessibilityBeansFromServer() {
        try {
            List<FormAccessibilityBean> userFormAccessDetailFromServer = this.sewaServiceRestClient.getUserFormAccessDetailFromServer();
            TableUtils.clearTable(this.formAccessibilityBeanDao.getConnectionSource(), FormAccessibilityBean.class);
            this.formAccessibilityBeanDao.create(userFormAccessDetailFromServer);
        } catch (RestHttpException | SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }
}
