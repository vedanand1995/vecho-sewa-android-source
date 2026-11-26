.class public Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "QRScannerActivity.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;


# instance fields
.field private barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private capture:Lcom/journeyapps/barcodescanner/CaptureManager;

.field private isFlashLightOn:Z

.field private switchFlashlightButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->isFlashLightOn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->switchFlashlight()V

    return-void
.end method

.method private hasFlash()Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private switchFlashlight()V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->isFlashLightOn:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOff()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->isFlashLightOn:Z

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOn()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->isFlashLightOn:Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 31
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 32
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_qr_scanner:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->setContentView(I)V

    .line 36
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->zxing_barcode_scanner:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 39
    invoke-virtual {v0, p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchListener(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;)V

    .line 42
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->switch_flashlight:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->switchFlashlightButton:Landroid/widget/Button;

    .line 46
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->hasFlash()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->switchFlashlightButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->switchFlashlightButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity$1;-><init>(Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :goto_0
    new-instance v0, Lcom/journeyapps/barcodescanner/CaptureManager;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-direct {v0, p0, v1}, Lcom/journeyapps/barcodescanner/CaptureManager;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    .line 59
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->initializeFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 60
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->decode()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTorchOff()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->switchFlashlightButton:Landroid/widget/Button;

    sget v1, Lcom/argusoft/sewa/android/app/R$string;->turn_on_flashlight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public onTorchOn()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;->switchFlashlightButton:Landroid/widget/Button;

    sget v1, Lcom/argusoft/sewa/android/app/R$string;->turn_off_flashlight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
