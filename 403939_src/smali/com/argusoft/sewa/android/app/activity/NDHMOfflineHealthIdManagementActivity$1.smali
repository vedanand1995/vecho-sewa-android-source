.class Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;
.super Ljava/lang/Object;
.source "NDHMOfflineHealthIdManagementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->setConsentMessageScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;

.field final synthetic val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

.field final synthetic val$checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxAnonymization:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxBeneficiary:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxForABHAUsage:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxForSharing:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxHealthWorker:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$checkBoxOtherThanAadhaar:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field final synthetic val$gson:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/gson/Gson;)V
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxOtherThanAadhaar:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxForABHAUsage:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxForSharing:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxAnonymization:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p8, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxHealthWorker:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p9, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxBeneficiary:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p10, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAadhaarSharingConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAadhaarSharingConsentGiven(Ljava/lang/Boolean;)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxOtherThanAadhaar:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setDocOtherThanAadhaarConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setDocOtherThanAadhaarConsentGiven(Ljava/lang/Boolean;)V

    .line 270
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxForABHAUsage:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAbhaUsageConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAbhaUsageConsentGiven(Ljava/lang/Boolean;)V

    .line 276
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxForSharing:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setSharingHealthRecordsConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_3

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setSharingHealthRecordsConsentGiven(Ljava/lang/Boolean;)V

    .line 282
    :goto_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxAnonymization:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAnonymizationConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setAnonymizationConsentGiven(Ljava/lang/Boolean;)V

    .line 288
    :goto_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxHealthWorker:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setHealthWorkerConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 291
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setHealthWorkerConsentGiven(Ljava/lang/Boolean;)V

    .line 294
    :goto_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$checkBoxBeneficiary:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setBeneficiaryConsentGiven(Ljava/lang/Boolean;)V

    goto :goto_6

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->setBeneficiaryConsentGiven(Ljava/lang/Boolean;)V

    .line 300
    :goto_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->val$abhaConsentCheckboxModel:Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdManagementActivity;Landroid/view/View;)V

    return-void
.end method
