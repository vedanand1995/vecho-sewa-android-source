.class public Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "PhotoCaptureWithUploadActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;
    }
.end annotation


# static fields
.field private static final CHOOSE_PHOTO_FROM_GALLERY:I = 0x65

.field private static currentCameraId:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final currentActivity:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;

.field private mCamera:Landroid/hardware/Camera;

.field private myCameraPreview:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 57
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    .line 58
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->currentActivity:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;

    return-void
.end method

.method private getCameraInstance()Landroid/hardware/Camera;
    .locals 3

    .line 202
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 342
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 343
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 344
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

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 3

    .line 143
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 144
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-eq p0, p1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    .line 164
    :cond_3
    :goto_0
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p0, p1, :cond_4

    .line 165
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, v1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    .line 166
    rem-int/lit16 p0, p0, 0x168

    goto :goto_1

    .line 168
    :cond_4
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p0, v1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    .line 170
    :goto_1
    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method private setLastImageForUpload(Landroid/widget/ImageButton;)V
    .locals 11

    .line 175
    const-string v0, "datetaken"

    const-string v1, "mime_type"

    const-string v2, "_id"

    const-string v3, "_data"

    const-string v4, "bucket_display_name"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string v10, "datetaken DESC"

    const/4 v8, 0x0

    .line 183
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 188
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v1, v1, 0x8

    .line 193
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    .line 192
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private storeImage(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 10

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IMG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "??????? Photo Name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    const-string v1, "Photo captured"

    const/16 v2, 0x3cc3

    const-string v3, "Image not captured, please try again..."

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    .line 259
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/FileUtils;->getInstance()Lcom/argusoft/sewa/android/app/util/FileUtils;

    move-result-object p2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_IMAGE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, p1, v7}, Lcom/argusoft/sewa/android/app/util/FileUtils;->convertBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 260
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "??????? Path "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    sget v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    if-ne v7, v4, :cond_0

    return-void

    .line 266
    :cond_0
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    if-nez v4, :cond_1

    return-void

    .line 270
    :cond_1
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-nez v4, :cond_2

    return-void

    .line 274
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_4

    .line 276
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result p2

    if-ge p2, v5, :cond_3

    .line 277
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 278
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 279
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 282
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v3, v3, 0x2

    .line 281
    invoke-static {p1, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 280
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    invoke-virtual {v4, v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 284
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "??????? UniqueId "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 288
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->recyclerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 289
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    const/4 p2, 0x0

    .line 290
    invoke-virtual {p1, v7, v0, p2, v6}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->addImage(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 291
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {p2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->getUniqueIdList()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 294
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 296
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    if-eqz p2, :cond_b

    .line 299
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/FileUtilsNewKt;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 301
    sget v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    if-ne v3, v4, :cond_6

    return-void

    .line 305
    :cond_6
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    if-nez v3, :cond_7

    return-void

    .line 309
    :cond_7
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-nez v3, :cond_8

    return-void

    .line 313
    :cond_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_a

    .line 315
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result p1

    if-ge p1, v5, :cond_9

    .line 316
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 317
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 318
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 320
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 321
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 323
    :cond_9
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 324
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->recyclerView:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 325
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    .line 326
    invoke-virtual {p1, v4, v0, p2, v5}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->addImage(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 327
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {p2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->getUniqueIdList()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 330
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 332
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    const-string p2, "Couldn\'t select picture. Please try with different gallery app."

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 336
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-argusoft-sewa-android-app-activity-PhotoCaptureWithUploadActivity(Landroid/view/View;)V
    .locals 2

    .line 84
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->currentActivity:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const-string v1, "CAMERA"

    invoke-interface {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$1$com-argusoft-sewa-android-app-activity-PhotoCaptureWithUploadActivity(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->myCameraPreview:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 95
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->myCameraPreview:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->myCameraPreview:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 96
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->myCameraPreview:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->destroyDrawingCache()V

    .line 97
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 99
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.PICK"

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    const-string p2, "image/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x65

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-argusoft-sewa-android-app-activity-PhotoCaptureWithUploadActivity(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 3

    .line 110
    sget p2, Lcom/argusoft/sewa/android/app/R$anim;->rotate:I

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->stopPreview()V

    .line 114
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :goto_0
    sget p2, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->currentCameraId:I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 119
    sput p2, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->currentCameraId:I

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 121
    sput p2, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->currentCameraId:I

    .line 123
    :goto_1
    sget p2, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->currentCameraId:I

    invoke-static {p2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->currentActivity:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;

    sget v1, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->currentCameraId:I

    invoke-static {v0, v1, p2}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V

    .line 127
    :try_start_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->myCameraPreview:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :goto_2
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 132
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImageButton;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 234
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 235
    invoke-direct {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->storeImage(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 243
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->finish()V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    const-string p2, "Image not captured, please try again..."

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    .line 248
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p1, p0, p2, p3}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;-><init>(Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->myCameraPreview:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    .line 249
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->camera_preview:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 250
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->myCameraPreview:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 72
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->photo_capture_with_upload:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->setContentView(I)V

    .line 75
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    .line 77
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p1, p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;-><init>(Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->myCameraPreview:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    .line 78
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->camera_preview:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->myCameraPreview:Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$MyCameraPreview;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 81
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->button_capture:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 82
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->button_upload:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 92
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->setLastImageForUpload(Landroid/widget/ImageButton;)V

    .line 93
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->button_switch:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 106
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;Landroid/widget/ImageButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1

    .line 212
    :try_start_0
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 213
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/high16 p2, 0x42b40000    # 90.0f

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->storeImage(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 219
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 139
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    return-void
.end method
