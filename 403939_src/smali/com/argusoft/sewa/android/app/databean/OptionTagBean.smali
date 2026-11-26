.class public Lcom/argusoft/sewa/android/app/databean/OptionTagBean;
.super Ljava/lang/Object;
.source "OptionTagBean.java"


# instance fields
.field private key:Ljava/lang/String;

.field private next:Ljava/lang/String;

.field private relatedpropertyname:Ljava/lang/String;

.field private subform:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 77
    :cond_1
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->key:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedpropertyname()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->relatedpropertyname:Ljava/lang/String;

    return-object v0
.end method

.method public getSubform()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->subform:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x103

    add-int/2addr v1, v0

    return v1
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->next:Ljava/lang/String;

    return-void
.end method

.method public setRelatedpropertyname(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->relatedpropertyname:Ljava/lang/String;

    return-void
.end method

.method public setSubform(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->subform:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptionTagBean{key=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', next=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->next:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', subform=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->subform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', relatedpropertyname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->relatedpropertyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
