.class public Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "MemberRchIdBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private memberId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rchId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemberId()Ljava/lang/Integer;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;->memberId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getRchId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;->rchId:Ljava/lang/String;

    return-object v0
.end method

.method public setMemberId(Ljava/lang/Integer;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;->memberId:Ljava/lang/Integer;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setRchId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;->rchId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MemberRchIdBean{memberId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;->memberId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rchId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;->rchId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', modifiedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;->modifiedOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
