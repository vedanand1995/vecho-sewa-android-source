.class public abstract Lcom/argusoft/sewa/android/app/model/BaseEntity;
.super Ljava/lang/Object;
.source "BaseEntity.java"


# instance fields
.field protected id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "_ID"
        id = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/argusoft/sewa/android/app/model/BaseEntity;

    if-nez v1, :cond_1

    return v0

    .line 22
    :cond_1
    check-cast p1, Lcom/argusoft/sewa/android/app/model/BaseEntity;

    .line 23
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/model/BaseEntity;->id:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/BaseEntity;->id:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
