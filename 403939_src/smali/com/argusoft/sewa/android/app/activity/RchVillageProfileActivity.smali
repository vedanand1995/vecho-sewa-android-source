.class public Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "RchVillageProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private isContactDetailsScreen:Z

.field private isVillageProfileScreen:Z

.field private isVillageSelectionScreen:Z

.field private isWorkerDetailsScreen:Z

.field private locationBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private nextButton:Landroid/widget/Button;

.field private selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

.field private spinner:Landroid/widget/Spinner;

.field private villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->locationBeans:Ljava/util/List;

    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageSelectionScreen:Z

    .line 52
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageProfileScreen:Z

    .line 53
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isContactDetailsScreen:Z

    .line 54
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isWorkerDetailsScreen:Z

    return-void
.end method

.method private addVillageSelectionSpinner()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 147
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 150
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->spinner:Landroid/widget/Spinner;

    .line 151
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createContactDetailsScreen()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x11

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 193
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Emergency Contact Details"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Nearby Hospital Address & Phone : "

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getNearbyHospitalDetail()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "FRU Name & Phone : "

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getFruDetail()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Ambulance Number : "

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getAmbulanceNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Transportation Number : "

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getTransportationNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "National Call Center Number : "

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getNationalCallCentreNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Helpline Number : "

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getHelplineNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createWorkerDetailsScreen()V
    .locals 10

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x11

    .line 218
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 219
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Asha Detail"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getAshaDetail()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    .line 227
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Asha"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Name : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v5, p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Mobile Number : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v5, p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Aadhaar Number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v5, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getAadharNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/2addr v2, v1

    goto/16 :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "ANM Detail"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 247
    const-string v2, "Name : "

    invoke-static {v5, v5, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getAnmDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 252
    const-string v3, "Mobile Number : "

    invoke-static {v5, v5, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getAnmDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 257
    const-string v6, "Aadhaar Number : "

    invoke-static {v5, v5, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getAnmDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getAadharNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v7, "FHW Detail"

    invoke-static {p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 264
    invoke-static {v5, v5, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getFhwDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 269
    invoke-static {v5, v5, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getFhwDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 274
    invoke-static {v5, v5, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getFhwDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getAadharNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v7, "MPHW Detail"

    invoke-static {p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 281
    invoke-static {v5, v5, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getFhwDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 286
    invoke-static {v5, v5, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getFhwDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    invoke-static {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 291
    invoke-static {v5, v5, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getFhwDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;->getAadharNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 81
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v1, "Processing...."

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 83
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 84
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 85
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->nextButton:Landroid/widget/Button;

    .line 88
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->setBodyDetail()V

    return-void
.end method


# virtual methods
.method public createVillageProfileScreen()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x11

    .line 163
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 164
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Basic Details"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 169
    invoke-static {p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 170
    const-string v4, "Total Population : "

    invoke-static {v2, v2, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getTotalPopulation()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    invoke-static {p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 175
    const-string v4, "Total Eligible Couple : "

    invoke-static {v2, v2, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getTotalEligibleCouple()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    invoke-static {p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 180
    const-string v4, "Pregnant Women Count : "

    invoke-static {v2, v2, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getPregnantWomenCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-static {p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 185
    const-string v1, "Infant Child Count : "

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getInfantChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getRchVillageProfileDataBeanNetworkCall()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getRchVillageProfileDataBean(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->villageProfile:Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    .line 157
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->createVillageProfileScreen()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_5

    .line 113
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageSelectionScreen:Z

    if-eqz p1, :cond_2

    .line 114
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 116
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->getRchVillageProfileDataBeanNetworkCall()V

    .line 123
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageSelectionScreen:Z

    .line 124
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageProfileScreen:Z

    goto :goto_0

    .line 125
    :cond_2
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageProfileScreen:Z

    if-eqz p1, :cond_3

    .line 126
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 127
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->createContactDetailsScreen()V

    .line 128
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isContactDetailsScreen:Z

    .line 129
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageProfileScreen:Z

    goto :goto_0

    .line 130
    :cond_3
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isContactDetailsScreen:Z

    if-eqz p1, :cond_4

    .line 131
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 132
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->createWorkerDetailsScreen()V

    .line 133
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isContactDetailsScreen:Z

    .line 134
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isWorkerDetailsScreen:Z

    .line 135
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->navigateToHomeScreen(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 298
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_4

    .line 300
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isWorkerDetailsScreen:Z

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 302
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->createContactDetailsScreen()V

    .line 303
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 304
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isWorkerDetailsScreen:Z

    .line 305
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isContactDetailsScreen:Z

    goto :goto_0

    .line 306
    :cond_0
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isContactDetailsScreen:Z

    if-eqz p1, :cond_1

    .line 307
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 308
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->createVillageProfileScreen()V

    .line 309
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isContactDetailsScreen:Z

    .line 310
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageProfileScreen:Z

    goto :goto_0

    .line 311
    :cond_1
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageProfileScreen:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 312
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 313
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->locationBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 314
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageProfileScreen:Z

    .line 315
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 317
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageSelectionScreen:Z

    .line 318
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageProfileScreen:Z

    .line 319
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->addVillageSelectionSpinner()V

    goto :goto_0

    .line 322
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageSelectionScreen:Z

    .line 323
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->navigateToHomeScreen(Z)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->setContentView(Landroid/view/View;)V

    .line 70
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->finish()V

    .line 77
    :cond_1
    const-string v0, "Village Profile"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->locationBeans:Ljava/util/List;

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->locationBeans:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 97
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageSelectionScreen:Z

    .line 98
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageProfileScreen:Z

    .line 99
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->getRchVillageProfileDataBeanNetworkCall()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageProfileScreen:Z

    .line 102
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->getRchVillageProfileDataBeanNetworkCall()V

    goto :goto_0

    .line 104
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->isVillageSelectionScreen:Z

    .line 105
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method
