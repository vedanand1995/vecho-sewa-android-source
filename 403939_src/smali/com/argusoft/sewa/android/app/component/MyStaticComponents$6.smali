.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;
.super Landroid/text/style/ClickableSpan;
.source "MyStaticComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->addHelpVideo(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dataMap:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;->val$dataMap:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 425
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6$1;-><init>(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;)V

    .line 432
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6$1;->start()V

    return-void
.end method
