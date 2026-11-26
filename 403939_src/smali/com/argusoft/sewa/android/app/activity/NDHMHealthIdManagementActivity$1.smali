.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;
.super Ljava/lang/Object;
.source "NDHMHealthIdManagementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setConsentMessageScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

.field final synthetic val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

.field final synthetic val$checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxAnonymization:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxBeneficiary:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxForABHAUsage:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxForSharing:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxHealthWorker:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxOtherThanAadhaar:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$gson:Lcom/google/gson/Gson;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/gson/Gson;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxHealthWorker:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxBeneficiary:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxOtherThanAadhaar:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxForABHAUsage:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p8, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxForSharing:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p9, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxAnonymization:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p10, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$gson:Lcom/google/gson/Gson;

    iput p11, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 270
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxHealthWorker:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxBeneficiary:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 272
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAadhaarSharingConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAadhaarSharingConsentGiven(Ljava/lang/Boolean;)V

    .line 278
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxOtherThanAadhaar:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setDocOtherThanAadhaarConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setDocOtherThanAadhaarConsentGiven(Ljava/lang/Boolean;)V

    .line 284
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxForABHAUsage:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 285
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAbhaUsageConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 287
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAbhaUsageConsentGiven(Ljava/lang/Boolean;)V

    .line 290
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxForSharing:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 291
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setSharingHealthRecordsConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_3

    .line 293
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setSharingHealthRecordsConsentGiven(Ljava/lang/Boolean;)V

    .line 296
    :goto_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxAnonymization:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 297
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAnonymizationConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 299
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAnonymizationConsentGiven(Ljava/lang/Boolean;)V

    .line 302
    :goto_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxHealthWorker:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 303
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setHealthWorkerConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 305
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setHealthWorkerConsentGiven(Ljava/lang/Boolean;)V

    .line 308
    :goto_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$checkBoxBeneficiary:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 309
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setBeneficiaryConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_6

    .line 311
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setBeneficiaryConsentGiven(Ljava/lang/Boolean;)V

    .line 313
    :goto_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$gson:Lcom/google/gson/Gson;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 315
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->val$position:I

    const/16 v1, 0x3e8

    const-string v2, "abhaConsentCheckboxModel"

    const-string v3, "memberId"

    const-string v4, "featureName"

    const-string v5, "dob"

    const-string v6, "mobileNumber"

    const-string v7, "gender"

    const-string v8, "aadharScanned"

    const-string v9, "lastName"

    const-string v10, "firstName"

    const-string v11, "nameOfBeneficiary"

    if-nez v0, :cond_7

    .line 316
    new-instance v0, Landroid/content/Intent;

    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    iget-object v12, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    const-class v13, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;

    invoke-direct {v0, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-static {v12}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 319
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_7

    .line 329
    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    iget-object v12, v12, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    const-class v13, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

    invoke-direct {v0, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-static {v12}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 332
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    .line 343
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    const-string v0, "Please check to aadhaar sharing and confirmation consents to continue"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_7
    return-void
.end method
