package com.argusoft.sewa.android.app;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

/** Starter screen. Original behavior is not present in the supplied archive as Java/Kotlin source. */
public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        TextView message = new TextView(this);
        message.setText("TeCHO+\nAndroid Studio starter project. See README for recovered source details.");
        message.setTextSize(20);
        message.setPadding(32, 48, 32, 32);
        setContentView(message);
    }
}
