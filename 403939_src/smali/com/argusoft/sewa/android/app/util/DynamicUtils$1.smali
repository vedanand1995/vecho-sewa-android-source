.class Lcom/argusoft/sewa/android/app/util/DynamicUtils$1;
.super Ljava/lang/Object;
.source "DynamicUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicVaccinations(Landroid/content/Context;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1157
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1158
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
