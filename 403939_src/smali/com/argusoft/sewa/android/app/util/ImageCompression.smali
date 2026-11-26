.class public Lcom/argusoft/sewa/android/app/util/ImageCompression;
.super Landroid/os/AsyncTask;
.source "ImageCompression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/util/ImageCompression$ImageCompressionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final maxHeight:F = 1280.0f

.field private static final maxWidth:F = 1280.0f


# instance fields
.field private actualHeight:I

.field private actualWidth:I

.field private context:Landroid/content/Context;

.field private imageCompressionListener:Lcom/argusoft/sewa/android/app/util/ImageCompression$ImageCompressionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->context:Landroid/content/Context;

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .line 33
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 34
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v1, v0

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 38
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p0

    int-to-float v3, p1

    div-float/2addr v2, v3

    .line 39
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    mul-int p0, p0, v0

    int-to-float p0, p0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    :goto_2
    mul-int p2, v1, v1

    int-to-float p2, p2

    div-float p2, p0, p2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v1
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 173
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 174
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public compressImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 78
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 80
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 82
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualHeight:I

    .line 83
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualWidth:I

    int-to-float v4, v3

    .line 85
    iget v5, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualHeight:I

    int-to-float v6, v5

    div-float/2addr v4, v6

    int-to-float v6, v5

    const/high16 v7, 0x44a00000    # 1280.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    int-to-float v6, v3

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    :cond_0
    const/16 v6, 0x500

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v9, v4, v8

    if-gez v9, :cond_1

    int-to-float v4, v5

    div-float/2addr v7, v4

    int-to-float v3, v3

    mul-float v7, v7, v3

    float-to-int v3, v7

    .line 91
    iput v3, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualWidth:I

    .line 92
    iput v6, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualHeight:I

    goto :goto_0

    :cond_1
    cmpl-float v4, v4, v8

    if-lez v4, :cond_2

    int-to-float v3, v3

    div-float/2addr v7, v3

    int-to-float v3, v5

    mul-float v7, v7, v3

    float-to-int v3, v7

    .line 95
    iput v3, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualHeight:I

    .line 96
    iput v6, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualWidth:I

    goto :goto_0

    .line 98
    :cond_2
    iput v6, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualHeight:I

    .line 99
    iput v6, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualWidth:I

    .line 104
    :cond_3
    :goto_0
    iget v3, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualWidth:I

    iget v4, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualHeight:I

    invoke-static {v0, v3, v4}, Lcom/argusoft/sewa/android/app/util/ImageCompression;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    .line 105
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 106
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 107
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 108
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/16 v1, 0x4000

    .line 109
    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 112
    :try_start_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 118
    :goto_1
    :try_start_1
    iget v1, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualWidth:I

    iget v4, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 v1, 0x0

    .line 123
    :goto_2
    iget v4, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualWidth:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 124
    iget v5, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualHeight:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 125
    iget v0, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualWidth:I

    int-to-float v0, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    .line 126
    iget v7, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualHeight:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    .line 128
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 129
    invoke-virtual {v6, v4, v5, v0, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 131
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 133
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v0, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v7, v5

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v4, v2, v0, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v2, :cond_4

    .line 137
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    :cond_4
    :try_start_2
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 143
    const-string p1, "Orientation"

    invoke-virtual {v0, p1, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    .line 144
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    const/high16 p1, 0x42b40000    # 90.0f

    .line 146
    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    const/high16 p1, 0x43340000    # 180.0f

    .line 148
    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_3

    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    const/high16 p1, 0x43870000    # 270.0f

    .line 150
    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 152
    :cond_7
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 153
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v1

    .line 152
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    :goto_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/util/ImageCompression;->getFilename()Ljava/lang/String;

    move-result-object p1

    .line 160
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 163
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_5
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/util/ImageCompression;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/util/ImageCompression;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFilename()Ljava/lang/String;
    .locals 4

    .line 179
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_IMAGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 186
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMG_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/util/ImageCompression;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->imageCompressionListener:Lcom/argusoft/sewa/android/app/util/ImageCompression$ImageCompressionListener;

    if-eqz v0, :cond_0

    .line 69
    iget v1, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualWidth:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->actualHeight:I

    invoke-interface {v0, p1, v1, v2}, Lcom/argusoft/sewa/android/app/util/ImageCompression$ImageCompressionListener;->onImageCompression(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public setImageCompressionListener(Lcom/argusoft/sewa/android/app/util/ImageCompression$ImageCompressionListener;)Lcom/argusoft/sewa/android/app/util/ImageCompression;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/util/ImageCompression;->imageCompressionListener:Lcom/argusoft/sewa/android/app/util/ImageCompression$ImageCompressionListener;

    return-object p0
.end method
