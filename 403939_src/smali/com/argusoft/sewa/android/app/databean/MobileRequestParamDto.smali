.class public Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
.super Ljava/lang/Object;
.source "MobileRequestParamDto.java"


# instance fields
.field private answerString:Ljava/lang/String;

.field private attendanceId:Ljava/lang/Integer;

.field private familyId:Ljava/lang/String;

.field private firebaseToken:Ljava/lang/String;

.field private formCode:Ljava/lang/String;

.field private gpsRecords:Ljava/lang/String;

.field private isFirstTimeLogin:Ljava/lang/Boolean;

.field private isSearchByFamilyId:Ljava/lang/Boolean;

.field private labTestDetId:Ljava/lang/Integer;

.field private labTestVersion:Ljava/lang/String;

.field private languageCode:Ljava/lang/String;

.field private locationId:Ljava/lang/String;

.field private locationIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mergedFamiliesBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;",
            ">;"
        }
    .end annotation
.end field

.field private mobileEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsEventBean;",
            ">;"
        }
    .end annotation
.end field

.field private mobileNumber:Ljava/lang/String;

.field private otp:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private records:[Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uncaughtExceptionBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/Long;

.field private userName:Ljava/lang/String;

.field private userPassMap:[Ljava/lang/String;

.field private userTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswerString()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->answerString:Ljava/lang/String;

    return-object v0
.end method

.method public getAttendanceId()Ljava/lang/Integer;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->attendanceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirebaseToken()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->firebaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTimeLogin()Ljava/lang/Boolean;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->isFirstTimeLogin:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFormCode()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->formCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsRecords()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->gpsRecords:Ljava/lang/String;

    return-object v0
.end method

.method public getLabTestDetId()Ljava/lang/Integer;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->labTestDetId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLabTestVersion()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->labTestVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->locationId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->locationIds:Ljava/util/List;

    return-object v0
.end method

.method public getMergedFamiliesBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->mergedFamiliesBeans:Ljava/util/List;

    return-object v0
.end method

.method public getMobileEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsEventBean;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->mobileEvents:Ljava/util/List;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->mobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->otp:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRecords()[Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->records:[Ljava/lang/String;

    return-object v0
.end method

.method public getSearchByFamilyId()Ljava/lang/Boolean;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->isSearchByFamilyId:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUncaughtExceptionBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->uncaughtExceptionBeans:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPassMap()[Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->userPassMap:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->userTokens:Ljava/util/List;

    return-object v0
.end method

.method public setAnswerString(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->answerString:Ljava/lang/String;

    return-void
.end method

.method public setAttendanceId(Ljava/lang/Integer;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->attendanceId:Ljava/lang/Integer;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->familyId:Ljava/lang/String;

    return-void
.end method

.method public setFirebaseToken(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->firebaseToken:Ljava/lang/String;

    return-void
.end method

.method public setFirstTimeLogin(Ljava/lang/Boolean;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->isFirstTimeLogin:Ljava/lang/Boolean;

    return-void
.end method

.method public setFormCode(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->formCode:Ljava/lang/String;

    return-void
.end method

.method public setGpsRecords(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->gpsRecords:Ljava/lang/String;

    return-void
.end method

.method public setLabTestDetId(Ljava/lang/Integer;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->labTestDetId:Ljava/lang/Integer;

    return-void
.end method

.method public setLabTestVersion(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->labTestVersion:Ljava/lang/String;

    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->languageCode:Ljava/lang/String;

    return-void
.end method

.method public setLocationId(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->locationId:Ljava/lang/String;

    return-void
.end method

.method public setLocationIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->locationIds:Ljava/util/List;

    return-void
.end method

.method public setMergedFamiliesBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;",
            ">;)V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->mergedFamiliesBeans:Ljava/util/List;

    return-void
.end method

.method public setMobileEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsEventBean;",
            ">;)V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->mobileEvents:Ljava/util/List;

    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setOtp(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->otp:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->password:Ljava/lang/String;

    return-void
.end method

.method public setRecords([Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->records:[Ljava/lang/String;

    return-void
.end method

.method public setSearchByFamilyId(Ljava/lang/Boolean;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->isSearchByFamilyId:Ljava/lang/Boolean;

    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->searchString:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->token:Ljava/lang/String;

    return-void
.end method

.method public setUncaughtExceptionBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->uncaughtExceptionBeans:Ljava/util/List;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->userId:Ljava/lang/Long;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserPassMap([Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->userPassMap:[Ljava/lang/String;

    return-void
.end method

.method public setUserTokens(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->userTokens:Ljava/util/List;

    return-void
.end method
