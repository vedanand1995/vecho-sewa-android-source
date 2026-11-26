.class Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "LmsUserMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;-><init>(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData$2;->this$0:Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
