package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.AbhaCreationService;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import java.util.Calendar;

/* loaded from: classes.dex */
public class AbhaCreationServiceImpl implements AbhaCreationService {
    SewaServiceImpl sewaService;

    @Override // com.argusoft.sewa.android.app.core.AbhaCreationService
    public void createMigrationForOfflineAbha(String str, MemberBean memberBean) {
        Log.i(getClass().getSimpleName(), "#### Create Migration For Offline Abha : " + str);
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.OFFLINE_ABHA_NUMBER_CREATIONS);
        storeAnswerBean.setAnswer(str);
        storeAnswerBean.setChecksum(sb.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        if (memberBean != null) {
            storeAnswerBean.setMemberId(Long.valueOf(memberBean.getActualId()));
        }
        if (SewaTransformer.loginBean != null) {
            storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
            storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        }
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        LoggerBean loggerBean = new LoggerBean();
        if (memberBean != null) {
            loggerBean.setBeneficiaryName(UtilBean.getMemberFullName(memberBean) + " (" + memberBean.getUniqueHealthId() + ")");
        } else {
            loggerBean.setBeneficiaryName(LabelConstants.HEALTH_ID_MANAGEMENT);
        }
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setFormType(FormConstants.OFFLINE_ABHA_NUMBER_CREATIONS);
        loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.OFFLINE_ABHA_NUMBER_CREATIONS));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        this.sewaService.createLoggerBean(loggerBean);
    }
}
