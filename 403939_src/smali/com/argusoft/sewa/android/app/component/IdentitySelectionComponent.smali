.class public Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;
.super Landroid/widget/LinearLayout;
.source "IdentitySelectionComponent.java"


# instance fields
.field private aadhaarConsentCheckbox:Landroid/widget/CheckBox;

.field private final context:Landroid/content/Context;

.field private idNumberAnswer:Ljava/lang/String;

.field private idNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private idNumberRp:Ljava/lang/String;

.field private idTypeAnswer:Ljava/lang/String;

.field private idTypeComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

.field private idTypeRp:Ljava/lang/String;

.field private isListenerEnabled:Z

.field private isQuestionMandatory:Ljava/lang/String;

.field private mainLayoutRef:Landroid/widget/LinearLayout;

.field private memberType:Ljava/lang/String;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private relationSingleSelectComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

.field private relationWithIdHolderAnswer:Ljava/lang/String;

.field private relationWithIdHolderRp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->isListenerEnabled:Z

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 53
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->setBasicData()V

    .line 54
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->setMainLayout()V

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderAnswer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/argusoft/sewa/android/app/SingleSelectComponent;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationSingleSelectComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/LinearLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->mainLayoutRef:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->validateIdNumber()V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->setAnswer()V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->isListenerEnabled:Z

    return p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->isListenerEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/argusoft/sewa/android/app/SingleSelectComponent;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/widget/CheckBox;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->aadhaarConsentCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$702(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->aadhaarConsentCheckbox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    return-object p0
.end method

.method private setAnswer()V
    .locals 6

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->isQuestionMandatory:Ljava/lang/String;

    const-string v1, "Please enter valid ID number"

    const-string v2, "T"

    const-string v3, "#"

    const/4 v4, 0x0

    const-string v5, "-1"

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 219
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderAnswer:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    const-string v1, "AADHAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->aadhaarConsentCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "Please confirm Aadhaar consent"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderAnswer:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 226
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 223
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "Type of ID"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 220
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "Relation with the ID holder"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 241
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderAnswer:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 243
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 244
    :cond_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 245
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto :goto_3

    .line 248
    :cond_d
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "Please enter valid ID type"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto :goto_3

    .line 251
    :cond_f
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 254
    :cond_11
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private setBasicData()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "F"

    :goto_0
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->isQuestionMandatory:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 75
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderRp:Ljava/lang/String;

    .line 76
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeRp:Ljava/lang/String;

    .line 77
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberRp:Ljava/lang/String;

    .line 78
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->memberType:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method private setMainLayout()V
    .locals 8

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->mainLayoutRef:Landroid/widget/LinearLayout;

    .line 86
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->isQuestionMandatory:Ljava/lang/String;

    const-string v4, "F"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationSingleSelectComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderRp:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeRp:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberRp:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeRp:Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderRp:Ljava/lang/String;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was collected during the previous visit for this child."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationWithIdHolderRp:Ljava/lang/String;

    .line 99
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeRp:Ljava/lang/String;

    .line 100
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberRp:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Relation with the ID holder"

    const-string v6, "T"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {v4, v4, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {v4, v4, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationSingleSelectComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    if-nez v1, :cond_4

    .line 111
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->memberType:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v5, "C"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    new-instance v1, Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {}, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->getIdHolderRelationForChildOptions()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v1, v5, v7, v4}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationSingleSelectComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    goto :goto_1

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->memberType:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v5, "M"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    new-instance v1, Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {}, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->getIdHolderRelationForMotherOptions()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v1, v5, v7, v4}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationSingleSelectComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    goto :goto_1

    .line 116
    :cond_3
    new-instance v1, Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {}, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->getIdHolderRelationForOtherOptions()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v1, v5, v7, v4}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationSingleSelectComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationSingleSelectComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    new-instance v5, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$1;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V

    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->relationSingleSelectComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Type of ID"

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {v4, v4, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {v4, v4, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    :goto_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    if-nez v1, :cond_6

    .line 139
    new-instance v1, Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {}, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->getIdTypeOptions()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v1, v5, v7, v4}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    .line 140
    new-instance v5, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$2;-><init>(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V

    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 174
    :cond_6
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeComponent:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ID number"

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 176
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {v4, v4, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 179
    :cond_7
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    invoke-static {v4, v4, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    :goto_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v1, :cond_9

    .line 182
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->context:Landroid/content/Context;

    const/16 v4, 0x14

    invoke-static {v1, v5, v3, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 183
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberRp:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 184
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberRp:Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    .line 186
    :cond_8
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$3;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$3;-><init>(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    :cond_9
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->addView(Landroid/view/View;)V

    return-void
.end method

.method private validateIdNumber()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idTypeAnswer:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validateIdNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->idNumberAnswer:Ljava/lang/String;

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->setAnswer()V

    return-void
.end method


# virtual methods
.method public resetComponent()V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->removeAllViews()V

    .line 59
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->setBasicData()V

    .line 60
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->setMainLayout()V

    return-void
.end method
