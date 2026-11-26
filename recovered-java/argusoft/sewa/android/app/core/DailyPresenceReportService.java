package com.argusoft.sewa.android.app.core;

/* loaded from: classes.dex */
public interface DailyPresenceReportService {
    void addLocations();

    Boolean closeReport();

    Boolean createReport();

    void removePreviousReport();
}
