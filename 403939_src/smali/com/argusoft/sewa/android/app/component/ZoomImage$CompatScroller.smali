.class Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;
.super Ljava/lang/Object;
.source "ZoomImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/ZoomImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompatScroller"
.end annotation


# instance fields
.field isPreGingerbread:Z

.field overScroller:Landroid/widget/OverScroller;

.field scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 828
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->isPreGingerbread:Z

    .line 829
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .line 857
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 861
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 12

    move-object v0, p0

    .line 833
    iget-boolean v1, v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->isPreGingerbread:Z

    if-eqz v1, :cond_0

    .line 834
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->scroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 836
    :cond_0
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    :goto_0
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1

    .line 841
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :goto_0
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .line 866
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .line 874
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 849
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method
