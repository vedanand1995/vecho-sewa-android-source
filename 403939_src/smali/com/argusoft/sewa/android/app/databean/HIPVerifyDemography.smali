.class public Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;
.super Ljava/lang/Object;
.source "HIPVerifyDemography.java"


# instance fields
.field private dateOfBirth:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private identifier:Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->dateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->identifier:Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDateOfBirth(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->dateOfBirth:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->gender:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->identifier:Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->name:Ljava/lang/String;

    return-void
.end method
