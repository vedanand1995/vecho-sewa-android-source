package com.argusoft.sewa.android.app.treeview.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.Scroller;

/* loaded from: classes.dex */
public class TwoDScrollView extends FrameLayout {
    static final int ANIMATED_SCROLL_GAP = 250;
    static final float MAX_SCROLL_FACTOR = 0.5f;
    private View mChildToScrollTo;
    private boolean mIsBeingDragged;
    private boolean mIsLayoutDirty;
    private float mLastMotionX;
    private float mLastMotionY;
    private long mLastScroll;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private Scroller mScroller;
    private final Rect mTempRect;
    private int mTouchSlop;
    private boolean mTwoDScrollViewMovedFocus;
    private VelocityTracker mVelocityTracker;

    private int clamp(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    public TwoDScrollView(Context context) {
        super(context);
        this.mTempRect = new Rect();
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        initTwoDScrollView();
    }

    public TwoDScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect = new Rect();
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        initTwoDScrollView();
    }

    public TwoDScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        initTwoDScrollView();
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (getScrollY() < verticalFadingEdgeLength) {
            return getScrollY() / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    protected float getLeftFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        if (getScrollX() < horizontalFadingEdgeLength) {
            return getScrollX() / horizontalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    protected float getRightFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        int right = (getChildAt(0).getRight() - getScrollX()) - (getWidth() - getPaddingRight());
        if (right < horizontalFadingEdgeLength) {
            return right / horizontalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmountVertical() {
        return (int) (getHeight() * MAX_SCROLL_FACTOR);
    }

    public int getMaxScrollAmountHorizontal() {
        return (int) (getWidth() * MAX_SCROLL_FACTOR);
    }

    private void initTwoDScrollView() {
        this.mScroller = new Scroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct parent");
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct parent");
        }
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct parent");
        }
        super.addView(view, layoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct parent");
        }
        super.addView(view, i, layoutParams);
    }

    private boolean canScroll() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            return getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom() || getWidth() < (childAt.getWidth() + getPaddingLeft()) + getPaddingRight();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        return executeKeyEvent(keyEvent);
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        this.mTempRect.setEmpty();
        if (!canScroll()) {
            if (!isFocused()) {
                return false;
            }
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 19:
                if (!keyEvent.isAltPressed()) {
                    return arrowScroll(33, false);
                }
                return fullScroll(33, false);
            case 20:
                if (!keyEvent.isAltPressed()) {
                    return arrowScroll(130, false);
                }
                return fullScroll(130, false);
            case 21:
                if (!keyEvent.isAltPressed()) {
                    return arrowScroll(17, true);
                }
                return fullScroll(17, true);
            case 22:
                if (!keyEvent.isAltPressed()) {
                    return arrowScroll(66, true);
                }
                return fullScroll(66, true);
            default:
                return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0042  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getAction()
            r1 = 1
            r2 = 2
            if (r0 != r2) goto Ld
            boolean r3 = r5.mIsBeingDragged
            if (r3 == 0) goto Ld
            return r1
        Ld:
            boolean r3 = r5.canScroll()
            r4 = 0
            if (r3 != 0) goto L17
            r5.mIsBeingDragged = r4
            return r4
        L17:
            float r3 = r6.getY()
            float r6 = r6.getX()
            if (r0 == 0) goto L45
            if (r0 == r1) goto L42
            if (r0 == r2) goto L29
            r6 = 3
            if (r0 == r6) goto L42
            goto L52
        L29:
            float r0 = r5.mLastMotionY
            float r3 = r3 - r0
            float r0 = java.lang.Math.abs(r3)
            int r0 = (int) r0
            float r2 = r5.mLastMotionX
            float r6 = r6 - r2
            float r6 = java.lang.Math.abs(r6)
            int r6 = (int) r6
            int r2 = r5.mTouchSlop
            if (r0 > r2) goto L3f
            if (r6 <= r2) goto L52
        L3f:
            r5.mIsBeingDragged = r1
            goto L52
        L42:
            r5.mIsBeingDragged = r4
            goto L52
        L45:
            r5.mLastMotionY = r3
            r5.mLastMotionX = r6
            android.widget.Scroller r6 = r5.mScroller
            boolean r6 = r6.isFinished()
            r6 = r6 ^ r1
            r5.mIsBeingDragged = r6
        L52:
            boolean r6 = r5.mIsBeingDragged
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.treeview.view.TwoDScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.treeview.view.TwoDScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private View findFocusableViewInMyBounds(boolean z, int i, boolean z2, int i2, View view) {
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength() / 2;
        int i3 = i + verticalFadingEdgeLength;
        int height = (i + getHeight()) - verticalFadingEdgeLength;
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength() / 2;
        int i4 = i2 + horizontalFadingEdgeLength;
        int width = (i2 + getWidth()) - horizontalFadingEdgeLength;
        return (view == null || view.getTop() >= height || view.getBottom() <= i3 || view.getLeft() >= width || view.getRight() <= i4) ? findFocusableViewInBounds(z, i3, height, z2, i4, width) : view;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.view.View findFocusableViewInBounds(boolean r19, int r20, int r21, boolean r22, int r23, int r24) {
        /*
            r18 = this;
            r0 = r20
            r1 = r21
            r2 = r23
            r3 = r24
            r4 = 2
            r5 = r18
            java.util.ArrayList r4 = r5.getFocusables(r4)
            int r6 = r4.size()
            r7 = 0
            r9 = 0
            r10 = 0
        L16:
            if (r9 >= r6) goto L87
            java.lang.Object r11 = r4.get(r9)
            android.view.View r11 = (android.view.View) r11
            int r12 = r11.getTop()
            int r13 = r11.getBottom()
            int r14 = r11.getLeft()
            int r15 = r11.getRight()
            if (r0 >= r13) goto L84
            if (r12 >= r1) goto L84
            if (r2 >= r15) goto L84
            if (r14 >= r3) goto L84
            r16 = 1
            if (r0 >= r12) goto L43
            if (r13 >= r1) goto L43
            if (r2 >= r14) goto L43
            if (r15 >= r3) goto L43
            r17 = 1
            goto L45
        L43:
            r17 = 0
        L45:
            if (r7 != 0) goto L4b
            r7 = r11
            r10 = r17
            goto L84
        L4b:
            if (r19 == 0) goto L53
            int r8 = r7.getTop()
            if (r12 < r8) goto L5b
        L53:
            if (r19 != 0) goto L5d
            int r8 = r7.getBottom()
            if (r13 <= r8) goto L5d
        L5b:
            r8 = 1
            goto L5e
        L5d:
            r8 = 0
        L5e:
            if (r22 == 0) goto L66
            int r12 = r7.getLeft()
            if (r14 < r12) goto L6e
        L66:
            if (r22 != 0) goto L70
            int r12 = r7.getRight()
            if (r15 <= r12) goto L70
        L6e:
            r12 = 1
            goto L71
        L70:
            r12 = 0
        L71:
            if (r10 == 0) goto L7a
            if (r17 == 0) goto L84
            if (r8 == 0) goto L84
            if (r12 == 0) goto L84
            goto L83
        L7a:
            if (r17 == 0) goto L7f
            r7 = r11
            r10 = 1
            goto L84
        L7f:
            if (r8 == 0) goto L84
            if (r12 == 0) goto L84
        L83:
            r7 = r11
        L84:
            int r9 = r9 + 1
            goto L16
        L87:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.treeview.view.TwoDScrollView.findFocusableViewInBounds(boolean, int, int, boolean, int, int):android.view.View");
    }

    public boolean fullScroll(int i, boolean z) {
        int childCount;
        int childCount2;
        if (!z) {
            boolean z2 = i == 130;
            int height = getHeight();
            this.mTempRect.top = 0;
            this.mTempRect.bottom = height;
            if (z2 && (childCount2 = getChildCount()) > 0) {
                this.mTempRect.bottom = getChildAt(childCount2 - 1).getBottom();
                Rect rect = this.mTempRect;
                rect.top = rect.bottom - height;
            }
            return scrollAndFocus(i, this.mTempRect.top, this.mTempRect.bottom, 0, 0, 0);
        }
        boolean z3 = i == 130;
        int width = getWidth();
        this.mTempRect.left = 0;
        this.mTempRect.right = width;
        if (z3 && (childCount = getChildCount()) > 0) {
            this.mTempRect.right = getChildAt(childCount - 1).getBottom();
            Rect rect2 = this.mTempRect;
            rect2.left = rect2.right - width;
        }
        return scrollAndFocus(0, 0, 0, i, this.mTempRect.top, this.mTempRect.bottom);
    }

    private boolean scrollAndFocus(int i, int i2, int i3, int i4, int i5, int i6) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i7 = scrollY + height;
        boolean z = true;
        boolean z2 = i == 33;
        int width = getWidth();
        int scrollX = getScrollX();
        int i8 = scrollX + width;
        boolean z3 = i4 == 33;
        View viewFindFocusableViewInBounds = findFocusableViewInBounds(z2, i2, i3, z3, i5, i6);
        if (viewFindFocusableViewInBounds == null) {
            viewFindFocusableViewInBounds = this;
        }
        if ((i2 < scrollY || i3 > i7) && (i5 < scrollX || i6 > i8)) {
            doScroll(z3 ? i5 - scrollX : i6 - i8, z2 ? i2 - scrollY : i3 - i7);
        } else {
            z = false;
        }
        if (viewFindFocusableViewInBounds != findFocus() && viewFindFocusableViewInBounds.requestFocus(i)) {
            this.mTwoDScrollViewMovedFocus = false;
        }
        return z;
    }

    public boolean arrowScroll(int i, boolean z) {
        int bottom;
        int bottom2;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i);
        int maxScrollAmountHorizontal = z ? getMaxScrollAmountHorizontal() : getMaxScrollAmountVertical();
        if (z) {
            if (viewFindNextFocus != null) {
                viewFindNextFocus.getDrawingRect(this.mTempRect);
                offsetDescendantRectToMyCoords(viewFindNextFocus, this.mTempRect);
                doScroll(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect), 0);
                viewFindNextFocus.requestFocus(i);
                return true;
            }
            if (i == 33 && getScrollY() < maxScrollAmountHorizontal) {
                maxScrollAmountHorizontal = getScrollY();
            } else if (i == 130 && getChildCount() > 0 && (bottom = getChildAt(0).getBottom() - (getScrollY() + getHeight())) < maxScrollAmountHorizontal) {
                maxScrollAmountHorizontal = bottom;
            }
            if (maxScrollAmountHorizontal == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmountHorizontal = -maxScrollAmountHorizontal;
            }
            doScroll(maxScrollAmountHorizontal, 0);
            return true;
        }
        if (viewFindNextFocus != null) {
            viewFindNextFocus.getDrawingRect(this.mTempRect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.mTempRect);
            doScroll(0, computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
            viewFindNextFocus.requestFocus(i);
            return true;
        }
        if (i == 33 && getScrollY() < maxScrollAmountHorizontal) {
            maxScrollAmountHorizontal = getScrollY();
        } else if (i == 130 && getChildCount() > 0 && (bottom2 = getChildAt(0).getBottom() - (getScrollY() + getHeight())) < maxScrollAmountHorizontal) {
            maxScrollAmountHorizontal = bottom2;
        }
        if (maxScrollAmountHorizontal == 0) {
            return false;
        }
        if (i != 130) {
            maxScrollAmountHorizontal = -maxScrollAmountHorizontal;
        }
        doScroll(0, maxScrollAmountHorizontal);
        return true;
    }

    private void doScroll(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return;
        }
        smoothScrollBy(i, i2);
    }

    public final void smoothScrollBy(int i, int i2) {
        if (AnimationUtils.currentAnimationTimeMillis() - this.mLastScroll > 250) {
            this.mScroller.startScroll(getScrollX(), getScrollY(), i, i2);
            awakenScrollBars(this.mScroller.getDuration());
            invalidate();
        } else {
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
            }
            scrollBy(i, i2);
        }
        this.mLastScroll = AnimationUtils.currentAnimationTimeMillis();
    }

    public final void smoothScrollTo(int i, int i2) {
        smoothScrollBy(i - getScrollX(), i2 - getScrollY());
    }

    @Override // android.view.View
    protected int computeVerticalScrollRange() {
        return getChildCount() == 0 ? getHeight() : getChildAt(0).getBottom();
    }

    @Override // android.view.View
    protected int computeHorizontalScrollRange() {
        return getChildCount() == 0 ? getWidth() : getChildAt(0).getRight();
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i, int i2) {
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, 0), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                scrollTo(clamp(currX, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth()), clamp(currY, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight()));
            } else {
                scrollTo(currX, currY);
            }
            if (scrollX != getScrollX() || scrollY != getScrollY()) {
                onScrollChanged(getScrollX(), getScrollY(), scrollX, scrollY);
            }
            postInvalidate();
        }
    }

    private void scrollToChild(View view) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(this.mTempRect);
        if (iComputeScrollDeltaToGetChildRectOnScreen != 0) {
            scrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
        }
    }

    private boolean scrollToChildRect(Rect rect, boolean z) {
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z2 = iComputeScrollDeltaToGetChildRectOnScreen != 0;
        if (z2) {
            if (z) {
                scrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
            } else {
                smoothScrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
            }
        }
        return z2;
    }

    protected int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        int i;
        int i2;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i3 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i3 -= verticalFadingEdgeLength;
        }
        if (rect.bottom > i3 && rect.top > scrollY) {
            if (rect.height() > height) {
                i2 = rect.top - scrollY;
            } else {
                i2 = rect.bottom - i3;
            }
            return Math.min(i2, getChildAt(0).getBottom() - i3);
        }
        if (rect.top >= scrollY || rect.bottom >= i3) {
            return 0;
        }
        if (rect.height() > height) {
            i = 0 - (i3 - rect.bottom);
        } else {
            i = 0 - (scrollY - rect.top);
        }
        return Math.max(i, -getScrollY());
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mTwoDScrollViewMovedFocus) {
            if (!this.mIsLayoutDirty) {
                scrollToChild(view2);
            } else {
                this.mChildToScrollTo = view2;
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        View viewFindNextFocusFromRect;
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        if (rect == null) {
            viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, null, i);
        } else {
            viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        }
        if (viewFindNextFocusFromRect == null) {
            return false;
        }
        return viewFindNextFocusFromRect.requestFocus(i, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return scrollToChildRect(rect, z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.mIsLayoutDirty = true;
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mIsLayoutDirty = false;
        View view = this.mChildToScrollTo;
        if (view != null && isViewDescendantOf(view, this)) {
            scrollToChild(this.mChildToScrollTo);
        }
        this.mChildToScrollTo = null;
        scrollTo(getScrollX(), getScrollY());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus) {
            return;
        }
        viewFindFocus.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(viewFindFocus, this.mTempRect);
        doScroll(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect), computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
    }

    private boolean isViewDescendantOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && isViewDescendantOf((View) parent, view2);
    }

    public void fling(int i, int i2) {
        if (getChildCount() > 0) {
            int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
            int height2 = getChildAt(0).getHeight();
            this.mScroller.fling(getScrollX(), getScrollY(), i, i2, 0, getChildAt(0).getWidth() - ((getWidth() - getPaddingRight()) - getPaddingLeft()), 0, height2 - height);
            boolean z = i2 > 0;
            View viewFindFocusableViewInMyBounds = findFocusableViewInMyBounds(i > 0, this.mScroller.getFinalX(), z, this.mScroller.getFinalY(), findFocus());
            if (viewFindFocusableViewInMyBounds == null) {
                viewFindFocusableViewInMyBounds = this;
            }
            if (viewFindFocusableViewInMyBounds != findFocus()) {
                if (viewFindFocusableViewInMyBounds.requestFocus(z ? 130 : 33)) {
                    this.mTwoDScrollViewMovedFocus = false;
                }
            }
            awakenScrollBars(this.mScroller.getDuration());
            invalidate();
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int iClamp = clamp(i, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int iClamp2 = clamp(i2, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
            if (iClamp == getScrollX() && iClamp2 == getScrollY()) {
                return;
            }
            super.scrollTo(iClamp, iClamp2);
        }
    }
}
