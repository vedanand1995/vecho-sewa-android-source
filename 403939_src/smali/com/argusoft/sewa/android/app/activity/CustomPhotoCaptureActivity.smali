.class public Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "CustomPhotoCaptureActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# static fields
.field private static final CHOOSE_PHOTO_FROM_GALLERY:I = 0x65


# instance fields
.field private final currentActivity:Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;

.field private mCamera:Landroid/hardware/Camera;

.field photo:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 55
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->currentActivity:Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;)Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->currentActivity:Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;)Landroid/hardware/Camera;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method private getCameraInstance()Landroid/hardware/Camera;
    .locals 3

    .line 112
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
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

    .line 200
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 201
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 202
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
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 209
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "IMG_"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ".jpg"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 211
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->context:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/argusoft/sewa/android/app/util/FileUtilsNewKt;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 212
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_2

    .line 214
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result p3

    const/4 v2, 0x1

    if-ge p3, v2, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const/16 v2, 0x3cc3

    .line 218
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 219
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 221
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 222
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 226
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->recyclerView:I

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    .line 228
    invoke-virtual {p3, v1, p2, p1, v2}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->addImage(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 229
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->getUniqueIdList()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 232
    :goto_0
    const-string p1, "Photo captured"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_1
    const-string p1, "Image not captured, please try again..."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->finish()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->photo_capture:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    .line 73
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/CameraPreview;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/CameraPreview;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    .line 74
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->camera_preview:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->button_capture:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 78
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->button_upload:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$2;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6

    const-string p2, "IMG_"

    .line 123
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->photo:Landroid/graphics/Bitmap;

    .line 124
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 125
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->photo:Landroid/graphics/Bitmap;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->photo:Landroid/graphics/Bitmap;

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->photo:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 127
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v3, v3, 0x2

    .line 126
    invoke-static {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/FileUtils;->getInstance()Lcom/argusoft/sewa/android/app/util/FileUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->photo:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_IMAGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/argusoft/sewa/android/app/util/FileUtils;->convertBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v3, :cond_3

    .line 133
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 136
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0x3cc3

    .line 137
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 142
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 145
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->recyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v4, p2, v0, v1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->addImage(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 148
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->getUniqueIdList()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 151
    :goto_0
    const-string p1, "Photo captured"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_2
    const-string p1, "Image not captured, please try again..."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 105
    const-string v0, "TeCHO+ Camera"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method
