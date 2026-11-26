.class public Lcom/argusoft/sewa/android/app/util/AadharScanUtil;
.super Ljava/lang/Object;
.source "AadharScanUtil.java"


# static fields
.field public static final CO:Ljava/lang/String; = "co"

.field public static final DIST:Ljava/lang/String; = "dist"

.field public static final DOB:Ljava/lang/String; = "dob"

.field public static final DOB_DATE_FORMAT_1:Ljava/lang/String; = "dd-MM-yyyy"

.field public static final DOB_DATE_FORMAT_2:Ljava/lang/String; = "dd/MM/yyyy"

.field public static final DOB_DATE_FORMAT_3:Ljava/lang/String; = "yyyy/MM/dd"

.field public static final DOB_DATE_FORMAT_4:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final EMAIL_HEX:Ljava/lang/String; = "email"

.field public static final GENDER:Ljava/lang/String; = "gender"

.field public static final HOUSE:Ljava/lang/String; = "house"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final LM:Ljava/lang/String; = "lm"

.field public static final LOC:Ljava/lang/String; = "loc"

.field public static final MOBILE_HEX:Ljava/lang/String; = "mobile"

.field public static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER_OF_PARAMS_IN_SECURE_QR_CODE:I = 0xf

.field public static final PC:Ljava/lang/String; = "pc"

.field public static final PO:Ljava/lang/String; = "po"

.field private static final SEPARATOR_BYTE:B = -0x1t

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STREET:Ljava/lang/String; = "street"

.field public static final SUBDIST:Ljava/lang/String; = "subdist"

.field private static final TAG:Ljava/lang/String; = "AadharScanUtil"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final VTC:Ljava/lang/String; = "vtc"

.field public static final YOB:Ljava/lang/String; = "yob"

.field protected static emailMobilePresent:I

.field protected static imageEndIndex:I

