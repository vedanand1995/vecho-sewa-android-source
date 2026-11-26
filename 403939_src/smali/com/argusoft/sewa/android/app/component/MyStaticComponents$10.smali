.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$10;
.super Ljava/lang/Object;
.source "MyStaticComponents.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditTextWithSpecialCharacter(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 531
    new-instance p4, Ljava/lang/StringBuilder;

    sub-int p5, p3, p2

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-ge p2, p3, :cond_2

    .line 533
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    .line 535
    invoke-static {p4}, Ljava/lang/Character;->getType(C)I

    move-result p4

    const/16 p5, 0x13

    if-eq p4, p5, :cond_1

    const/16 p5, 0x1c

    if-ne p4, p5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 537
    :cond_1
    :goto_1
    const-string p1, ""

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
