.class public Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;
.super Ljava/lang/Object;
.source "RbskDefectDetailDto.java"


# instance fields
.field private defectId:Ljava/lang/Integer;

.field private memberId:Ljava/lang/Integer;

.field private photoData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefectId()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;->defectId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;->memberId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPhotoData()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;->photoData:[B

    return-object v0
.end method

.method public setDefectId(Ljava/lang/Integer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;->defectId:Ljava/lang/Integer;

    return-void
.end method

.method public setMemberId(Ljava/lang/Integer;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;->memberId:Ljava/lang/Integer;

    return-void
.end method

.method public setPhotoData([B)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;->photoData:[B

    return-void
.end method
