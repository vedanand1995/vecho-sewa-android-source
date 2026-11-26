package com.argusoft.sewa.android.app.lms;

import android.content.Context;
import android.util.Log;
import android.view.OrientationEventListener;

/* loaded from: classes.dex */
public class MyVideoOrientationDetector {
    private static final int HOLDING_THRESHOLD = 1500;
    private static final String TAG = "OrientationDetector";
    private Context context;
    private OrientationChangeListener listener;
    private OrientationEventListener orientationEventListener;
    private int rotationThreshold = 20;
    private long holdingTime = 0;
    private long lastCalcTime = 0;
    private Direction lastDirection = Direction.PORTRAIT;
    private int currentOrientation = 1;

    public enum Direction {
        PORTRAIT,
        REVERSE_PORTRAIT,
        LANDSCAPE,
        REVERSE_LANDSCAPE
    }

    public interface OrientationChangeListener {
        void onOrientationChanged(int i, Direction direction);
    }

    public MyVideoOrientationDetector(Context context) {
        this.context = context;
    }

    public void setOrientationChangeListener(OrientationChangeListener orientationChangeListener) {
        this.listener = orientationChangeListener;
    }

    public void enable() {
        if (this.orientationEventListener == null) {
            this.orientationEventListener = new OrientationEventListener(this.context, 2) { // from class: com.argusoft.sewa.android.app.lms.MyVideoOrientationDetector.1
                @Override // android.view.OrientationEventListener
                public void onOrientationChanged(int i) {
                    Direction directionCalcDirection = MyVideoOrientationDetector.this.calcDirection(i);
                    if (directionCalcDirection == null) {
                        return;
                    }
                    if (directionCalcDirection != MyVideoOrientationDetector.this.lastDirection) {
                        MyVideoOrientationDetector.this.resetTime();
                        MyVideoOrientationDetector.this.lastDirection = directionCalcDirection;
                        return;
                    }
                    MyVideoOrientationDetector.this.calcHoldingTime();
                    if (MyVideoOrientationDetector.this.holdingTime > 1500) {
                        if (directionCalcDirection == Direction.LANDSCAPE) {
                            if (MyVideoOrientationDetector.this.currentOrientation != 0) {
                                Log.d(MyVideoOrientationDetector.TAG, "switch to SCREEN_ORIENTATION_LANDSCAPE");
                                MyVideoOrientationDetector.this.currentOrientation = 0;
                                if (MyVideoOrientationDetector.this.listener != null) {
                                    MyVideoOrientationDetector.this.listener.onOrientationChanged(0, directionCalcDirection);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        if (directionCalcDirection == Direction.PORTRAIT) {
                            if (MyVideoOrientationDetector.this.currentOrientation != 1) {
                                Log.d(MyVideoOrientationDetector.TAG, "switch to SCREEN_ORIENTATION_PORTRAIT");
                                MyVideoOrientationDetector.this.currentOrientation = 1;
                                if (MyVideoOrientationDetector.this.listener != null) {
                                    MyVideoOrientationDetector.this.listener.onOrientationChanged(1, directionCalcDirection);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        if (directionCalcDirection == Direction.REVERSE_PORTRAIT) {
                            if (MyVideoOrientationDetector.this.currentOrientation != 9) {
                                Log.d(MyVideoOrientationDetector.TAG, "switch to SCREEN_ORIENTATION_REVERSE_PORTRAIT");
                                MyVideoOrientationDetector.this.currentOrientation = 9;
                                if (MyVideoOrientationDetector.this.listener != null) {
                                    MyVideoOrientationDetector.this.listener.onOrientationChanged(9, directionCalcDirection);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        if (directionCalcDirection != Direction.REVERSE_LANDSCAPE || MyVideoOrientationDetector.this.currentOrientation == 8) {
                            return;
                        }
                        Log.d(MyVideoOrientationDetector.TAG, "switch to SCREEN_ORIENTATION_REVERSE_LANDSCAPE");
                        MyVideoOrientationDetector.this.currentOrientation = 8;
                        if (MyVideoOrientationDetector.this.listener != null) {
                            MyVideoOrientationDetector.this.listener.onOrientationChanged(8, directionCalcDirection);
                        }
                    }
                }
            };
        }
        this.orientationEventListener.enable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void calcHoldingTime() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.lastCalcTime == 0) {
            this.lastCalcTime = jCurrentTimeMillis;
        }
        this.holdingTime += jCurrentTimeMillis - this.lastCalcTime;
        this.lastCalcTime = jCurrentTimeMillis;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetTime() {
        this.lastCalcTime = 0L;
        this.holdingTime = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Direction calcDirection(int i) {
        int i2 = this.rotationThreshold;
        if (i <= i2 || i >= 360 - i2) {
            return Direction.PORTRAIT;
        }
        if (Math.abs(i - 180) <= this.rotationThreshold) {
            return Direction.REVERSE_PORTRAIT;
        }
        if (Math.abs(i - 90) <= this.rotationThreshold) {
            return Direction.REVERSE_LANDSCAPE;
        }
        if (Math.abs(i - 270) <= this.rotationThreshold) {
            return Direction.LANDSCAPE;
        }
        return null;
    }

    public void setInitialDirection(Direction direction) {
        this.lastDirection = direction;
    }

    public void disable() {
        OrientationEventListener orientationEventListener = this.orientationEventListener;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
    }

    public void setThresholdDegree(int i) {
        this.rotationThreshold = i;
    }
}
