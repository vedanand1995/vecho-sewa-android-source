.class public Lcom/argusoft/sewa/android/app/model/LoginBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LoginBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private OtpVerificationDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private firstLogin:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hidden:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isNagarpalikaUser:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isRemember:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isTrainingUser:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private languageCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastUpdateOfAnnouncements:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastUpdateOfInventory:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastUpdateOfLabels:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastUpdateOfListValues:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private loggedIn:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private otpVerificationRequired:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private passwordPlain:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private phoneNoOfPM:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private reverificationPeriod:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private serverDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private updateCounter:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userID:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userRole:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userRoleCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userToken:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private villageCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private villageName:Ljava/lang/String;
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
    .locals 0

    .line 332
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateOfAnnouncements()Ljava/lang/Long;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfAnnouncements:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastUpdateOfInventory()Ljava/lang/Long;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfInventory:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastUpdateOfLabels()Ljava/lang/Long;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfLabels:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastUpdateOfListValues()Ljava/lang/Long;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfListValues:Ljava/lang/Long;

    return-object v0
.end method

.method public getOtpVerificationDate()Ljava/util/Date;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->OtpVerificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOtpVerificationRequired()Ljava/lang/Boolean;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->otpVerificationRequired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordPlain()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->passwordPlain:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNoOfPM()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->phoneNoOfPM:Ljava/lang/String;

    return-object v0
.end method

.method public getReverificationPeriod()Ljava/lang/Integer;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->reverificationPeriod:Ljava/lang/Integer;

    return-object v0
.end method

.method public getServerDate()Ljava/lang/Long;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->serverDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getUpdateCounter()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->updateCounter:I

    return v0
.end method

.method public getUserID()Ljava/lang/Long;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userID:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserRole()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userRole:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRoleCode()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userRoleCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageCode()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->villageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->villageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 337
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFirstLogin()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->firstLogin:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->hidden:Z

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->loggedIn:Z

    return v0
.end method

.method public isNagarpalikaUser()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->isNagarpalikaUser:Z

    return v0
.end method

.method public isRemember()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->isRemember:Z

    return v0
.end method

.method public isTrainingUser()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser:Z

    return v0
.end method

.method public setFirstLogin(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->firstLogin:Z

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->hidden:Z

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->languageCode:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdateOfAnnouncements(Ljava/lang/Long;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfAnnouncements:Ljava/lang/Long;

    return-void
.end method

.method public setLastUpdateOfInventory(Ljava/lang/Long;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfInventory:Ljava/lang/Long;

    return-void
.end method

.method public setLastUpdateOfLabels(Ljava/lang/Long;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfLabels:Ljava/lang/Long;

    return-void
.end method

.method public setLastUpdateOfListValues(Ljava/lang/Long;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfListValues:Ljava/lang/Long;

    return-void
.end method

.method public setLoggedIn(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->loggedIn:Z

    return-void
.end method

.method public setNagarpalikaUser(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->isNagarpalikaUser:Z

    return-void
.end method

.method public setOtpVerificationDate(Ljava/util/Date;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->OtpVerificationDate:Ljava/util/Date;

    return-void
.end method

.method public setOtpVerificationRequired(Ljava/lang/Boolean;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->otpVerificationRequired:Ljava/lang/Boolean;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setPasswordPlain(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->passwordPlain:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNoOfPM(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->phoneNoOfPM:Ljava/lang/String;

    return-void
.end method

.method public setRemember(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->isRemember:Z

    return-void
.end method

.method public setReverificationPeriod(Ljava/lang/Integer;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->reverificationPeriod:Ljava/lang/Integer;

    return-void
.end method

.method public setServerDate(Ljava/lang/Long;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->serverDate:Ljava/lang/Long;

    return-void
.end method

.method public setTrainingUser(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser:Z

    return-void
.end method

.method public setUpdateCounter(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->updateCounter:I

    return-void
.end method

.method public setUserID(Ljava/lang/Long;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userID:Ljava/lang/Long;

    return-void
.end method

.method public setUserRole(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userRole:Ljava/lang/String;

    return-void
.end method

.method public setUserRoleCode(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userRoleCode:Ljava/lang/String;

    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userToken:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->username:Ljava/lang/String;

    return-void
.end method

.method public setVillageCode(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->villageCode:Ljava/lang/String;

    return-void
.end method

.method public setVillageName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->villageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginBean{username=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userRole=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userRole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userRoleCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userRoleCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', loggedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->loggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", firstLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->firstLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", languageCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', villageCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->villageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', villageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->villageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', serverDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->serverDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateOfLabels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfLabels:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateOfListValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfListValues:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateOfAnnouncements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfAnnouncements:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateOfInventory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->lastUpdateOfInventory:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', phoneNoOfPM=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->phoneNoOfPM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->userID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->hidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updateCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->updateCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNagarpalikaUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->isNagarpalikaUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTrainingUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", passwordPlain=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoginBean;->passwordPlain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
