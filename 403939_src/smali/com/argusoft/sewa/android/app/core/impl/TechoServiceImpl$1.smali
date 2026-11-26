.class Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl$1;
.super Ljava/lang/Object;
.source "TechoServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getDataForFHSR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1425
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl$1;->this$0:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl$1;->this$0:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->access$000(Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;)V

    return-void
.end method
