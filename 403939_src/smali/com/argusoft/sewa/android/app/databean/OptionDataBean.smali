.class public Lcom/argusoft/sewa/android/app/databean/OptionDataBean;
.super Ljava/lang/Object;
.source "OptionDataBean.java"


# instance fields
.field private key:Ljava/lang/String;

.field private next:Ljava/lang/String;

.field private relatedProperty:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->key:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->value:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->next:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 75
    :cond_1
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 76
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->key:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->key:Ljava/lang/String;

    if-nez p1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedProperty()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->relatedProperty:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x73

    add-int/2addr v1, v0

    return v1
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->next:Ljava/lang/String;

    return-void
.end method

.method public setRelatedProperty(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->relatedProperty:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptionDataBean{key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->next:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", relatedProperty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->relatedProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
