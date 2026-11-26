.class Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "RestRequestImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->readCookies()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lorg/apache/http/impl/cookie/BasicClientCookie;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl$3;->this$0:Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
