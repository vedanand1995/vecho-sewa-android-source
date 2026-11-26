.class public Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;
.super Ljava/lang/Object;
.source "HIPPatientIdentifiers.java"


# instance fields
.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;->value:Ljava/lang/String;

    return-void
.end method
