.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;
.super Ljava/lang/Object;
.source "MyStaticComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMandatoryVideoShow(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Integer;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataMap:Ljava/lang/String;

.field private questionId:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;)Landroid/content/Context;
    .locals 0

    .line 1050
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;)Ljava/lang/String;
    .locals 0

    .line 1050
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;->dataMap:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;)Ljava/lang/Integer;
    .locals 0

    .line 1050
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;->questionId:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1066
    :try_start_0
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;->context:Landroid/content/Context;

    const-string v1, "Please wait...."

    invoke-direct {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 1069
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14$1;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14$1;-><init>(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;Lcom/argusoft/sewa/android/app/component/MyProcessDialog;)V

    .line 1080
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1082
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const-string v1, "SHOW_VIDEO"

    invoke-interface {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;->context:Landroid/content/Context;

    .line 1057
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;->dataMap:Ljava/lang/String;

    .line 1058
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;->questionId:Ljava/lang/Integer;

    return-object p0
.end method
