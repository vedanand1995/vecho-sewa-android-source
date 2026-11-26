.class public Lcom/argusoft/sewa/android/app/databean/LabTestRequest;
.super Ljava/lang/Object;
.source "LabTestRequest.java"


# instance fields
.field private answerString:Ljava/lang/String;

.field private labTestDetId:I

.field private labTestVersion:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->answerString:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->labTestDetId:I

    .line 12
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->labTestVersion:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnswerString()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->answerString:Ljava/lang/String;

    return-object v0
.end method

.method public getLabTestDetId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->labTestDetId:I

    return v0
.end method

.method public getLabTestVersion()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->labTestVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswerString(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->answerString:Ljava/lang/String;

    return-void
.end method

.method public setLabTestDetId(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->labTestDetId:I

    return-void
.end method

.method public setLabTestVersion(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->labTestVersion:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;->token:Ljava/lang/String;

    return-void
.end method
