.class public Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;
.super Ljava/lang/Object;
.source "UserInfoDataBean.java"


# instance fields
.field private authenticated:Z

.field private baselineModuleCourseIds:Ljava/lang/String;

.field private contactNumber:Ljava/lang/String;

.field private currentAssignedVillagesName:[Ljava/lang/String;

.field private currentVillageCode:[J

.field private dob:Ljava/lang/Long;

.field private fName:Ljava/lang/String;

.field private firstTimeLogin:Z

.field private id:Ljava/lang/Long;

.field private isNagarPalikaUser:Z

.field private languageCode:Ljava/lang/String;

.field private loginFailureMsg:Ljava/lang/String;

.field private otpVerificationDate:Ljava/lang/Long;

.field private otpVerificationRequired:Ljava/lang/Boolean;

.field private password:Ljava/lang/String;

.field private phNoOfPM:Ljava/lang/String;

.field private phcNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reverificationPeriod:Ljava/lang/Integer;

.field private serverDate:Ljava/lang/Long;

.field private subcenterNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userContactId:Ljava/lang/Long;

.field private userRole:Ljava/lang/String;

.field private userToken:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private villageNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaselineModuleCourseIds()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->baselineModuleCourseIds:Ljava/lang/String;

    return-object v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->contactNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAssignedVillagesName()[Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->currentAssignedVillagesName:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVillageCode()[J
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->currentVillageCode:[J

    return-object v0
.end method

.method public getDob()Ljava/lang/Long;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->dob:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginFailureMsg()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->loginFailureMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOtpVerificationDate()Ljava/lang/Long;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->otpVerificationDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getOtpVerificationRequired()Ljava/lang/Boolean;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->otpVerificationRequired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhNoOfPM()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->phNoOfPM:Ljava/lang/String;

    return-object v0
.end method

.method public getPhcNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->phcNames:Ljava/util/Map;

    return-object v0
.end method

.method public getReverificationPeriod()Ljava/lang/Integer;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->reverificationPeriod:Ljava/lang/Integer;

    return-object v0
.end method

.method public getServerDate()Ljava/lang/Long;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->serverDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getSubcenterNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->subcenterNames:Ljava/util/Map;

    return-object v0
.end method

.method public getUserContactId()Ljava/lang/Long;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->userContactId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserRole()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->userRole:Ljava/lang/String;

    return-object v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->villageNames:Ljava/util/Map;

    return-object v0
.end method

.method public getfName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->authenticated:Z

    return v0
.end method

.method public isFirstTimeLogin()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->firstTimeLogin:Z

    return v0
.end method

.method public isNagarPalikaUser()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->isNagarPalikaUser:Z

    return v0
.end method

.method public setAuthenticated(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->authenticated:Z

    return-void
.end method

.method public setBaselineModuleCourseIds(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->baselineModuleCourseIds:Ljava/lang/String;

    return-void
.end method

.method public setContactNumber(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->contactNumber:Ljava/lang/String;

    return-void
.end method

.method public setCurrentAssignedVillagesName([Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->currentAssignedVillagesName:[Ljava/lang/String;

    return-void
.end method

.method public setCurrentVillageCode([J)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->currentVillageCode:[J

    return-void
.end method

.method public setDob(Ljava/lang/Long;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->dob:Ljava/lang/Long;

    return-void
.end method

.method public setFirstTimeLogin(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->firstTimeLogin:Z

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->languageCode:Ljava/lang/String;

    return-void
.end method

.method public setLoginFailureMsg(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->loginFailureMsg:Ljava/lang/String;

    return-void
.end method

.method public setNagarPalikaUser(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->isNagarPalikaUser:Z

    return-void
.end method

.method public setOtpVerificationDate(Ljava/lang/Long;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->otpVerificationDate:Ljava/lang/Long;

    return-void
.end method

.method public setOtpVerificationRequired(Ljava/lang/Boolean;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->otpVerificationRequired:Ljava/lang/Boolean;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setPhNoOfPM(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->phNoOfPM:Ljava/lang/String;

    return-void
.end method

.method public setPhcNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->phcNames:Ljava/util/Map;

    return-void
.end method

.method public setReverificationPeriod(Ljava/lang/Integer;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->reverificationPeriod:Ljava/lang/Integer;

    return-void
.end method

.method public setServerDate(Ljava/lang/Long;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->serverDate:Ljava/lang/Long;

    return-void
.end method

.method public setSubcenterNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->subcenterNames:Ljava/util/Map;

    return-void
.end method

.method public setUserContactId(Ljava/lang/Long;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->userContactId:Ljava/lang/Long;

    return-void
.end method

.method public setUserRole(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->userRole:Ljava/lang/String;

    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->userToken:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->username:Ljava/lang/String;

    return-void
.end method

.method public setVillageNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->villageNames:Ljava/util/Map;

    return-void
.end method

.method public setfName(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->fName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserInfoDataBean{authenticated="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->authenticated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contactNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', dob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->dob:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstTimeLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->firstTimeLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", languageCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', loginFailureMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->loginFailureMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->userContactId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userRole=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->userRole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', phNoOfPM=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->phNoOfPM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->userToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', serverDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->serverDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentVillageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->currentVillageCode:[J

    .line 260
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentAssignedVillagesName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->currentAssignedVillagesName:[Ljava/lang/String;

    .line 261
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNagarPalikaUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->isNagarPalikaUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phcNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->phcNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subcenterNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->subcenterNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", villageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->villageNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
