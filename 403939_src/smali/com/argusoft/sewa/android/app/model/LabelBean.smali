.class public Lcom/argusoft/sewa/android/app/model/LabelBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LabelBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private labelKey:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private labelValue:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 99
    :cond_1
    check-cast p1, Lcom/argusoft/sewa/android/app/model/LabelBean;

    .line 101
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->labelKey:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/argusoft/sewa/android/app/model/LabelBean;->labelKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->language:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/model/LabelBean;->language:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLabelKey()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->labelKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelValue()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->labelValue:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMapIndex()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->labelKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->language:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->labelKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLabelKey(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->labelKey:Ljava/lang/String;

    return-void
.end method

.method public setLabelValue(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->labelValue:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->language:Ljava/lang/String;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LabelBean{labelKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->labelKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", labelValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->labelValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LabelBean;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
