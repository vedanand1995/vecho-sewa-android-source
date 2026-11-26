.class Lcom/argusoft/sewa/android/app/SewaApplication$1;
.super Ljava/lang/Object;
.source "SewaApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/SewaApplication;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/SewaApplication;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/SewaApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/SewaApplication$1;->this$0:Lcom/argusoft/sewa/android/app/SewaApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 41
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const-string v1, "UNHANDLED"

    invoke-interface {v0, p2, v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/SewaApplication$1;->this$0:Lcom/argusoft/sewa/android/app/SewaApplication;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/SewaApplication;->access$000(Lcom/argusoft/sewa/android/app/SewaApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
