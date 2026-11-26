.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$4;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getQRScannerView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentQuestionId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 658
    :try_start_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$4;->currentQuestionId:I

    sput p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    .line 661
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$4;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 662
    const-class v0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;

    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 663
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 666
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;I)Landroid/view/View$OnClickListener;
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$4;->activity:Landroid/app/Activity;

    .line 651
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$4;->currentQuestionId:I

    return-object p0
.end method
