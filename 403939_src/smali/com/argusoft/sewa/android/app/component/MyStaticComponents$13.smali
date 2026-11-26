.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;
.super Ljava/lang/Object;
.source "MyStaticComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getVideoShow(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataMap:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;)Landroid/content/Context;
    .locals 0

    .line 1003
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;)Ljava/lang/String;
    .locals 0

    .line 1003
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->dataMap:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1016
    :try_start_0
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->context:Landroid/content/Context;

    const-string v1, "Please wait...."

    invoke-direct {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 1019
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;-><init>(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;Lcom/argusoft/sewa/android/app/component/MyProcessDialog;)V

    .line 1029
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1031
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const-string v1, "SHOW_VIDEO"

    invoke-interface {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->context:Landroid/content/Context;

    .line 1009
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->dataMap:Ljava/lang/String;

    return-object p0
.end method
