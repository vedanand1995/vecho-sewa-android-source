.class final enum Lcom/argusoft/sewa/android/app/component/ZoomImage$State;
.super Ljava/lang/Enum;
.source "ZoomImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/ZoomImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/component/ZoomImage$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

.field public static final enum ANIMATE_ZOOM:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

.field public static final enum DRAG:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

.field public static final enum FLING:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

.field public static final enum NONE:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

.field public static final enum ZOOM:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/component/ZoomImage$State;
    .locals 3

    const/4 v0, 0x5

    .line 35
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    sget-object v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->NONE:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->DRAG:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->ZOOM:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->FLING:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->ANIMATE_ZOOM:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->NONE:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const-string v1, "DRAG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->DRAG:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const-string v1, "ZOOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->ZOOM:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const-string v1, "FLING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->FLING:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const-string v1, "ANIMATE_ZOOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->ANIMATE_ZOOM:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-static {}, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->$values()[Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->$VALUES:[Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/component/ZoomImage$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    const-class v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/component/ZoomImage$State;
    .locals 1

    .line 35
    sget-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->$VALUES:[Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    return-object v0
.end method
