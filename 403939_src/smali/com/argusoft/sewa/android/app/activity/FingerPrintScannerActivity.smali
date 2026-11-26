.class public Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FingerPrintScannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerPrintScanner"


# instance fields
.field public context:Landroid/content/Context;

.field private isFromAbhaSeeding:Ljava/lang/Boolean;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private rdServiceManager:Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 41
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->isFromAbhaSeeding:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public generateHealthIdUsingFingerPrint(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    .line 145
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for creating Health ID"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 146
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 150
    :try_start_0
    const-string v3, "abhaConsentCheckboxModel"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;-><init>()V

    .line 153
    const-string v5, "aadhaar"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;->setAadhaar(Ljava/lang/String;)V

    .line 154
    const-string v5, "FMR"

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;->setBioType(Ljava/lang/String;)V

    .line 155
    const-string v5, "mobile"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;->setMobileNumber(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4, p1}, Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;->setPid(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v5, "memberId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "featureName"

    .line 158
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p1, v5, v1, v4, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->createUsingAadhaarBiometrics(ILjava/lang/String;Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getJwtResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getJwtResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getJwtResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->hideProcessDialog()V

    .line 166
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 167
    const-string v4, "token"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "healthIdNumber"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "healthId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 170
    invoke-virtual {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 175
    const-string v1, "FingerPrintScanner"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 179
    :cond_1
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method synthetic lambda$generateHealthIdUsingFingerPrint$4$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity([Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->hideProcessDialog()V

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onRDServiceCaptureFailed$3$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity(Landroid/view/View;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->setResult(I)V

    .line 135
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onRDServiceCaptureResponse$0$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onRDServiceDriverDiscoveryFailed$2$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity(Landroid/view/View;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->setResult(I)V

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onRDServiceDriverNotFound$1$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity(Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->setResult(I)V

    .line 109
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->finish()V

    return-void
.end method

.method synthetic lambda$verifyAbhaUsingFingerPrint$5$com-argusoft-sewa-android-app-activity-FingerPrintScannerActivity([Ljava/lang/String;)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->hideProcessDialog()V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->rdServiceManager:Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isFromAbhaSeeding"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->isFromAbhaSeeding:Ljava/lang/Boolean;

    .line 49
    new-instance p1, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;-><init>(Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->create()Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->rdServiceManager:Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;

    .line 50
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->discoverRdService()V

    return-void
.end method

.method public onRDServiceCaptureFailed(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 132
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;)V

    .line 137
    new-instance p2, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string p3, "Finger print capture failed, Please make sure your fingerprint device connected properly"

    const/16 v0, -0x69

    invoke-direct {p2, p0, p3, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 140
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onRDServiceCaptureResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 82
    new-instance p2, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;

    invoke-direct {p2, p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->build()Lfr/arnaudguyon/xmltojsonlib/XmlToJson;

    move-result-object p2

    .line 83
    invoke-virtual {p2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PidData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "Resp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "errCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "errInfo"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->showProcessDialog()V

    .line 87
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 88
    const-string v0, "pid"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->finish()V

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;)V

    .line 97
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const/16 v1, -0x69

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 100
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    :goto_0
    return-void
.end method

.method public onRDServiceDriverDiscovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 69
    new-instance p3, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;

    invoke-direct {p3, p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->build()Lfr/arnaudguyon/xmltojsonlib/XmlToJson;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "RDService"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "status"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string p3, "READY"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->onRDServiceDriverNotFound()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->rdServiceManager:Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;

    const-string p3, "<PidOptions ver=\"1.0\"> <Opts fCount=\"1\" fType=\"2\" pCount=\"0\" format=\"0\" pidVer=\"2.0\" \nwadh=\"RZ+k4w9ySTzOibQdDHPzCFqrKScZ74b3EibKYy1WyGw=\" \ntimeout=\"20000\" posh=\"UNKNOWN\" env=\"P\" /> </PidOptions>"

    invoke-virtual {p1, p2, p3}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->captureRdService(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRDServiceDriverDiscoveryFailed(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;)V

    .line 124
    new-instance p2, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string p3, "RD service drivers discovery failed, Please make sure your fingerprint device connected properly"

    const/16 p4, -0x69

    invoke-direct {p2, p0, p3, p1, p4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 127
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onRDServiceDriverNotFound()V
    .locals 4

    .line 106
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;)V

    .line 111
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "RD service drivers not found, Please make sure your fingerprint device connected properly"

    const/16 v3, -0x69

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 114
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public verifyAbhaUsingFingerPrint(Ljava/lang/String;)V
    .locals 6

    .line 188
    const-string v0, "token"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Issue for creating Health ID"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 189
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 193
    :try_start_0
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;-><init>()V

    .line 194
    const-string v5, "txnId"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->setTxnId(Ljava/lang/String;)V

    .line 195
    const-string v2, "FMR"

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->setBioType(Ljava/lang/String;)V

    .line 196
    const-string v2, "FINGERSCAN"

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->setAuthType(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v4, p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->setPid(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->confirmBio(Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;)Ljava/util/Map;

    move-result-object p1

    .line 199
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->hideProcessDialog()V

    .line 200
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 201
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 202
    invoke-virtual {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 206
    const-string v0, "FingerPrintScanner"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 210
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v1}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
