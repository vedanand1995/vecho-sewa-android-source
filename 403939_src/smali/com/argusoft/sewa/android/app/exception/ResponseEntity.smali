.class public Lcom/argusoft/sewa/android/app/exception/ResponseEntity;
.super Ljava/lang/Object;
.source "ResponseEntity.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private errorcode:I

.field private message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;->message:Ljava/lang/String;

    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;->errorcode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;->message:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;->errorcode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;->message:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;->data:Ljava/lang/Object;

    .line 20
    iput p2, p0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;->errorcode:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrorcode()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;->errorcode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/exception/ResponseEntity;->message:Ljava/lang/String;

    return-object v0
.end method
