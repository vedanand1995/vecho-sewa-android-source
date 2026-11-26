package com.argusoft.sewa.android.app.util;

import android.os.Build;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public class RootUtil {
    public static boolean isDeviceRooted() {
        return false;
    }

    private RootUtil() {
        throw new IllegalStateException("Utility Class");
    }

    private static boolean checkRootMethod1() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    private static boolean checkRootMethod2() {
        String[] strArr = {"Superuser", "Supersu", "/su", "/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/system/xbin", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/sd/xbin", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su", "/system/su", "/system/bin/.ext/.su", "/data/local/bin", "/data/local/xbin", "/data/local", "/vendor/bin", "/sbin", "/system/bin/failsafe"};
        for (int i = 0; i < 23; i++) {
            if (new File(strArr[i]).exists()) {
                return true;
            }
        }
        return false;
    }

    private static boolean checkRootMethod3() {
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec(new String[]{"/system/xbin/which", "su"});
            boolean z = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine() != null;
            if (processExec != null) {
                processExec.destroy();
            }
            return z;
        } catch (IOException unused) {
            if (processExec != null) {
                processExec.destroy();
            }
            return false;
        } catch (Throwable th) {
            if (processExec != null) {
                processExec.destroy();
            }
            throw th;
        }
    }
}
