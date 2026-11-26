package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.core.UserService;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.UserBean;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class UserServiceImpl implements UserService {
    Dao<LoginBean, Integer> loginBeanDao;
    Dao<UserBean, Integer> userBeanDao;

    @Override // com.argusoft.sewa.android.app.core.UserService
    public List<UserBean> retrieveUsersAssigned() {
        new ArrayList();
        try {
            return this.userBeanDao.queryForAll();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public LoginBean getLoginBeanFromDb() {
        try {
            return this.loginBeanDao.queryForAll().get(0);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return null;
        }
    }

    public void createOrUpdate(LoginBean loginBean) {
        try {
            if (loginBean.getId() != null) {
                this.loginBeanDao.update((Dao<LoginBean, Integer>) loginBean);
            } else {
                this.loginBeanDao.create((Dao<LoginBean, Integer>) loginBean);
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
        }
    }
}
