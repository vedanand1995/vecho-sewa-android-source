.class public Lcom/argusoft/sewa/android/app/model/MenuBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "MenuBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private actualId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private constant:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private order:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MenuBean;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConstant()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MenuBean;->constant:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MenuBean;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MenuBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/MenuBean;->order:I

    return v0
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MenuBean;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setConstant(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MenuBean;->constant:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MenuBean;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MenuBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/MenuBean;->order:I

    return-void
.end method
