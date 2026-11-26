.class public Lcom/argusoft/sewa/android/app/component/VerticalTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "VerticalTextView.java"


# instance fields
.field private final topDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getGravity()I

    move-result p1

    .line 19
    invoke-static {p1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p2

    if-eqz p2, :cond_0

    and-int/lit8 p2, p1, 0x70

    const/16 v0, 0x50

    if-ne p2, v0, :cond_0

    and-int/lit8 p1, p1, 0x7

    or-int/lit8 p1, p1, 0x30

    .line 22
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->topDown:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->topDown:Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 41
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->topDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getCompoundPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 54
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getExtendedPaddingTop()I

    move-result v1

    int-to-float v1, v1

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 34
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/VerticalTextView;->setMeasuredDimension(II)V

    return-void
.end method