.field protected static imageStartIndex:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 311
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 313
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 314
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 315
    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    mul-int/lit8 v5, v2, 0x2

    ushr-int/lit8 v4, v4, 0x4

    .line 316
    aget-char v4, v0, v4

    aput-char v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 317
    aget-char v3, v0, v3

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static decodeData(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/exception/DataException;
        }
    .end annotation

    .line 203
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v1, 0xf

    if-le p0, v1, :cond_3

    const/4 p0, 0x0

    .line 210
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->isValueForNewQRCode(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->emailMobilePresent:I

    goto :goto_1

    .line 214
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->isValueForNewQRCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->emailMobilePresent:I

    const/4 v2, 0x2

    .line 223
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    const-string v3, "uid"

    const/4 v4, 0x4

    invoke-virtual {v1, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string p0, "name"

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string p0, "dob"

    add-int/lit8 v1, v2, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string p0, "gender"

    add-int/lit8 v1, v2, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string p0, "co"

    add-int/lit8 v1, v2, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string p0, "dist"

    add-int/lit8 v1, v2, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string p0, "lm"

    add-int/lit8 v1, v2, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string p0, "house"

    add-int/lit8 v1, v2, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string p0, "loc"

    add-int/lit8 v1, v2, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string p0, "pc"

    add-int/lit8 v1, v2, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string p0, "po"

    add-int/lit8 v1, v2, 0xa

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string p0, "state"

    add-int/lit8 v1, v2, 0xb

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string p0, "street"

    add-int/lit8 v1, v2, 0xc

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string p0, "subdist"

    add-int/lit8 v1, v2, 0xd

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string p0, "vtc"

    add-int/lit8 v2, v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 240
    const-string p1, "AadharScanUtil"

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private static decodeImage([BLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 300
    sget v0, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->imageStartIndex:I

    sget v1, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->imageEndIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 301
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 302
    const-string v0, "image"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static decodeMobileEmail([BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    sget v0, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->emailMobilePresent:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 285
    array-length v0, p0

    add-int/lit16 v0, v0, -0x101

    sput v0, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->imageEndIndex:I

    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :cond_0
    array-length v0, p0

    add-int/lit16 v2, v0, -0x121

    .line 260
    array-length v0, p0

    add-int/lit16 v0, v0, -0x101

    .line 261
    array-length v3, p0

    add-int/lit16 v3, v3, -0x141

    .line 262
    array-length v4, p0

    add-int/lit16 v4, v4, -0x121

    .line 264
    array-length v5, p0

    add-int/lit16 v5, v5, -0x143

    sput v5, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->imageEndIndex:I

    goto :goto_1

    .line 269
    :cond_1
    array-length v0, p0

    add-int/lit16 v0, v0, -0x121

    .line 270
    array-length v3, p0

    add-int/lit16 v3, v3, -0x101

    .line 272
    array-length v4, p0

    add-int/lit16 v4, v4, -0x122

    sput v4, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->imageEndIndex:I

    move v2, v0

    move v0, v3

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_1

    .line 277
    :cond_2
    array-length v0, p0

    add-int/lit16 v0, v0, -0x121

    .line 278
    array-length v3, p0

    add-int/lit16 v3, v3, -0x101

    .line 280
    array-length v4, p0

    add-int/lit16 v4, v4, -0x122

    sput v4, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->imageEndIndex:I

    move v4, v3

    move v3, v0

    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x0

    if-lez v2, :cond_3

    if-lez v0, :cond_3

    add-int/2addr v0, v1

    .line 288
    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    if-lez v3, :cond_4

    if-lez v4, :cond_4

    add-int/2addr v4, v1

    .line 292
    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 294
    :cond_4
    const-string p0, "email"

    invoke-interface {p1, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string p0, "mobile"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static decodeSignature([BLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 247
    array-length v0, p0

    add-int/lit16 v0, v0, -0x101

    .line 248
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/16 v3, 0x100

    invoke-direct {v1, p0, v0, v3, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 249
    const-string p0, "signature"

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static decompressByteArray([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 398
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 399
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 402
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ltz v4, :cond_1

    .line 404
    invoke-virtual {p0, v2, v3, v1}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    .line 406
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 413
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 417
    :cond_0
    const-string v1, "yyyy/MM/dd"

    const-string v2, "yyyy-MM-dd"

    const-string v3, "dd-MM-yyyy"

    const-string v4, "dd/MM/yyyy"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 419
    aget-object v4, v1, v3

    .line 421
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 423
    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v4

    .line 426
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 430
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected dob to be in dd/mm/yyyy or yyyy-mm-dd format, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AadharScanUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static formatGender(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_9

    .line 435
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 438
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "male"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "female"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "transgender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object p0

    .line 442
    :pswitch_0
    const-string p0, "M"

    return-object p0

    .line 445
    :pswitch_1
    const-string p0, "F"

    return-object p0

    .line 450
    :pswitch_2
    const-string p0, "T"

    return-object p0

    :cond_9
    :goto_1
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7608b897 -> :sswitch_7
        -0x4c2f64b4 -> :sswitch_6
        0x66 -> :sswitch_5
        0x6d -> :sswitch_4
        0x6f -> :sswitch_3
        0x74 -> :sswitch_2
        0x33060d -> :sswitch_1
        0x6527f10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAadharScanDataMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getDocumentFromXml(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getDataFromQrXml(Lorg/w3c/dom/Document;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    const-string v0, "\\d{12}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getDataFromQrUid(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 87
    :cond_1
    const-string v0, "[0-9]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getDataFromSecureQr(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 90
    :cond_2
    new-instance p0, Lcom/argusoft/sewa/android/app/exception/DataException;

    const-string v0, "Not an aadhar card"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/exception/DataException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static getAadharTextToBeDisplayedAfterScan(Ljava/util/Map;)Landroid/text/Spannable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 459
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "yob"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "dob"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "pc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    const-string v2, "\n"

    const-string v3, " : "

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 467
    :pswitch_0
    const-string v4, "Name"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 473
    :pswitch_1
    const-string v4, "Year Of Birth"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 461
    :pswitch_2
    const-string v4, "Aadhar Number"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 479
    :pswitch_3
    const-string v4, "Date Of Birth"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 485
    :pswitch_4
    const-string v4, "Pincode"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 494
    :cond_5
    new-instance p0, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xdf3 -> :sswitch_4
        0x18537 -> :sswitch_3
        0x1c450 -> :sswitch_2
        0x1d40c -> :sswitch_1
        0x337a8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 361
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 363
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 365
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static getDataFromQrUid(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    const-string v1, "uid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getDataFromQrXml(Lorg/w3c/dom/Document;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    const-string v1, "uid"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "gender"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "yob"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "co"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "house"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "street"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "lm"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "loc"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "vtc"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "po"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "dist"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "subdist"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "state"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "pc"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "dob"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAttributeOrEmptyString(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 139
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v1, ""

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static getDataFromSecureQr(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    .line 156
    :try_start_0
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->decompressByteArray([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 158
    const-string v2, "AadharScanUtil"

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    return-object v0

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->separateData([B)Ljava/util/List;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->decodeData(Ljava/util/List;Ljava/util/Map;)V

    .line 169
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->decodeSignature([BLjava/util/Map;)V

    .line 170
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->decodeMobileEmail([BLjava/util/Map;)V

    .line 171
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->decodeImage([BLjava/util/Map;)V

    .line 173
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v1, ""

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-object v0

    .line 166
    :cond_1
    new-instance p0, Lcom/argusoft/sewa/android/app/exception/DataException;

    const-string v0, "Invalid QR Code Data, no parts found after splitting by delimiter"

    const/16 v1, 0x190

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/exception/DataException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static getDataFromSecureQrOld(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 327
    :try_start_0
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->decompressByteArray([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 329
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    return-object v0

    .line 336
    :cond_0
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->locateDelimiters([B)[I

    move-result-object v2

    const/4 v3, 0x0

    .line 337
    aget v4, v2, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget v6, v2, v5

    invoke-static {p0, v4, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v4

    .line 338
    const-string v6, "uid"

    const/4 v7, 0x4

    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    aget v3, v2, v5

    add-int/2addr v3, v5

    const/4 v4, 0x2

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "name"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/4 v4, 0x3

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "dob"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    aget v3, v2, v4

    add-int/2addr v3, v5

    aget v4, v2, v7

    invoke-static {p0, v3, v4}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gender"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    aget v3, v2, v7

    add-int/2addr v3, v5

    const/4 v4, 0x5

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "co"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/4 v4, 0x6

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "dist"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/4 v4, 0x7

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "lm"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/16 v4, 0x8

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "house"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/16 v4, 0x9

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "loc"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/16 v4, 0xa

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "pc"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/16 v4, 0xb

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "po"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/16 v4, 0xc

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "state"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/16 v4, 0xd

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "street"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/16 v4, 0xe

    aget v6, v2, v4

    invoke-static {p0, v3, v6}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object v3

    const-string v6, "subdist"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    aget v3, v2, v4

    add-int/2addr v3, v5

    const/16 v4, 0xf

    aget v2, v2, v4

    invoke-static {p0, v3, v2}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getValueInRange([BII)Ljava/lang/String;

    move-result-object p0

    const-string v2, "vtc"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 355
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v1, ""

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static getDocumentFromXml(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 3

    .line 95
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 99
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 101
    const-string v1, "</?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "</\\?"

    const-string v2, "<?"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 105
    :cond_0
    const-string v1, "^<\\?xml ([^>]+)\\?\">"

    const-string v2, "<?xml $1\"?>"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getNextDelimiterIndex([BI)I
    .locals 2

    .line 388
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 389
    aget-byte v0, p0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private static getValueInRange([BII)Ljava/lang/String;
    .locals 1

    .line 383
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static isValueForNewQRCode(Ljava/lang/String;)Z
    .locals 1

    .line 307
    const-string v0, "[0123]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static locateDelimiters([B)[I
    .locals 4

    const/16 v0, 0x10

    .line 370
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xf

    if-gt v1, v3, :cond_0

    .line 374
    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getNextDelimiterIndex([BI)I

    move-result v2

    .line 375
    aput v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static separateData([B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 184
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 185
    aget-byte v3, p0, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_0

    .line 187
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 188
    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 194
    sput v2, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->imageStartIndex:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method
