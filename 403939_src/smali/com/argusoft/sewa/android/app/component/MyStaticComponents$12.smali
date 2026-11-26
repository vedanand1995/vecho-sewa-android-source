.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$12;
.super Ljava/lang/Object;
.source "MyStaticComponents.java"

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getYesNoToggleButton(Landroid/content/Context;)Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 2

    add-int/lit16 p2, p2, -0x2712

    .line 892
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    const/4 p3, 0x0

    .line 893
    invoke-virtual {p1, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    .line 894
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 895
    invoke-virtual {v0, p3}, Lcom/google/android/material/button/MaterialButton;->setSelected(Z)V

    .line 896
    invoke-virtual {p1, p3}, Lcom/google/android/material/button/MaterialButton;->setSelected(Z)V

    .line 897
    invoke-virtual {p2, v1}, Lcom/google/android/material/button/MaterialButton;->setSelected(Z)V

    return-void
.end method
