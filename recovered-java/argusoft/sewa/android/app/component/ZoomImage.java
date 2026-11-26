package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
import android.widget.Scroller;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes.dex */
public class ZoomImage extends AppCompatImageView {
    private static final float SUPER_MAX_MULTIPLIER = 1.25f;
    private static final float SUPER_MIN_MULTIPLIER = 0.75f;
    private Context context;
    private ZoomVariables delayedZoomVariables;
    private GestureDetector.OnDoubleTapListener doubleTapListener;
    private Fling fling;
    private boolean imageRenderedAtLeastOnce;
    private float[] m;
    private GestureDetector mGestureDetector;
    private ScaleGestureDetector mScaleDetector;
    private ImageView.ScaleType mScaleType;
    private float matchViewHeight;
    private float matchViewWidth;
    private Matrix matrix;
    private float maxScale;
    private float minScale;
    private float normalizedScale;
    private boolean onDrawReady;
    private float prevMatchViewHeight;
    private float prevMatchViewWidth;
    private Matrix prevMatrix;
    private int prevViewHeight;
    private int prevViewWidth;
    private State state;
    private float superMaxScale;
    private float superMinScale;
    private OnTouchImageViewListener touchImageViewListener;
    private View.OnTouchListener userTouchListener;
    private int viewHeight;
    private int viewWidth;

    public interface OnTouchImageViewListener {
        void onMove();
    }

    private enum State {
        NONE,
        DRAG,
        ZOOM,
        FLING,
        ANIMATE_ZOOM
    }

    private float getFixTrans(float f, float f2, float f3) {
        float f4;
        float f5;
        if (f3 <= f2) {
            f5 = f2 - f3;
            f4 = 0.0f;
        } else {
            f4 = f2 - f3;
            f5 = 0.0f;
        }
        if (f < f4) {
            return (-f) + f4;
        }
        if (f > f5) {
            return (-f) + f5;
        }
        return 0.0f;
    }

    public ZoomImage(Context context) {
        super(context);
        this.doubleTapListener = null;
        this.userTouchListener = null;
        this.touchImageViewListener = null;
        sharedConstructing(context);
    }

    public ZoomImage(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.doubleTapListener = null;
        this.userTouchListener = null;
        this.touchImageViewListener = null;
        sharedConstructing(context);
    }

    public ZoomImage(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.doubleTapListener = null;
        this.userTouchListener = null;
        this.touchImageViewListener = null;
        sharedConstructing(context);
    }

    private void sharedConstructing(Context context) {
        super.setClickable(true);
        this.context = context;
        AnonymousClass1 anonymousClass1 = null;
        this.mScaleDetector = new ScaleGestureDetector(context, new ScaleListener(this, anonymousClass1));
        this.mGestureDetector = new GestureDetector(context, new GestureListener(this, anonymousClass1));
        this.matrix = new Matrix();
        this.prevMatrix = new Matrix();
        this.m = new float[9];
        this.normalizedScale = 1.0f;
        if (this.mScaleType == null) {
            this.mScaleType = ImageView.ScaleType.FIT_CENTER;
        }
        this.minScale = 1.0f;
        this.maxScale = 3.0f;
        this.superMinScale = 1.0f * SUPER_MIN_MULTIPLIER;
        this.superMaxScale = 3.0f * SUPER_MAX_MULTIPLIER;
        setImageMatrix(this.matrix);
        setScaleType(ImageView.ScaleType.MATRIX);
        setState(State.NONE);
        this.onDrawReady = false;
        super.setOnTouchListener(new PrivateOnTouchListener(this, anonymousClass1));
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.userTouchListener = onTouchListener;
    }

