.class public Lcom/argusoft/sewa/android/app/component/MyExpandedListView;
.super Landroid/widget/ListView;
.source "MyExpandedListView.java"


# instance fields
.field private expanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->expanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->expanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->expanded:Z

    return-void
.end method

.method private isExpanded()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->expanded:Z

    return v0
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x1fffffff

    const/high16 v0, -0x80000000

    .line 36
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 38
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 40
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->expanded:Z

    return-void
.end method
