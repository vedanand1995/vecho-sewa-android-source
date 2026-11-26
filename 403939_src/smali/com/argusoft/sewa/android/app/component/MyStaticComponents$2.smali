.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$2;
.super Ljava/lang/Object;
.source "MyStaticComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->addTooltip(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tooltip:Lcom/tooltip/Tooltip;


# direct methods
.method constructor <init>(Lcom/tooltip/Tooltip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$2;->val$tooltip:Lcom/tooltip/Tooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 298
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$2;->val$tooltip:Lcom/tooltip/Tooltip;

    invoke-virtual {p1}, Lcom/tooltip/Tooltip;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$2;->val$tooltip:Lcom/tooltip/Tooltip;

    invoke-virtual {p1}, Lcom/tooltip/Tooltip;->dismiss()V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$2;->val$tooltip:Lcom/tooltip/Tooltip;

    invoke-virtual {p1}, Lcom/tooltip/Tooltip;->show()V

    :goto_0
    return-void
.end method
