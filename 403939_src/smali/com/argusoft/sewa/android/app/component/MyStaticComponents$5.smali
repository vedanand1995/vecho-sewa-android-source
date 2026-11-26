.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;
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
.field final synthetic val$dataSources:Ljava/util/List;

.field final synthetic val$mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$dataSources:Ljava/util/List;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 389
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;-><init>(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;)V

    .line 413
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5$1;->start()V

    return-void
.end method
