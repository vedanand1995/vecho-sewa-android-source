.class public Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;
.super Ljava/lang/Object;
.source "CheckBoxWithTextBoxAadhaarListener.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$SaveOnChangeWatcher;
    }
.end annotation


# static fields
.field private static final DEFAULT_MANDATORY_MESSAGE:Ljava/lang/String; = "Please enter all Aadhaar details"

.field private static final LETTERS_REGEX:[Ljava/lang/String;


# instance fields
.field private aadhaarET:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputLayout:Landroid/widget/LinearLayout;

.field private isChecked:Z

.field private nameET:Lcom/google/android/material/textfield/TextInputEditText;

.field private nameLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final onlyAadhaar:Z

.field private final originalMandatory:Ljava/lang/String;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "regex"

    const-string v1, "letters"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->LETTERS_REGEX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 8

    .line 39
    const-string v0, "-"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->isChecked:Z

    .line 40
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 41
    const-string v2, "F"

    .line 44
    :try_start_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    array-length v0, v4

    if-le v0, v3, :cond_0

    const-string v0, "1"

    aget-object v5, v4, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "T"

    move-object v2, v0

    .line 50
    :cond_0
    array-length v0, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    aget-object v6, v4, v5

    .line 51
    const-string v7, "onlyAadhaar"

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    :catch_0
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->originalMandatory:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->onlyAadhaar:Z

    .line 61
    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->save()V

    return-void
.end method

.method private clearNameError()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->nameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->nameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 222
    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private invalidateAnswer(I)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 183
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "nameAsPerAadhaar"

    invoke-static {v3, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 185
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    :cond_1
    return-void
.end method

.method private removeFromShared()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameAsPerAadhaar"

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "dobAsPerAadhaar"

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private reset()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->aadhaarET:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->nameET:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->clearNameError()V

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 206
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->removeFromShared()V

    return-void
.end method

.method private save()V
    .locals 9

    .line 114
    const-string v0, "nameAsPerAadhaar"

    .line 115
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 118
    :goto_0
    iget-boolean v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->isChecked:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->clearNameError()V

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v0, v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    return-void

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->aadhaarET:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v3

    .line 126
    iget-boolean v6, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->onlyAadhaar:Z

    if-eqz v6, :cond_2

    const-string v6, ""

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->nameET:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v6}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v6

    .line 130
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 131
    sget-object v7, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->LETTERS_REGEX:[Ljava/lang/String;

    invoke-static {v7, v6, v5}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->validateRegex([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_4

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->nameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->invalidateAnswer(I)V

    return-void

    .line 139
    :cond_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->clearNameError()V

    .line 140
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v7, "Please enter all Aadhaar details"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 142
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "dobAsPerAadhaar"

    invoke-static {v7, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 146
    iget-boolean v8, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->onlyAadhaar:Z

    if-eqz v8, :cond_5

    .line 147
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    goto :goto_2

    .line 148
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 150
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->invalidateAnswer(I)V

    return-void

    .line 154
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v8, 0xc

    if-eq v2, v8, :cond_9

    .line 155
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->invalidateAnswer(I)V

    return-void

    .line 159
    :cond_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 161
    :try_start_0
    const-string v8, "aadhaarNumber"

    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    iget-boolean v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->onlyAadhaar:Z

    if-nez v3, :cond_a

    .line 163
    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 167
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 170
    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 171
    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->onlyAadhaar:Z

    if-nez v2, :cond_b

    .line 172
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v0, v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    return-void
.end method


# virtual methods
.method public isOnlyAadhaar()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->onlyAadhaar:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 89
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->isChecked:Z

    if-eqz p2, :cond_0

    .line 91
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ACTIVE_CTBA_QUESTION_ID:Ljava/lang/Integer;

    .line 92
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->inputLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string p2, "T"

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string p2, "Please enter all Aadhaar details"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->reset()V

    const/4 p1, 0x0

    .line 97
    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ACTIVE_CTBA_QUESTION_ID:Ljava/lang/Integer;

    .line 98
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->inputLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->originalMandatory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->save()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->save()V

    :cond_0
    return-void
.end method

.method public setInputs(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 71
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->inputLayout:Landroid/widget/LinearLayout;

    .line 72
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->nameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->aadhaarET:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->nameET:Lcom/google/android/material/textfield/TextInputEditText;

    .line 75
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->aadhaarET:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p2, :cond_1

    .line 76
    invoke-virtual {p2, p0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->aadhaarET:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$SaveOnChangeWatcher;

    invoke-direct {p3, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$SaveOnChangeWatcher;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$1;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->nameET:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p2, :cond_2

    .line 81
    invoke-virtual {p2, p0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 82
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->nameET:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$SaveOnChangeWatcher;

    invoke-direct {p3, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$SaveOnChangeWatcher;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$1;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method
