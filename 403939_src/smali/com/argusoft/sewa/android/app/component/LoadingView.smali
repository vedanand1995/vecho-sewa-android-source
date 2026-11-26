.class public Lcom/argusoft/sewa/android/app/component/LoadingView;
.super Landroid/widget/LinearLayout;
.source "LoadingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LoadingView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->loading_layout:I

    invoke-static {v0, v1, p0}, Lcom/argusoft/sewa/android/app/component/LoadingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method
