.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$4;
.super Ljava/lang/Object;
.source "MyStaticComponents.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getFilteredEditText(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$blockedChars:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$4;->val$blockedChars:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isCharAllowed(C)Z
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$4;->val$blockedChars:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    .line 330
    new-instance p4, Ljava/lang/StringBuilder;

    sub-int p5, p3, p2

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p5, 0x1

    move p6, p2

    :goto_0
    if-ge p6, p3, :cond_3

    .line 332
    invoke-interface {p1, p6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 334
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 339
    :cond_0
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$4;->isCharAllowed(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 336
    :cond_2
    :goto_2
    const-string p1, ""

    return-object p1

    :cond_3
    if-eqz p5, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 347
    :cond_4
    instance-of p3, p1, Landroid/text/Spanned;

    if-eqz p3, :cond_5

    .line 348
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 349
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    return-object p3

    :cond_5
    return-object p4
.end method
