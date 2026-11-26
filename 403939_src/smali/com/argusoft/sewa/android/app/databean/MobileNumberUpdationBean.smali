.class public Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;
.super Ljava/lang/Object;
.source "MobileNumberUpdationBean.java"


# instance fields
.field private memberId:Ljava/lang/String;

.field private mobileNumber:Ljava/lang/String;

.field private whatsappSmsSchems:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemberId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->memberId:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->mobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getWhatsappSmsSchems()Ljava/lang/Boolean;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->whatsappSmsSchems:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setMemberId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->memberId:Ljava/lang/String;

    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setWhatsappSmsSchems(Ljava/lang/Boolean;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->whatsappSmsSchems:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileNumberUpdationBean{memberId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->memberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mobileNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', whatsappSmsSchems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/MobileNumberUpdationBean;->whatsappSmsSchems:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
