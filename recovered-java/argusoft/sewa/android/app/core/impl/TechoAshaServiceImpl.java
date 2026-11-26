package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.core.TechoAshaService;
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
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class TechoAshaServiceImpl implements TechoAshaService {
    Dao<AnswerBean, Integer> answerBeanDao;
    Dao<FamilyBean, Integer> familyBeanDao;
    Dao<LabelBean, Integer> labelBeanDao;
    Dao<LibraryBean, Integer> libraryBeanDao;
    Dao<ListValueBean, Integer> listValueBeanDao;
    Dao<LocationBean, Integer> locationBeanDao;
    Dao<MemberBean, Integer> memberBeanDao;
    Dao<MemberCbacDetailBean, Integer> memberCbacDetailBeanDao;
    Dao<QuestionBean, Integer> questionBeanDao;
    SewaFhsServiceImpl sewaFhsService;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    Dao<VersionBean, Integer> versionBeanDao;

    @Override // com.argusoft.sewa.android.app.core.TechoAshaService
    public List<LocationBean> retrieveAshaAreasAssignedToUser() {
        if (SewaTransformer.loginBean.getVillageCode() == null || SewaTransformer.loginBean.getVillageCode().isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : SewaTransformer.loginBean.getVillageCode().split(":")) {
            arrayList.add(Integer.valueOf(str));
        }
        ArrayList arrayList2 = new ArrayList();
        try {
            return this.locationBeanDao.queryBuilder().orderBy("name", true).where().in(FieldNameConstants.ACTUAL_I_D, arrayList).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return arrayList2;
        }
    }
}
