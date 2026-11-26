package com.argusoft.sewa.android.app.qrscanner;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import com.argusoft.sewa.android.app.R;
import com.journeyapps.barcodescanner.CaptureManager;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;

/* loaded from: classes.dex */
public class QRScannerActivity extends AppCompatActivity implements DecoratedBarcodeView.TorchListener {
    private DecoratedBarcodeView barcodeScannerView;
    private CaptureManager capture;
    private boolean isFlashLightOn = false;
    private Button switchFlashlightButton;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(128);
        setContentView(R.layout.activity_qr_scanner);
        DecoratedBarcodeView decoratedBarcodeView = (DecoratedBarcodeView) findViewById(R.id.zxing_barcode_scanner);
        this.barcodeScannerView = decoratedBarcodeView;
        decoratedBarcodeView.setTorchListener(this);
        this.switchFlashlightButton = (Button) findViewById(R.id.switch_flashlight);
        if (!hasFlash()) {
            this.switchFlashlightButton.setVisibility(8);
        } else {
            this.switchFlashlightButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.qrscanner.QRScannerActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    QRScannerActivity.this.switchFlashlight();
                }
            });
        }
        CaptureManager captureManager = new CaptureManager(this, this.barcodeScannerView);
        this.capture = captureManager;
        captureManager.initializeFromIntent(getIntent(), bundle);
        this.capture.decode();
    }

    private boolean hasFlash() {
        return getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.camera.flash");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchFlashlight() {
        if (this.isFlashLightOn) {
            this.barcodeScannerView.setTorchOff();
            this.isFlashLightOn = false;
        } else {
            this.barcodeScannerView.setTorchOn();
            this.isFlashLightOn = true;
        }
    }

    @Override // com.journeyapps.barcodescanner.DecoratedBarcodeView.TorchListener
    public void onTorchOn() {
        this.switchFlashlightButton.setText(R.string.turn_off_flashlight);
    }

    @Override // com.journeyapps.barcodescanner.DecoratedBarcodeView.TorchListener
    public void onTorchOff() {
        this.switchFlashlightButton.setText(R.string.turn_on_flashlight);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.capture.onResume();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.capture.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.capture.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.capture.onSaveInstanceState(bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.barcodeScannerView.onKeyDown(i, keyEvent) || super.onKeyDown(i, keyEvent);
    }
}