    public void setOnTouchImageViewListener(OnTouchImageViewListener onTouchImageViewListener) {
        this.touchImageViewListener = onTouchImageViewListener;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.doubleTapListener = onDoubleTapListener;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        savePreviousImageValues();
        fitImageToView();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        savePreviousImageValues();
        fitImageToView();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        savePreviousImageValues();
        fitImageToView();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        savePreviousImageValues();
        fitImageToView();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.FIT_START || scaleType == ImageView.ScaleType.FIT_END) {
            throw new UnsupportedOperationException("TouchImageView does not support FIT_START or FIT_END");
        }
        if (scaleType == ImageView.ScaleType.MATRIX) {
            super.setScaleType(ImageView.ScaleType.MATRIX);
            return;
        }
        this.mScaleType = scaleType;
        if (this.onDrawReady) {
            setZoom(this);
        }
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.mScaleType;
    }

    public boolean isZoomed() {
        return this.normalizedScale != 1.0f;
    }

    public RectF getZoomedRect() {
        if (this.mScaleType == ImageView.ScaleType.FIT_XY) {
            throw new UnsupportedOperationException("getZoomedRect() not supported with FIT_XY");
        }
        PointF pointFTransformCoordTouchToBitmap = transformCoordTouchToBitmap(0.0f, 0.0f, true);
        PointF pointFTransformCoordTouchToBitmap2 = transformCoordTouchToBitmap(this.viewWidth, this.viewHeight, true);
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        return new RectF(pointFTransformCoordTouchToBitmap.x / intrinsicWidth, pointFTransformCoordTouchToBitmap.y / intrinsicHeight, pointFTransformCoordTouchToBitmap2.x / intrinsicWidth, pointFTransformCoordTouchToBitmap2.y / intrinsicHeight);
    }

    private void savePreviousImageValues() {
        Matrix matrix = this.matrix;
        if (matrix == null || this.viewHeight == 0 || this.viewWidth == 0) {
            return;
        }
        matrix.getValues(this.m);
        this.prevMatrix.setValues(this.m);
        this.prevMatchViewHeight = this.matchViewHeight;
        this.prevMatchViewWidth = this.matchViewWidth;
        this.prevViewHeight = this.viewHeight;
        this.prevViewWidth = this.viewWidth;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putFloat("saveScale", this.normalizedScale);
        bundle.putFloat("matchViewHeight", this.matchViewHeight);
        bundle.putFloat("matchViewWidth", this.matchViewWidth);
        bundle.putInt("viewWidth", this.viewWidth);
        bundle.putInt("viewHeight", this.viewHeight);
        this.matrix.getValues(this.m);
        bundle.putFloatArray("matrix", this.m);
        bundle.putBoolean("imageRendered", this.imageRenderedAtLeastOnce);
        return bundle;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.normalizedScale = bundle.getFloat("saveScale");
            float[] floatArray = bundle.getFloatArray("matrix");
            this.m = floatArray;
            this.prevMatrix.setValues(floatArray);
            this.prevMatchViewHeight = bundle.getFloat("matchViewHeight");
            this.prevMatchViewWidth = bundle.getFloat("matchViewWidth");
            this.prevViewHeight = bundle.getInt("viewHeight");
            this.prevViewWidth = bundle.getInt("viewWidth");
            this.imageRenderedAtLeastOnce = bundle.getBoolean("imageRendered");
            super.onRestoreInstanceState(bundle.getParcelable("instanceState"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.onDrawReady = true;
        this.imageRenderedAtLeastOnce = true;
        ZoomVariables zoomVariables = this.delayedZoomVariables;
        if (zoomVariables != null) {
            setZoom(zoomVariables.scale, this.delayedZoomVariables.focusX, this.delayedZoomVariables.focusY, this.delayedZoomVariables.scaleType);
            this.delayedZoomVariables = null;
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        savePreviousImageValues();
    }

    public float getMaxZoom() {
        return this.maxScale;
    }

    public void setMaxZoom(float f) {
        this.maxScale = f;
        this.superMaxScale = f * SUPER_MAX_MULTIPLIER;
    }

    public float getMinZoom() {
        return this.minScale;
    }

    public float getCurrentZoom() {
        return this.normalizedScale;
    }

    public void setMinZoom(float f) {
        this.minScale = f;
        this.superMinScale = f * SUPER_MIN_MULTIPLIER;
    }

    public void resetZoom() {
        this.normalizedScale = 1.0f;
        fitImageToView();
    }

    public void setZoom(float f) {
        setZoom(f, 0.5f, 0.5f);
    }

    public void setZoom(float f, float f2, float f3) {
        setZoom(f, f2, f3, this.mScaleType);
    }

    public void setZoom(float f, float f2, float f3, ImageView.ScaleType scaleType) {
        if (!this.onDrawReady) {
            this.delayedZoomVariables = new ZoomVariables(f, f2, f3, scaleType);
            return;
        }
        if (scaleType != this.mScaleType) {
            setScaleType(scaleType);
        }
        resetZoom();
        scaleImage(f, this.viewWidth / 2.0f, this.viewHeight / 2.0f, true);
        this.matrix.getValues(this.m);
        this.m[2] = -((f2 * getImageWidth()) - (this.viewWidth * 0.5f));
        this.m[5] = -((f3 * getImageHeight()) - (this.viewHeight * 0.5f));
        this.matrix.setValues(this.m);
        fixTrans();
        setImageMatrix(this.matrix);
    }

    public void setZoom(ZoomImage zoomImage) {
        PointF scrollPosition = zoomImage.getScrollPosition();
        setZoom(zoomImage.getCurrentZoom(), scrollPosition.x, scrollPosition.y, zoomImage.getScaleType());
    }

    public PointF getScrollPosition() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        PointF pointFTransformCoordTouchToBitmap = transformCoordTouchToBitmap(this.viewWidth / 2.0f, this.viewHeight / 2.0f, true);
        pointFTransformCoordTouchToBitmap.x /= intrinsicWidth;
        pointFTransformCoordTouchToBitmap.y /= intrinsicHeight;
        return pointFTransformCoordTouchToBitmap;
    }

    public void setScrollPosition(float f, float f2) {
        setZoom(this.normalizedScale, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fixTrans() {
        this.matrix.getValues(this.m);
        float[] fArr = this.m;
        float f = fArr[2];
        float f2 = fArr[5];
        float fixTrans = getFixTrans(f, this.viewWidth, getImageWidth());
        float fixTrans2 = getFixTrans(f2, this.viewHeight, getImageHeight());
        if (fixTrans == 0.0f && fixTrans2 == 0.0f) {
            return;
        }
        this.matrix.postTranslate(fixTrans, fixTrans2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fixScaleTrans() {
        fixTrans();
        this.matrix.getValues(this.m);
        float imageWidth = getImageWidth();
        int i = this.viewWidth;
        if (imageWidth < i) {
            this.m[2] = (i - getImageWidth()) / 2.0f;
        }
        float imageHeight = getImageHeight();
        int i2 = this.viewHeight;
        if (imageHeight < i2) {
            this.m[5] = (i2 - getImageHeight()) / 2.0f;
        }
        this.matrix.setValues(this.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getImageWidth() {
        return this.matchViewWidth * this.normalizedScale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getImageHeight() {
        return this.matchViewHeight * this.normalizedScale;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        Drawable drawable = getDrawable();
        if (drawable == null || drawable.getIntrinsicWidth() == 0 || drawable.getIntrinsicHeight() == 0) {
            setMeasuredDimension(0, 0);
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.viewWidth = setViewSize(mode, size, intrinsicWidth);
        int viewSize = setViewSize(mode2, size2, intrinsicHeight);
        this.viewHeight = viewSize;
        setMeasuredDimension(this.viewWidth, viewSize);
        fitImageToView();
    }

    private void fitImageToView() {
        Drawable drawable = getDrawable();
        if (drawable == null || drawable.getIntrinsicWidth() == 0 || drawable.getIntrinsicHeight() == 0 || this.matrix == null || this.prevMatrix == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        float f = intrinsicWidth;
        float fMax = this.viewWidth / f;
        float f2 = intrinsicHeight;
        float f3 = this.viewHeight / f2;
        int i = AnonymousClass1.$SwitchMap$android$widget$ImageView$ScaleType[this.mScaleType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                fMax = Math.max(fMax, f3);
            } else if (i == 3) {
                fMax = Math.min(1.0f, Math.min(fMax, f3));
            } else if (i == 4) {
                fMax = Math.min(fMax, f3);
            } else if (i != 5) {
                throw new UnsupportedOperationException("TouchImageView does not support FIT_START or FIT_END");
            }
            f3 = fMax;
        } else {
            fMax = 1.0f;
            f3 = 1.0f;
        }
        int i2 = this.viewWidth;
        float f4 = i2 - (fMax * f);
        int i3 = this.viewHeight;
        float f5 = i3 - (f3 * f2);
        this.matchViewWidth = i2 - f4;
        this.matchViewHeight = i3 - f5;
        if (!isZoomed() && !this.imageRenderedAtLeastOnce) {
            this.matrix.setScale(fMax, f3);
            this.matrix.postTranslate(f4 / 2.0f, f5 / 2.0f);
            this.normalizedScale = 1.0f;
        } else {
            if (this.prevMatchViewWidth == 0.0f || this.prevMatchViewHeight == 0.0f) {
                savePreviousImageValues();
            }
            this.prevMatrix.getValues(this.m);
            float[] fArr = this.m;
            float f6 = this.matchViewWidth / f;
            float f7 = this.normalizedScale;
            fArr[0] = f6 * f7;
            fArr[4] = (this.matchViewHeight / f2) * f7;
            float f8 = fArr[2];
            float f9 = fArr[5];
            translateMatrixAfterRotate(2, f8, this.prevMatchViewWidth * f7, getImageWidth(), this.prevViewWidth, this.viewWidth, intrinsicWidth);
            translateMatrixAfterRotate(5, f9, this.prevMatchViewHeight * this.normalizedScale, getImageHeight(), this.prevViewHeight, this.viewHeight, intrinsicHeight);
            this.matrix.setValues(this.m);
        }
        fixTrans();
        setImageMatrix(this.matrix);
    }

    /* renamed from: com.argusoft.sewa.android.app.component.ZoomImage$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$widget$ImageView$ScaleType;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            $SwitchMap$android$widget$ImageView$ScaleType = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_XY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private int setViewSize(int i, int i2, int i3) {
        if (i != Integer.MIN_VALUE) {
            return i != 0 ? i2 : i3;
        }
        return Math.min(i3, i2);
    }

    private void translateMatrixAfterRotate(int i, float f, float f2, float f3, int i2, int i3, int i4) {
        float f4 = i3;
        if (f3 < f4) {
            float[] fArr = this.m;
            fArr[i] = (f4 - (i4 * fArr[0])) * 0.5f;
        } else if (f > 0.0f) {
            this.m[i] = -((f3 - f4) * 0.5f);
        } else {
            this.m[i] = -((((Math.abs(f) + (i2 * 0.5f)) / f2) * f3) - (f4 * 0.5f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(State state) {
        this.state = state;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        this.matrix.getValues(this.m);
        float f = this.m[2];
        if (getImageWidth() < this.viewWidth) {
            return false;
        }
        if (f < -1.0f || i >= 0) {
            return (Math.abs(f) + ((float) this.viewWidth)) + 1.0f < getImageWidth() || i <= 0;
        }
        return false;
    }

    private class GestureListener extends GestureDetector.SimpleOnGestureListener {
        private GestureListener() {
        }

        /* synthetic */ GestureListener(ZoomImage zoomImage, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (ZoomImage.this.doubleTapListener != null) {
                return ZoomImage.this.doubleTapListener.onSingleTapConfirmed(motionEvent);
            }
            return ZoomImage.this.performClick();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            ZoomImage.this.performLongClick();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (ZoomImage.this.fling != null) {
                ZoomImage.this.fling.cancelFling();
            }
            ZoomImage.this.fling = ZoomImage.this.new Fling((int) f, (int) f2);
            ZoomImage zoomImage = ZoomImage.this;
            zoomImage.compatPostOnAnimation(zoomImage.fling);
            return super.onFling(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean zOnDoubleTap = ZoomImage.this.doubleTapListener != null ? ZoomImage.this.doubleTapListener.onDoubleTap(motionEvent) : false;
            if (ZoomImage.this.state != State.NONE) {
                return zOnDoubleTap;
            }
            ZoomImage.this.compatPostOnAnimation(ZoomImage.this.new DoubleTapZoom(ZoomImage.this.normalizedScale == ZoomImage.this.minScale ? ZoomImage.this.maxScale : ZoomImage.this.minScale, motionEvent.getX(), motionEvent.getY(), false));
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (ZoomImage.this.doubleTapListener != null) {
                return ZoomImage.this.doubleTapListener.onDoubleTapEvent(motionEvent);
            }
            return false;
        }
    }

    private class PrivateOnTouchListener implements View.OnTouchListener {
        private final PointF last;

        private float getFixDragTrans(float f, float f2, float f3) {
            if (f3 <= f2) {
                return 0.0f;
            }
            return f;
        }

        private PrivateOnTouchListener() {
            this.last = new PointF();
        }

        /* synthetic */ PrivateOnTouchListener(ZoomImage zoomImage, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
            /*
                r6 = this;
                com.argusoft.sewa.android.app.component.ZoomImage r0 = com.argusoft.sewa.android.app.component.ZoomImage.this
                android.view.ScaleGestureDetector r0 = com.argusoft.sewa.android.app.component.ZoomImage.access$1400(r0)
                r0.onTouchEvent(r8)
                com.argusoft.sewa.android.app.component.ZoomImage r0 = com.argusoft.sewa.android.app.component.ZoomImage.this
                android.view.GestureDetector r0 = com.argusoft.sewa.android.app.component.ZoomImage.access$1500(r0)
                r0.onTouchEvent(r8)
                android.graphics.PointF r0 = new android.graphics.PointF
                float r1 = r8.getX()
                float r2 = r8.getY()
                r0.<init>(r1, r2)
                com.argusoft.sewa.android.app.component.ZoomImage r1 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage$State r1 = com.argusoft.sewa.android.app.component.ZoomImage.access$1000(r1)
                com.argusoft.sewa.android.app.component.ZoomImage$State r2 = com.argusoft.sewa.android.app.component.ZoomImage.State.NONE
                r3 = 1
                if (r1 == r2) goto L3e
                com.argusoft.sewa.android.app.component.ZoomImage r1 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage$State r1 = com.argusoft.sewa.android.app.component.ZoomImage.access$1000(r1)
                com.argusoft.sewa.android.app.component.ZoomImage$State r2 = com.argusoft.sewa.android.app.component.ZoomImage.State.DRAG
                if (r1 == r2) goto L3e
                com.argusoft.sewa.android.app.component.ZoomImage r1 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage$State r1 = com.argusoft.sewa.android.app.component.ZoomImage.access$1000(r1)
                com.argusoft.sewa.android.app.component.ZoomImage$State r2 = com.argusoft.sewa.android.app.component.ZoomImage.State.FLING
                if (r1 != r2) goto Lc5
            L3e:
                int r1 = r8.getAction()
                if (r1 == 0) goto La8
                if (r1 == r3) goto La0
                r2 = 2
                if (r1 == r2) goto L4e
                r0 = 6
                if (r1 == r0) goto La0
                goto Lc5
            L4e:
                com.argusoft.sewa.android.app.component.ZoomImage r1 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage$State r1 = com.argusoft.sewa.android.app.component.ZoomImage.access$1000(r1)
                com.argusoft.sewa.android.app.component.ZoomImage$State r2 = com.argusoft.sewa.android.app.component.ZoomImage.State.DRAG
                if (r1 != r2) goto Lc5
                float r1 = r0.x
                android.graphics.PointF r2 = r6.last
                float r2 = r2.x
                float r1 = r1 - r2
                float r2 = r0.y
                android.graphics.PointF r4 = r6.last
                float r4 = r4.y
                float r2 = r2 - r4
                com.argusoft.sewa.android.app.component.ZoomImage r4 = com.argusoft.sewa.android.app.component.ZoomImage.this
                int r4 = com.argusoft.sewa.android.app.component.ZoomImage.access$1700(r4)
                float r4 = (float) r4
                com.argusoft.sewa.android.app.component.ZoomImage r5 = com.argusoft.sewa.android.app.component.ZoomImage.this
                float r5 = com.argusoft.sewa.android.app.component.ZoomImage.access$1800(r5)
                float r1 = r6.getFixDragTrans(r1, r4, r5)
                com.argusoft.sewa.android.app.component.ZoomImage r4 = com.argusoft.sewa.android.app.component.ZoomImage.this
                int r4 = com.argusoft.sewa.android.app.component.ZoomImage.access$1900(r4)
                float r4 = (float) r4
                com.argusoft.sewa.android.app.component.ZoomImage r5 = com.argusoft.sewa.android.app.component.ZoomImage.this
                float r5 = com.argusoft.sewa.android.app.component.ZoomImage.access$2000(r5)
                float r2 = r6.getFixDragTrans(r2, r4, r5)
                com.argusoft.sewa.android.app.component.ZoomImage r4 = com.argusoft.sewa.android.app.component.ZoomImage.this
                android.graphics.Matrix r4 = com.argusoft.sewa.android.app.component.ZoomImage.access$2100(r4)
                r4.postTranslate(r1, r2)
                com.argusoft.sewa.android.app.component.ZoomImage r1 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage.access$2200(r1)
                android.graphics.PointF r1 = r6.last
                float r2 = r0.x
                float r0 = r0.y
                r1.set(r2, r0)
                goto Lc5
            La0:
                com.argusoft.sewa.android.app.component.ZoomImage r0 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage$State r1 = com.argusoft.sewa.android.app.component.ZoomImage.State.NONE
                com.argusoft.sewa.android.app.component.ZoomImage.access$1600(r0, r1)
                goto Lc5
            La8:
                android.graphics.PointF r1 = r6.last
                r1.set(r0)
                com.argusoft.sewa.android.app.component.ZoomImage r0 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage$Fling r0 = com.argusoft.sewa.android.app.component.ZoomImage.access$800(r0)
                if (r0 == 0) goto Lbe
                com.argusoft.sewa.android.app.component.ZoomImage r0 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage$Fling r0 = com.argusoft.sewa.android.app.component.ZoomImage.access$800(r0)
                r0.cancelFling()
            Lbe:
                com.argusoft.sewa.android.app.component.ZoomImage r0 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage$State r1 = com.argusoft.sewa.android.app.component.ZoomImage.State.DRAG
                com.argusoft.sewa.android.app.component.ZoomImage.access$1600(r0, r1)
            Lc5:
                com.argusoft.sewa.android.app.component.ZoomImage r0 = com.argusoft.sewa.android.app.component.ZoomImage.this
                android.graphics.Matrix r1 = com.argusoft.sewa.android.app.component.ZoomImage.access$2100(r0)
                r0.setImageMatrix(r1)
                com.argusoft.sewa.android.app.component.ZoomImage r0 = com.argusoft.sewa.android.app.component.ZoomImage.this
                android.view.View$OnTouchListener r0 = com.argusoft.sewa.android.app.component.ZoomImage.access$2300(r0)
                if (r0 == 0) goto Ldf
                com.argusoft.sewa.android.app.component.ZoomImage r0 = com.argusoft.sewa.android.app.component.ZoomImage.this
                android.view.View$OnTouchListener r0 = com.argusoft.sewa.android.app.component.ZoomImage.access$2300(r0)
                r0.onTouch(r7, r8)
            Ldf:
                com.argusoft.sewa.android.app.component.ZoomImage r7 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage$OnTouchImageViewListener r7 = com.argusoft.sewa.android.app.component.ZoomImage.access$2400(r7)
                if (r7 == 0) goto Lf0
                com.argusoft.sewa.android.app.component.ZoomImage r7 = com.argusoft.sewa.android.app.component.ZoomImage.this
                com.argusoft.sewa.android.app.component.ZoomImage$OnTouchImageViewListener r7 = com.argusoft.sewa.android.app.component.ZoomImage.access$2400(r7)
                r7.onMove()
            Lf0:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.component.ZoomImage.PrivateOnTouchListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    private class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private ScaleListener() {
        }

        /* synthetic */ ScaleListener(ZoomImage zoomImage, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            ZoomImage.this.setState(State.ZOOM);
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            ZoomImage.this.scaleImage(scaleGestureDetector.getScaleFactor(), scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY(), true);
            if (ZoomImage.this.touchImageViewListener == null) {
                return true;
            }
            ZoomImage.this.touchImageViewListener.onMove();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            super.onScaleEnd(scaleGestureDetector);
            ZoomImage.this.setState(State.NONE);
            float f = ZoomImage.this.normalizedScale;
            boolean z = true;
            if (ZoomImage.this.normalizedScale > ZoomImage.this.maxScale) {
                f = ZoomImage.this.maxScale;
            } else if (ZoomImage.this.normalizedScale < ZoomImage.this.minScale) {
                f = ZoomImage.this.minScale;
            } else {
                z = false;
            }
            float f2 = f;
            if (z) {
                ZoomImage.this.compatPostOnAnimation(ZoomImage.this.new DoubleTapZoom(f2, r4.viewWidth / 2.0f, ZoomImage.this.viewHeight / 2.0f, true));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scaleImage(double d, float f, float f2, boolean z) {
        float f3;
        float f4;
        if (z) {
            f3 = this.superMinScale;
            f4 = this.superMaxScale;
        } else {
            f3 = this.minScale;
            f4 = this.maxScale;
        }
        float f5 = this.normalizedScale;
        float f6 = (float) (f5 * d);
        this.normalizedScale = f6;
        if (f6 > f4) {
            this.normalizedScale = f4;
            d = f4 / f5;
        } else if (f6 < f3) {
            this.normalizedScale = f3;
            d = f3 / f5;
        }
        float f7 = (float) d;
        this.matrix.postScale(f7, f7, f, f2);
        fixScaleTrans();
    }

    private class DoubleTapZoom implements Runnable {
        private static final float ZOOM_TIME = 500.0f;
        private final float bitmapX;
        private final float bitmapY;
        private final PointF endTouch;
        private final AccelerateDecelerateInterpolator interpolator = new AccelerateDecelerateInterpolator();
        private final long startTime;
        private final PointF startTouch;
        private final float startZoom;
        private final boolean stretchImageToSuper;
        private final float targetZoom;

        DoubleTapZoom(float f, float f2, float f3, boolean z) {
            ZoomImage.this.setState(State.ANIMATE_ZOOM);
            this.startTime = System.currentTimeMillis();
            this.startZoom = ZoomImage.this.normalizedScale;
            this.targetZoom = f;
            this.stretchImageToSuper = z;
            PointF pointFTransformCoordTouchToBitmap = ZoomImage.this.transformCoordTouchToBitmap(f2, f3, false);
            float f4 = pointFTransformCoordTouchToBitmap.x;
            this.bitmapX = f4;
            float f5 = pointFTransformCoordTouchToBitmap.y;
            this.bitmapY = f5;
            this.startTouch = transformCoordBitmapToTouch(f4, f5);
            this.endTouch = new PointF(ZoomImage.this.viewWidth / 2.0f, ZoomImage.this.viewHeight / 2.0f);
        }

        private PointF transformCoordBitmapToTouch(float f, float f2) {
            ZoomImage.this.matrix.getValues(ZoomImage.this.m);
            return new PointF(ZoomImage.this.m[2] + (ZoomImage.this.getImageWidth() * (f / ZoomImage.this.getDrawable().getIntrinsicWidth())), ZoomImage.this.m[5] + (ZoomImage.this.getImageHeight() * (f2 / ZoomImage.this.getDrawable().getIntrinsicHeight())));
        }

        @Override // java.lang.Runnable
        public void run() {
            float fInterpolate = interpolate();
            ZoomImage.this.scaleImage(calculateDeltaScale(fInterpolate), this.bitmapX, this.bitmapY, this.stretchImageToSuper);
            translateImageToCenterTouchPosition(fInterpolate);
            ZoomImage.this.fixScaleTrans();
            ZoomImage zoomImage = ZoomImage.this;
            zoomImage.setImageMatrix(zoomImage.matrix);
            if (ZoomImage.this.touchImageViewListener != null) {
                ZoomImage.this.touchImageViewListener.onMove();
            }
            if (fInterpolate < 1.0f) {
                ZoomImage.this.compatPostOnAnimation(this);
            } else {
                ZoomImage.this.setState(State.NONE);
            }
        }

        private void translateImageToCenterTouchPosition(float f) {
            float f2 = this.startTouch.x + ((this.endTouch.x - this.startTouch.x) * f);
            float f3 = this.startTouch.y + (f * (this.endTouch.y - this.startTouch.y));
            PointF pointFTransformCoordBitmapToTouch = transformCoordBitmapToTouch(this.bitmapX, this.bitmapY);
            ZoomImage.this.matrix.postTranslate(f2 - pointFTransformCoordBitmapToTouch.x, f3 - pointFTransformCoordBitmapToTouch.y);
        }

        private float interpolate() {
            return this.interpolator.getInterpolation(Math.min(1.0f, (System.currentTimeMillis() - this.startTime) / ZOOM_TIME));
        }

        private double calculateDeltaScale(float f) {
            float f2 = this.startZoom;
            return (f2 + (f * (this.targetZoom - f2))) / ZoomImage.this.normalizedScale;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointF transformCoordTouchToBitmap(float f, float f2, boolean z) {
        this.matrix.getValues(this.m);
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        float[] fArr = this.m;
        float f3 = fArr[2];
        float f4 = fArr[5];
        float imageWidth = ((f - f3) * intrinsicWidth) / getImageWidth();
        float imageHeight = ((f2 - f4) * intrinsicHeight) / getImageHeight();
        if (z) {
            imageWidth = Math.min(Math.max(imageWidth, 0.0f), intrinsicWidth);
            imageHeight = Math.min(Math.max(imageHeight, 0.0f), intrinsicHeight);
        }
        return new PointF(imageWidth, imageHeight);
    }

    private class Fling implements Runnable {
        int currX;
        int currY;
        CompatScroller scroller;

        Fling(int i, int i2) {
            int imageWidth;
            int i3;
            int imageHeight;
            int i4;
            ZoomImage.this.setState(State.FLING);
            this.scroller = new CompatScroller(ZoomImage.this.context);
            ZoomImage.this.matrix.getValues(ZoomImage.this.m);
            int i5 = (int) ZoomImage.this.m[2];
            int i6 = (int) ZoomImage.this.m[5];
            if (ZoomImage.this.getImageWidth() > ZoomImage.this.viewWidth) {
                imageWidth = ZoomImage.this.viewWidth - ((int) ZoomImage.this.getImageWidth());
                i3 = 0;
            } else {
                imageWidth = i5;
                i3 = imageWidth;
            }
            if (ZoomImage.this.getImageHeight() > ZoomImage.this.viewHeight) {
                imageHeight = ZoomImage.this.viewHeight - ((int) ZoomImage.this.getImageHeight());
                i4 = 0;
            } else {
                imageHeight = i6;
                i4 = imageHeight;
            }
            this.scroller.fling(i5, i6, i, i2, imageWidth, i3, imageHeight, i4);
            this.currX = i5;
            this.currY = i6;
        }

        public void cancelFling() {
            if (this.scroller != null) {
                ZoomImage.this.setState(State.NONE);
                this.scroller.forceFinished(true);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ZoomImage.this.touchImageViewListener != null) {
                ZoomImage.this.touchImageViewListener.onMove();
            }
            if (this.scroller.isFinished()) {
                this.scroller = null;
                return;
            }
            if (this.scroller.computeScrollOffset()) {
                int currX = this.scroller.getCurrX();
                int currY = this.scroller.getCurrY();
                int i = currX - this.currX;
                int i2 = currY - this.currY;
                this.currX = currX;
                this.currY = currY;
                ZoomImage.this.matrix.postTranslate(i, i2);
                ZoomImage.this.fixTrans();
                ZoomImage zoomImage = ZoomImage.this;
                zoomImage.setImageMatrix(zoomImage.matrix);
                ZoomImage.this.compatPostOnAnimation(this);
            }
        }
    }

    private static class CompatScroller {
        boolean isPreGingerbread = false;
        OverScroller overScroller;
        Scroller scroller;

        public CompatScroller(Context context) {
            this.overScroller = new OverScroller(context);
        }

        public void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (this.isPreGingerbread) {
                this.scroller.fling(i, i2, i3, i4, i5, i6, i7, i8);
            } else {
                this.overScroller.fling(i, i2, i3, i4, i5, i6, i7, i8);
            }
        }

        public void forceFinished(boolean z) {
            if (this.isPreGingerbread) {
                this.scroller.forceFinished(z);
            } else {
                this.overScroller.forceFinished(z);
            }
        }

        public boolean isFinished() {
            if (this.isPreGingerbread) {
                return this.scroller.isFinished();
            }
            return this.overScroller.isFinished();
        }

        public boolean computeScrollOffset() {
            if (this.isPreGingerbread) {
                return this.scroller.computeScrollOffset();
            }
            this.overScroller.computeScrollOffset();
            return this.overScroller.computeScrollOffset();
        }

        public int getCurrX() {
            if (this.isPreGingerbread) {
                return this.scroller.getCurrX();
            }
            return this.overScroller.getCurrX();
        }

        public int getCurrY() {
            if (this.isPreGingerbread) {
                return this.scroller.getCurrY();
            }
            return this.overScroller.getCurrY();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void compatPostOnAnimation(Runnable runnable) {
        postOnAnimation(runnable);
    }

    private static class ZoomVariables {
        private final float focusX;
        private final float focusY;
        private final float scale;
        private final ImageView.ScaleType scaleType;

        public ZoomVariables(float f, float f2, float f3, ImageView.ScaleType scaleType) {
            this.scale = f;
            this.focusX = f2;
            this.focusY = f3;
            this.scaleType = scaleType;
        }
    }
}
