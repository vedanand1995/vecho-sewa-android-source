.class Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 7

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 53
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v3, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 55
    aget p4, v2, v4

    sub-int/2addr p4, p2

    int-to-float p4, p4

    add-float/2addr p4, v0

    .line 56
    aget p5, v2, v3

    sub-int/2addr p5, p3

    int-to-float p5, p5

    add-float/2addr p5, v1

    :cond_0
    sub-float v2, p4, v0

    .line 59
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    sub-float p2, p5, v1

    .line 60
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int v5, p3, p2

    .line 62
    invoke-virtual {p0, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 63
    invoke-virtual {p0, p5}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float p2, p4, p6

    if-nez p2, :cond_1

    cmpl-float p2, p5, p7

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_1
    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 p3, 0x2

    new-array v6, p3, [F

    aput p4, v6, v4

    aput p6, v6, v3

    .line 68
    invoke-static {p2, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array p6, p3, [F

    aput p5, p6, v4

    aput p7, p6, v3

    .line 69
    invoke-static {p4, p6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, p3, v4

    aput-object p4, p3, v3

    .line 67
    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 71
    new-instance v4, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object p3, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object p1, v4

    move-object p2, p0

    move p4, v2

    move p5, v5

    move p6, v0

    move p7, v1

    invoke-direct/range {p1 .. p7}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    .line 73
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    invoke-static {v3, v4}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 75
    invoke-virtual {v3, p8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v3
.end method
