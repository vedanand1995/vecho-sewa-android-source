package com.argusoft.sewa.android.app;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

/** Starter screen only; use the recovered-app Gradle task for the actual reconstructed APK. */
public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        TextView message = new TextView(this);
        message.setText("TeCHO+ Starter\nDemo shell only. See README for rebuilding the recovered app.");
        message.setTextSize(20);
        message.setPadding(32, 48, 32, 32);
        setContentView(message);
    }
}
