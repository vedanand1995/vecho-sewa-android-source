package com.argusoft.sewa.android.app.core.impl;

import com.argusoft.sewa.android.app.core.MenuService;
import com.argusoft.sewa.android.app.model.MenuBean;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MenuServiceImpl implements MenuService {
    Dao<MenuBean, Integer> menuBeanDao;

    @Override // com.argusoft.sewa.android.app.core.MenuService
    public List<MenuBean> retrieveMenus() {
        try {
            return this.menuBeanDao.queryBuilder().query();
        } catch (SQLException e) {
            e.printStackTrace();
            return new ArrayList();
        }
    }
}
