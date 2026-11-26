package com.argusoft.sewa.android.app.util;

import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.service.GPSTracker;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class PointInPolygon {
    private static final double PI = 3.14159265d;
    private static final double TWO_PI = 6.2831853d;

    public static boolean isValidGpsCoordinate(double d, double d2) {
        return d > -90.0d && d < 90.0d && d2 > -180.0d && d2 < 180.0d;
    }

    private PointInPolygon() {
        throw new IllegalStateException();
    }

    public static boolean coordinateInsidePolygon() {
        double dAngle2D;
        SharedStructureData.gps.getLocation();
        double dDoubleValue = GPSTracker.latitude.doubleValue();
        double dDoubleValue2 = GPSTracker.longitude.doubleValue();
        if (dDoubleValue == 0.0d || dDoubleValue2 == 0.0d || SharedStructureData.techoService == null || !SharedStructureData.techoService.checkIfFeatureIsReleased() || SharedStructureData.mapOfLatLongWithLGDCode == null || SharedStructureData.mapOfLatLongWithLGDCode.isEmpty()) {
            return true;
        }
        Iterator<Map.Entry<String, Map<String, List<Double>>>> it = SharedStructureData.mapOfLatLongWithLGDCode.entrySet().iterator();
        do {
            int i = 0;
            if (!it.hasNext()) {
                return false;
            }
            Map.Entry<String, Map<String, List<Double>>> next = it.next();
            List<Double> list = next.getValue().get("latArray");
            List<Double> list2 = next.getValue().get("longArray");
            int size = list != null ? list.size() : 0;
            dAngle2D = 0.0d;
            if (list2 != null) {
                while (i < size) {
                    double dDoubleValue3 = list.get(i).doubleValue() - dDoubleValue;
                    int i2 = i + 1;
                    int i3 = i2 % size;
                    double dDoubleValue4 = list.get(i3).doubleValue() - dDoubleValue;
                    Double d = list2.get(i);
                    Double d2 = list2.get(i3);
                    if (d != null && d2 != null) {
                        dAngle2D += angle2D(dDoubleValue3, d.doubleValue() - dDoubleValue2, dDoubleValue4, d2.doubleValue() - dDoubleValue2);
                    }
                    i = i2;
                }
            }
        } while (Math.abs(dAngle2D) < PI);
        return true;
    }

    public static double angle2D(double d, double d2, double d3, double d4) {
        double dAtan2 = Math.atan2(d3, d4) - Math.atan2(d, d2);
        while (dAtan2 > PI) {
            dAtan2 -= TWO_PI;
        }
        while (dAtan2 < -3.14159265d) {
            dAtan2 += TWO_PI;
        }
        return dAtan2;
    }
}
