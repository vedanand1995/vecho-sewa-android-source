.class public Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "MergedFamiliesBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private expandedFamilyId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isSyncedWithServer:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mergedFamilyId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;->mergedFamilyId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;->expandedFamilyId:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;->isSyncedWithServer:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getExpandedFamilyId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;->expandedFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getMergedFamilyId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;->mergedFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSyncedWithServer()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;->isSyncedWithServer:Z

    return v0
.end method

.method public setExpandedFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;->expandedFamilyId:Ljava/lang/String;

    return-void
.end method

.method public setMergedFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;->mergedFamilyId:Ljava/lang/String;

    return-void
.end method

.method public setSyncedWithServer(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;->isSyncedWithServer:Z

    return-void
.end method
