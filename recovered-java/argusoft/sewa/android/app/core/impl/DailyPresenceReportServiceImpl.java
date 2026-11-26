package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.core.DailyPresenceReportService;
import com.argusoft.sewa.android.app.databean.CurrentLocationDto;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.DailyPresenceReport;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.service.GPSTracker;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class DailyPresenceReportServiceImpl implements DailyPresenceReportService {
    Dao<DailyPresenceReport, Integer> dailyPresenceReportBeanDao;
    SewaFhsServiceImpl fhsService;
    SewaServiceRestClientImpl restClient;
    SewaServiceImpl sewaService;
    Dao<VersionBean, Integer> versionBeanDao;

    @Override // com.argusoft.sewa.android.app.core.DailyPresenceReportService
    public void removePreviousReport() {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            DeleteBuilder<DailyPresenceReport, Integer> deleteBuilder = this.dailyPresenceReportBeanDao.deleteBuilder();
            deleteBuilder.where().lt("startTime", calendar.getTime());
            deleteBuilder.delete();
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.DailyPresenceReportService
    public Boolean createReport() {
        try {
            Gson gson = new Gson();
            Date date = new Date();
            SharedStructureData.gps.getLocation();
            CurrentLocationDto currentLocationDto = new CurrentLocationDto(date, String.valueOf(GPSTracker.latitude), String.valueOf(GPSTracker.longitude));
            ArrayList arrayList = new ArrayList();
            arrayList.add(currentLocationDto);
            Integer numMarkAttendanceForTheDay = this.restClient.markAttendanceForTheDay(gson.toJson(arrayList));
            if (numMarkAttendanceForTheDay != null && numMarkAttendanceForTheDay.intValue() > 0) {
                this.dailyPresenceReportBeanDao.deleteBuilder().delete();
                DailyPresenceReport dailyPresenceReport = new DailyPresenceReport();
                dailyPresenceReport.setStartTime(date);
                dailyPresenceReport.setLocations(gson.toJson(arrayList));
                dailyPresenceReport.setAttendanceId(numMarkAttendanceForTheDay);
                this.dailyPresenceReportBeanDao.create((Dao<DailyPresenceReport, Integer>) dailyPresenceReport);
                return true;
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return false;
    }

    @Override // com.argusoft.sewa.android.app.core.DailyPresenceReportService
    public void addLocations() {
        try {
            List<DailyPresenceReport> listQueryForAll = this.dailyPresenceReportBeanDao.queryForAll();
            if (listQueryForAll == null || listQueryForAll.isEmpty() || listQueryForAll.get(0).getEndTime() != null) {
                return;
            }
            DailyPresenceReport dailyPresenceReport = listQueryForAll.get(0);
            List list = (List) new Gson().fromJson(dailyPresenceReport.getLocations(), new TypeToken<List<CurrentLocationDto>>() { // from class: com.argusoft.sewa.android.app.core.impl.DailyPresenceReportServiceImpl.1
            }.getType());
            SharedStructureData.gps.getLocation();
            list.add(new CurrentLocationDto(new Date(), String.valueOf(GPSTracker.latitude), String.valueOf(GPSTracker.longitude)));
            dailyPresenceReport.setLocations(new Gson().toJson(list));
            this.dailyPresenceReportBeanDao.update((Dao<DailyPresenceReport, Integer>) dailyPresenceReport);
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.DailyPresenceReportService
    public Boolean closeReport() {
        try {
            List<DailyPresenceReport> listQueryForAll = this.dailyPresenceReportBeanDao.queryForAll();
            if (listQueryForAll != null && !listQueryForAll.isEmpty() && listQueryForAll.get(0).getEndTime() == null) {
                DailyPresenceReport dailyPresenceReport = listQueryForAll.get(0);
                Date date = new Date();
                List list = (List) new Gson().fromJson(dailyPresenceReport.getLocations(), new TypeToken<List<CurrentLocationDto>>() { // from class: com.argusoft.sewa.android.app.core.impl.DailyPresenceReportServiceImpl.2
                }.getType());
                SharedStructureData.gps.getLocation();
                list.add(new CurrentLocationDto(date, String.valueOf(GPSTracker.latitude), String.valueOf(GPSTracker.longitude)));
                dailyPresenceReport.setEndTime(date);
                dailyPresenceReport.setLocations(new Gson().toJson(list));
                this.dailyPresenceReportBeanDao.update((Dao<DailyPresenceReport, Integer>) dailyPresenceReport);
                this.restClient.storeAttendanceForTheDay(dailyPresenceReport.getLocations(), dailyPresenceReport.getAttendanceId());
                SharedStructureData.CHO_ATTENDANCE_IS_MARKED_PRESENCE = false;
                SharedStructureData.RBSK_ATTENDANCE_IS_MARKED_PRESENCE = false;
                this.dailyPresenceReportBeanDao.deleteBuilder().delete();
                return true;
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return false;
    }
}
