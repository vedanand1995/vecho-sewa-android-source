package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.hardware.Camera;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.io.IOException;

/* compiled from: CustomPhotoCaptureActivity.java */
/* loaded from: classes.dex */
class CameraPreview extends SurfaceView implements SurfaceHolder.Callback {
    private Camera mCamera;

    public CameraPreview(Context context, Camera camera) {
        super(context);
        this.mCamera = camera;
        SurfaceHolder holder = getHolder();
        holder.addCallback(this);
        holder.setType(3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) throws IOException {
        try {
            this.mCamera.setPreviewDisplay(surfaceHolder);
            if (getResources().getConfiguration().orientation == 1) {
                this.mCamera.setDisplayOrientation(90);
            }
            this.mCamera.startPreview();
        } catch (IOException e) {
            Log.e(getClass().getName(), null, e);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Camera camera = this.mCamera;
        if (camera != null) {
            camera.stopPreview();
            this.mCamera.release();
            this.mCamera = null;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) throws IOException {
        try {
            this.mCamera.setPreviewDisplay(surfaceHolder);
            this.mCamera.startPreview();
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
        }
    }
}
