.class Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;
.super Ljava/lang/Object;
.source "ZoomImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/ZoomImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomVariables"
.end annotation


# instance fields
.field private final focusX:F

.field private final focusY:F

.field private final scale:F

.field private final scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->scale:F

    .line 895
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->focusX:F

    .line 896
    iput p3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->focusY:F

    .line 897
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;)F
    .locals 0

    .line 887
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->scale:F

    return p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;)F
    .locals 0

    .line 887
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->focusX:F

    return p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;)F
    .locals 0

    .line 887
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->focusY:F

    return p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 887
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method
