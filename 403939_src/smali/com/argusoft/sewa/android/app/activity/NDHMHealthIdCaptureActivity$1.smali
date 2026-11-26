.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$1;
.super Ljava/lang/Object;
.source "NDHMHealthIdCaptureActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAbhaNumberVerificationScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field len:I

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 396
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$1;->len:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 410
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$1;->len:I

    const/16 v2, 0xc

    const/4 v3, 0x7

    const/4 v4, 0x2

    if-le v0, v1, :cond_1

    .line 412
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 413
    :cond_0
    const-string v0, "-"

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 417
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 418
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_3
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 400
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$1;->len:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
