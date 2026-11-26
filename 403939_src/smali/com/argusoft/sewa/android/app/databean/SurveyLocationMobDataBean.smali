.class public Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;
.super Ljava/lang/Object;
.source "SurveyLocationMobDataBean.java"


# instance fields
.field private id:Ljava/lang/Integer;

.field private isActive:Ljava/lang/Boolean;

.field private level:Ljava/lang/Integer;

.field private lgdCode:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent:Ljava/lang/Integer;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsActive()Ljava/lang/Boolean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->isActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLevel()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->level:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLgdCode()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->lgdCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->parent:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIsActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->isActive:Ljava/lang/Boolean;

    return-void
.end method

.method public setLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->level:Ljava/lang/Integer;

    return-void
.end method

.method public setLgdCode(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->lgdCode:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setParent(Ljava/lang/Integer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->parent:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurveyLocationMobDataBean{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->level:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->parent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
