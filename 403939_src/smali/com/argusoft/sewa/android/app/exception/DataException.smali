.class public Lcom/argusoft/sewa/android/app/exception/DataException;
.super Ljava/lang/RuntimeException;
.source "DataException.java"


# instance fields
.field private final transient response:Lcom/argusoft/sewa/android/app/exception/ResponseEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;

    invoke-direct {v0, p1, p2}, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/exception/DataException;->response:Lcom/argusoft/sewa/android/app/exception/ResponseEntity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;

    invoke-direct {v0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/exception/DataException;->response:Lcom/argusoft/sewa/android/app/exception/ResponseEntity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    new-instance p2, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/exception/DataException;->response:Lcom/argusoft/sewa/android/app/exception/ResponseEntity;

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/argusoft/sewa/android/app/exception/ResponseEntity;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/exception/DataException;->response:Lcom/argusoft/sewa/android/app/exception/ResponseEntity;

    return-object v0
.end method
