package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import java.util.List;

/* loaded from: classes.dex */
public interface MoveToProductionService {
    List<FormAccessibilityBean> isAnyFormTrainingCompleted();

    void postUserReadyToMoveProduction();

    FormAccessibilityBean retrieveFormAccessibilityBeanByFormType(String str);

    void saveFormAccessibilityBeansFromServer();

    void saveFormsToMoveToProduction(List<FormAccessibilityBean> list);
}
