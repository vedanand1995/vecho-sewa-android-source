package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.core.SchoolService;
import com.argusoft.sewa.android.app.model.SchoolBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SchoolServiceImpl implements SchoolService {
    private static final String TAG = "SchoolServiceImpl";
    Dao<SchoolBean, Integer> schoolBeanDao;

    @Override // com.argusoft.sewa.android.app.core.SchoolService
    public List<SchoolBean> retrieveSchoolsListBySearch(String str, Integer num) {
        List<SchoolBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            Where<SchoolBean, Integer> where = this.schoolBeanDao.queryBuilder().where();
            if (num == null) {
                listQuery = where.or(where.like("name", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like(FieldNameConstants.ENGLISH_NAME, GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]).query();
            } else {
                listQuery = where.and(where.or(where.like("name", GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), where.like(FieldNameConstants.ENGLISH_NAME, GlobalTypes.BENEFICIARY_SEPARATOR + str + GlobalTypes.BENEFICIARY_SEPARATOR), new Where[0]), getWhereClauseAsPerSchoolType(num, where), new Where[0]).query();
            }
            return listQuery;
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SchoolService
    public List<SchoolBean> retrieveSchoolsListByLocationId(Long l, Integer num) {
        List<SchoolBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            Where<SchoolBean, Integer> where = this.schoolBeanDao.queryBuilder().where();
            if (num == null) {
                listQuery = where.eq("locationId", l).query();
            } else {
                listQuery = where.and(where.eq("locationId", l), getWhereClauseAsPerSchoolType(num, where), new Where[0]).query();
            }
            return listQuery;
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return arrayList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SchoolService
    public List<SchoolBean> retrieveSchoolsListByLocationIds(List<Integer> list, Integer num) {
        List<SchoolBean> listQuery;
        ArrayList arrayList = new ArrayList();
        try {
            Where<SchoolBean, Integer> where = this.schoolBeanDao.queryBuilder().where();
            if (num == null) {
                listQuery = where.in("locationId", list).query();
            } else {
                listQuery = where.and(where.in("locationId", list), getWhereClauseAsPerSchoolType(num, where), new Where[0]).query();
            }
            return listQuery;
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            return arrayList;
        }
    }

    private Where<SchoolBean, Integer> getWhereClauseAsPerSchoolType(Integer num, Where<SchoolBean, Integer> where) throws SQLException {
        if (num.intValue() > 8) {
            return where.or(where.eq(GlobalTypes.SCHOOL_TYPE_GURUKUL, Boolean.TRUE), where.eq(GlobalTypes.SCHOOL_TYPE_MADRESA, Boolean.TRUE), where.eq(GlobalTypes.SCHOOL_TYPE_HIGHER_SECONDARY, Boolean.TRUE));
        }
        return where.or(where.eq(GlobalTypes.SCHOOL_TYPE_GURUKUL, Boolean.TRUE), where.eq(GlobalTypes.SCHOOL_TYPE_MADRESA, Boolean.TRUE), where.eq(GlobalTypes.SCHOOL_TYPE_PRIMARY, Boolean.TRUE));
    }
}
