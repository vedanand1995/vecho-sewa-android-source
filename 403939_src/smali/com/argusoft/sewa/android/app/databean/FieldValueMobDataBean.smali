.class public Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;
.super Ljava/lang/Object;
.source "FieldValueMobDataBean.java"


# instance fields
.field private field:Ljava/lang/String;

.field private fieldType:Ljava/lang/String;

.field private formCode:Ljava/lang/String;

.field private idOfValue:I

.field private isActive:Ljava/lang/Boolean;

.field private lastUpdateOfFieldValue:Ljava/lang/Long;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActive()Ljava/lang/Boolean;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->isActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->field:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->fieldType:Ljava/lang/String;

    return-object v0
.end method

.method public getFormCode()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->formCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIdOfValue()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->idOfValue:I

    return v0
.end method

.method public getLastUpdateOfFieldValue()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->lastUpdateOfFieldValue:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->isActive:Ljava/lang/Boolean;

    return-void
.end method

.method public setField(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->field:Ljava/lang/String;

    return-void
.end method

.method public setFieldType(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->fieldType:Ljava/lang/String;

    return-void
.end method

.method public setFormCode(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->formCode:Ljava/lang/String;

    return-void
.end method

.method public setIdOfValue(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->idOfValue:I

    return-void
.end method

.method public setLastUpdateOfFieldValue(Ljava/lang/Long;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->lastUpdateOfFieldValue:Ljava/lang/Long;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldValueMobDataBean{idOfValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->idOfValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", formCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->formCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->field:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fieldType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->fieldType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
