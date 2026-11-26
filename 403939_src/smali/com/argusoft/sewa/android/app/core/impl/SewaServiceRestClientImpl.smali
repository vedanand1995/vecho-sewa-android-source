.class public Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;
.super Ljava/lang/Object;
.source "SewaServiceRestClientImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/SewaServiceRestClient;


# instance fields
.field apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

.field restRequest:Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;

.field versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFireBaseToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->addFireBaseToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    return-void
.end method

.method public assignFamilyToUser(Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 178
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setLocationId(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setFamilyId(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->assignFamilyToUser(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    return-object p1
.end method

.method public checkForDirectAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 851
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 852
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string v1, "requestId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->checkForDirectAuth(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public checkIfDeviceIsBlockedOrDeleteDatabase(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 328
    const-string v1, "imei"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->checkIfDeviceIsBlockedOrDeleteDatabase(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public checkIsMobileTimeSyncedProperly(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 374
    const-string v1, "timestamp"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->checkIsMobileTimeSyncedProperly(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public checkPhoneNumberAlreadyExists(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->checkPhoneNumberExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public confirmAadharDemo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 545
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 548
    const-string v1, "txnId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string p1, "gender"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string p1, "name"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string p1, "yearOfBirth"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    sget-object p3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->confirmAadharDemo(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public confirmAadharOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 558
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 561
    const-string v1, "txnId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string p1, "otp"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->confirmAadharOtp(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public confirmBio(Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 604
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->confirmBio(Ljava/util/Map;Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public confirmMobileOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 581
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 584
    const-string v1, "txnId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string p1, "otp"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->confirmMobileOtp(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public confirmPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 593
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 596
    const-string v1, "txnId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string p1, "password"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->confirmPassword(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public createUsingAadhaarBiometrics(ILjava/lang/String;Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 570
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v1, "memberId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string p1, "featureName"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string p1, "consentValues"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0, p3}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->createUsingAadhaarBiometrics(Ljava/util/Map;Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    return-object p1
.end method

.method public createUsingAadhaarBiometricsV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 790
    const-string v1, "aadhaar"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string p1, "fingerPrintAuthPid"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string p1, "mobile"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 795
    const-string p2, "memberId"

    invoke-interface {p1, p2, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sget-object p2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userMobileToken"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string p2, "featureName"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string p2, "consentValues"

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string p2, "isAadhaarDetailMatchConsentGiven"

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->createUsingAadhaarBiometricsV3(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    return-object p1
.end method

.method public createUsingAadhaarOTP(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 408
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v1, "memberId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string p1, "mobile"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string p1, "otp"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string p1, "txnId"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string p1, "featureName"

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string p1, "consentValues"

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->createUsingAadhaarOTP(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    return-object p1
.end method

.method public createUsingAadhaarOTPV3(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 421
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 422
    const-string v2, "txnId"

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string p5, "otpValue"

    invoke-interface {v1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string p4, "mobile"

    invoke-interface {v1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string p3, "aadhaar"

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object p2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userMobileToken"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string p2, "memberId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string p1, "featureName"

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string p1, "consentValue"

    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string p1, "isAadhaarDetMatchConsent"

    invoke-interface {v0, p1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->createUsingAadhaarOtpV3(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    return-object p1
.end method

.method public createUsingAadharDemographics(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 438
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v1, "memberId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string p1, "aadhar"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string p1, "dateOfBirth"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string p1, "gender"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string p1, "mobile"

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string p1, "name"

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string p1, "consentValues"

    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->createUsingAadharDemographics(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    return-object p1
.end method

.method public executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    return-object p1
.end method

.method public fetchAuthModesByHealthId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 868
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 869
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string v1, "memberId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string p2, "healthId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->fetchAuthModesByHealthId(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public generateAadhaarOTP(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 390
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v1, "aadhaar"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string p1, "memberId"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->generateAadhaarOTP(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public generateAadhaarOTPV3(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 399
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v1, "aadhaar"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string p1, "memberId"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->generateAadhaarOTPV3(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public generateLoginMobileOTP(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 650
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 651
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v1, "mobileNumber"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->generateLoginMobileOTP(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 660
    const-string v1, "scope"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string p1, "loginId"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string p1, "memberId"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "userMobileToken"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static {p4}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 665
    const-string p1, "txnId"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->generateOtpForABHAVerificationV3(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public generateUpdateMobileOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 485
    const-string v1, "memberId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object p3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p3

    const-string v1, "userMobileToken"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 489
    const-string v1, "txnID"

    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string p1, "mobile"

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0, p3}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->generateUpdateMobileOTP(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getAbhaAccountViaAbhaAddress(Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 628
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 629
    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string p1, "memberId"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "userMobileToken"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getAbhaProfileForVerificationViaAbhaAddress(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    return-object p1
.end method

.method public getAbhaCardForVerificationViaAbhaAddress(Ljava/lang/Integer;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 712
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v1, "memberId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string p1, "token"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getAbhaCardForVerificationViaAbhaAddress(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    .line 716
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    return-object p1
.end method

.method public getAccountProfileResponse(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 610
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 611
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getAccountProfileResponse(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    return-object p1
.end method

.method public getAccountProfileResponseV3(Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 619
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string p1, "memberId"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getProfileAccountDetails(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    return-object p1
.end method

.method public getCareContextMasterDetails(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 844
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v1, "memberId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getCareContextMasterDetails(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getContactNumberForOtpVerification(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getContactNumberForOtpVerification(Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDataForASHAFacilitator(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getDataForASHAFacilitator(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    return-object p1
.end method

.method public getDetails(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getDetails(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    return-object p1
.end method

.method public getDetailsForAsha(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getDetailsForAsha(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    return-object p1
.end method

.method public getDetailsForAww(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getDetailsForAww(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    return-object p1
.end method

.method public getDetailsForFHSR(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getDetailsForFHSR(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    return-object p1
.end method

.method public getDetailsForMO(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getDetailsForMO(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    return-object p1
.end method

.method public getDetailsForOA(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getDetailsForOA(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    return-object p1
.end method

.method public getDetailsForRbsk(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getDetailsForRbsk(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    return-object p1
.end method

.method public getFamiliesByLocationId(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 252
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;-><init>()V

    .line 253
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setToken(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLocationId(Ljava/lang/Long;)V

    .line 255
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForFamily(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getFamiliesByLocationId(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getFamilyToBeAssignedBySearchString(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 169
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setSearchString(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setSearchByFamilyId(Ljava/lang/Boolean;)V

    .line 172
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getFamilyToBeAssignedBySearchString(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getLocationMasterData(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getLocationMasterData(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getMembersByAdvanceSearch(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 897
    const-string v1, "parentId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string p1, "searchText"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string p1, "standard"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getMembersByAdvanceSearch(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getMembersOfSchool(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 888
    const-string v1, "schoolActualId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string p1, "standard"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getMembersOfSchool(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getNPCBMembersForSpectsApproval(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1038
    const-string v1, "limit"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    const-string p2, "offset"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object p2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userMobileToken"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 1042
    const-string p2, "search"

    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getNPCBMembersForSpectsApproval(Ljava/util/List;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getNPCBMembersSentByCHO(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1025
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1026
    const-string v1, "limit"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string p2, "offset"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object p2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userMobileToken"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 1030
    const-string p2, "search"

    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getNPCBMembersSentByCHO(Ljava/util/List;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getOnlineFollowUpNPCBMembers(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1060
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1061
    const-string v1, "limit"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string p2, "offset"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object p2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userMobileToken"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 1065
    const-string p2, "search"

    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getOnlineFollowUpNPCBMembers(Ljava/util/List;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getOnlineFortyPlusNPCBMembers(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1049
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1050
    const-string v1, "limit"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    const-string p2, "offset"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 1053
    const-string p2, "search"

    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getOnlineFortyPlusNPCBMembers(Ljava/util/List;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getProfileAccountAbhaCard(Ljava/lang/Integer;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 473
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v1, "memberId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string p1, "token"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getProfileAccountAbhaCard(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    .line 478
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    return-object p1
.end method

.method public getRBSKVisionImpairmentReferredMembers(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1072
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1073
    const-string v1, "limit"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const-string p1, "offset"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "userMobileToken"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 1077
    const-string p1, "search"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getRBSKVisionImpairmentReferredMembers(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getRbskMoScreeningMembers(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 287
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setLocationIds(Ljava/util/List;)V

    .line 288
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getRbskMoScreeningMembers(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getStates()[Lcom/argusoft/sewa/android/app/databean/StateResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 770
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getStates(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/databean/StateResponse;

    return-object v0
.end method

.method public getSystemConfigurationByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getSystemConfigurationByKey(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTokenValidity(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getTokenValidity(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 121
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setUserName(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setPassword(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p3}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setFirstTimeLogin(Ljava/lang/Boolean;)V

    .line 124
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getUser(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;

    return-object p1
.end method

.method public getUserEncrypted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 130
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setUserName(Ljava/lang/String;)V

    .line 131
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setPassword(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p4}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setFirstTimeLogin(Ljava/lang/Boolean;)V

    .line 133
    invoke-virtual {v0, p3}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setFirebaseToken(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getUserEncrypted(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;

    return-object p1
.end method

.method public getUserFormAccessDetailFromServer()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 187
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getUserFormAccessDetailFromServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getUserIdAndTokenFromToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getUserIdAndTokenFromToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public healthIdVerificationAuthInit(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 533
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 536
    const-string v1, "healthid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string p1, "authMethod"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->healthIdVerificationAuthInit(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public initLinking(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 834
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string v1, "memberId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string p2, "healthId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string p1, "authMode"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->initLinking(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public linkBenefitId(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 776
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 777
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v1, "memberId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string p1, "userToken"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string p1, "stateCode"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string p1, "authMethodType"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string p1, "featureName"

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string p1, "consentValues"

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->linkBenefitId(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    return-object p1
.end method

.method public linkBenefitV3(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 697
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string v1, "memberId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string p1, "token"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string p1, "abhaNumber"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string p1, "featureName"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string p1, "authMethodType"

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string p1, "consentValues"

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string p1, "isVerifyViaAbhaAddress"

    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->linkBenefitIdV3(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    return-object p1
.end method

.method public lmsEventEntryFromMobileToDBeans(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsEventBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 380
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 381
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setMobileEvents(Ljava/util/List;)V

    .line 383
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->lmsEventEntryFromMobileToDBeans(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public loginWithMobileVerifiedAbha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 733
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 734
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string v1, "token"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string p3, "txnId"

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string p1, "healthId"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->loginWithMobileVerifiedAbha(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public markAttendanceForTheDay(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 311
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setGpsRecords(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->markAttendanceForTheDay(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public postUserReadyToMoveProduction(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 193
    sget-boolean v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->isUserInTraining:Z

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO_LIVE:Ljava/lang/String;

    .line 198
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 199
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setFormCode(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->postUserReadyToMoveProduction(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    return-void
.end method

.method public recordEntryFromMobileToServer(Ljava/lang/String;[Ljava/lang/String;)[Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 153
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setRecords([Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->recordEntryFromMobileToServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;

    return-object p1
.end method

.method public removeEntryForDeviceOfIMEI(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 335
    const-string v1, "imei"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->removeEntryForDeviceOfIMEI(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    return-void
.end method

.method public resendLoginMobileOTP(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 758
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 759
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 762
    const-string v1, "txnId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->resendLoginMobileOTP(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public resendOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 639
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 642
    const-string v1, "txnId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string p1, "authMethod"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->resendOtp(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public retrieveAndroidVersionFromServer()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->getAppVersion()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public retrieveFamilyDataByMemberId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 997
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 998
    const-string v1, "memberId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->retrieveImtechoFamilyDataByMemberId(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    return-object p1
.end method

.method public retrieveMemberFromUwinOnline(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 976
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/SearchBeneficiariesRequestDto;

    invoke-direct {v0, p1, p2}, Lcom/argusoft/sewa/android/app/databean/SearchBeneficiariesRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "requestDto"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->retrieveMemberFromUwin(Lcom/argusoft/sewa/android/app/databean/SearchBeneficiariesRequestDto;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 980
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 981
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 986
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;

    if-nez v0, :cond_1

    goto :goto_0

    .line 990
    :cond_1
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertUwinMemberDtoToMemberDataBean(Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2

    .line 982
    :cond_3
    :goto_1
    const-string p1, "UWIN"

    const-string v0, "Response is null or empty"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public retrieveMemberRchIds(Ljava/lang/String;Ljava/lang/Long;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 913
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 914
    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string p1, "modifiedOn"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->retrieveMemberRchIds(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 935
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 937
    const-string v1, "mobileNumber"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 940
    const-string p1, "healthIdNumber"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 943
    const-string p1, "familyId"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    .line 946
    const-string p1, "uniqueHealthId"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p5, :cond_4

    .line 949
    const-string p1, "name"

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p6, :cond_5

    .line 952
    const-string p1, "dob"

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p7, :cond_6

    .line 955
    const-string p1, "lmp"

    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p8, :cond_7

    .line 958
    const-string p1, "offset"

    invoke-interface {v0, p1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz p10, :cond_8

    .line 961
    const-string p1, "locationId"

    invoke-interface {v0, p1, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz p11, :cond_9

    .line 964
    const-string p1, "scheduledDate"

    invoke-interface {v0, p1, p11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz p12, :cond_a

    .line 967
    const-string p1, "aadhaarNumber"

    invoke-interface {v0, p1, p12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    :cond_a
    const-string p1, "selectedMemberType"

    invoke-interface {v0, p1, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string p1, "requestParams"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->retrieveMembersForOnlineSearch(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public retrieveMembersOfFamilyByFamilyId(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1004
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1005
    const-string v1, "familyId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->retrieveMembersOfFamilyByFamilyId(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public retrieveServerIsAlive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->retrieveServerIsAlive()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public retrieveUserInProductionFromServer(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 105
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setUserName(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->retrieveUserInProductionFromServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public retrieveUserInTrainingFromServer(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 113
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setUserName(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->retrieveUserInProductionFromServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public revalidateUserToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->revalidateUserToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    return-object p1
.end method

.method public saveHealthIdCardV2(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 452
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string p1, "healthIdNumber"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->saveHealthIdCardV2(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    .line 457
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    return-object p1
.end method

.method public searchABHA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 672
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v1, "scope"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string p1, "memberId"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string p1, "loginId"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->searchABHA(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;

    return-object p1
.end method

.method public searchByAbhaAddress(Ljava/lang/Integer;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 520
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 521
    const-string v1, "memberId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "userMobileToken"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 525
    const-string v1, "abhaAddress"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->searchByAbhaAddress(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;

    return-object p1
.end method

.method public searchUserByHealthId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 512
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v1, "healthId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->searchUserByHealthId(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;

    return-object p1
.end method

.method public sendOtpRequest(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 293
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 294
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setMobileNumber(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->sendOtpRequest(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    return-void
.end method

.method public sendSMSandGetHealthIdCard(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 463
    const-string v1, "healthIdNumber"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string p2, "token"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "userMobileToken"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->sendSMSandGetHealthIdCard(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    .line 467
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    return-object p1
.end method

.method public storeAttendanceForTheDay(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 318
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 319
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setGpsRecords(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setAttendanceId(Ljava/lang/Integer;)V

    .line 322
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->storeAttendanceForTheDay(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    return-void
.end method

.method public storeInventoryDetailsToServer(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1011
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1012
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->storeInventoryDetailsToServer(Ljava/util/Map;Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public storeOpdLabFormDetails(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 341
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;

    .line 343
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 345
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/argusoft/sewa/android/app/databean/LabTestRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->storeOpdLabFormDetails(Lcom/argusoft/sewa/android/app/databean/LabTestRequest;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    .line 351
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 353
    new-instance p2, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public storeRbskScreeningDetails(Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->storeRbskScreeningDetails(Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public storeReferredLabTestDetails(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 359
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 360
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setAnswerString(Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->storeReferredLabTestDetails(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    .line 365
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 367
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public storeReturnInventoryDetailsToServer(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1019
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->storeReturnInventoryDetailsToServer(Ljava/util/Map;Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public syncMergedFamiliesInformationWithServer(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 161
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setMergedFamiliesBeans(Ljava/util/List;)V

    .line 163
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->syncMergedFamiliesInformationWithServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public updateLanguagePreference(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 904
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 905
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setLanguageCode(Ljava/lang/String;)V

    .line 907
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->updateLanguagePreference(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    return-void
.end method

.method public updateOtpVerificationDate(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->updateOtpVerificationDate(Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    return-void
.end method

.method public uploadUncaughtExceptionToServer(Ljava/lang/Long;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setUserId(Ljava/lang/Long;)V

    .line 146
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setUncaughtExceptionBeans(Ljava/util/List;)V

    .line 147
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->uploadUncaughtExceptionToServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public verifyBiometricForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 821
    const-string v1, "txnId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string p4, "fingerPrintAuthPid"

    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 825
    sget-object p4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p4

    const-string v1, "userMobileToken"

    invoke-interface {p2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string p4, "scope"

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string p1, "memberId"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->verifyBiometricForAbhaVerificationV3(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    return-object p1
.end method

.method public verifyBiometricForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 806
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 807
    const-string v1, "aadhaar"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string p2, "fingerPrintAuthPid"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 811
    sget-object p3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p3

    const-string v1, "userMobileToken"

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string p3, "scope"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string p1, "memberId"

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->verifyBiometricForAbhaVerificationV3(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    return-object p1
.end method

.method public verifyDemography(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 860
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 861
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string v1, "requestId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->verifyDemography(Ljava/util/Map;Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public verifyLoginMobileOTP(Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 722
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 725
    const-string v1, "txnId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string p1, "otp"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->verifyLoginMobileOTP(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;

    return-object p1
.end method

.method public verifyMobileProfileUserAbhaVerification(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 745
    const-string v1, "txnId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string p2, "ABHANumber"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 749
    sget-object p3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p3

    const-string v1, "userMobileToken"

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    const-string p3, "memberId"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string p1, "token"

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->profileLoginVerifyUser(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;

    return-object p1
.end method

.method public verifyOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 301
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 302
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setMobileNumber(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setOtp(Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->verifyOtp(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public verifyOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 683
    const-string v1, "scope"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string p1, "memberId"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p1

    const-string p4, "userMobileToken"

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 688
    const-string p4, "txnId"

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string p3, "otpValue"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, v0, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->verifyOtpForAbhaVerificationV3(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    return-object p1
.end method

.method public verifyOtpForRecordLinking(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 878
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 879
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userMobileToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string v1, "requestId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string p1, "otp"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->verifyOtpForRecordLinking(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public verifyUpdateMobileOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 498
    const-string v1, "txnId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string p1, "otp"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 502
    sget-object p2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p2

    const-string v1, "userMobileToken"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string p2, "memberId"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string p2, "mobile"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string p2, "healthIdNumber"

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->verifyUpdateMobileOTP(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->execute(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;

    return-object p1
.end method
