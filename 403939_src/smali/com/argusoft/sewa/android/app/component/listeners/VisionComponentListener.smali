.class public Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;
.super Ljava/lang/Object;
.source "VisionComponentListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private final axisEditText:Landroid/widget/EditText;

.field private final context:Landroid/content/Context;

.field private final cylSignSpinner:Landroid/widget/Spinner;

.field private final cylValuesSpinner:Landroid/widget/Spinner;

.field private isAxisValid:Z

.field private isCylValid:Z

.field private isSphValid:Z

.field private isVisionValid:Z

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private final sphSignSpinner:Landroid/widget/Spinner;

.field private final sphValuesSpinner:Landroid/widget/Spinner;

.field private validateOnFocusLost:Z

.field private final visionSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isSphValid:Z

    .line 33
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isCylValid:Z

    .line 34
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isAxisValid:Z

    .line 35
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isVisionValid:Z

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateOnFocusLost:Z

    .line 43
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 46
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphSignSpinner:Landroid/widget/Spinner;

    .line 47
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphValuesSpinner:Landroid/widget/Spinner;

    .line 49
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylSignSpinner:Landroid/widget/Spinner;

    .line 50
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylValuesSpinner:Landroid/widget/Spinner;

    .line 52
    iput-object p7, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->axisEditText:Landroid/widget/EditText;

    .line 53
    iput-object p8, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->visionSpinner:Landroid/widget/Spinner;

    .line 55
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->setupListeners()V

    .line 56
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->prefillData()V

    .line 57
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateAll()V

    return-void
.end method

.method private prefillData()V
    .locals 13

    .line 61
    const-string v0, "vision"

    const-string v1, "axis"

    const-string v2, "cyl"

    const-string v3, "sph"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 63
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "+ve"

    const-string v7, "-ve"

    const-string v8, "+"

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v5, :cond_1

    .line 66
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_1

    .line 68
    invoke-virtual {v3, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    move-object v5, v7

    .line 69
    :goto_0
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphSignSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v12, v5}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 71
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphValuesSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v5, v3}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v10, :cond_3

    .line 78
    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 79
    :goto_1
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylSignSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v3, v6}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylValuesSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v3, v2}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 85
    :cond_3
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->axisEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_4
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->visionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method private setAnswer()V
    .locals 8

    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    :try_start_0
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isSphValid:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "+"

    const-string v3, "-"

    const-string v4, "+ve"

    if-eqz v1, :cond_1

    .line 213
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphSignSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 214
    :goto_0
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphValuesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 215
    const-string v6, "sph"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    :cond_1
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isCylValid:Z

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylSignSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 221
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylValuesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    const-string v3, "cyl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    :cond_3
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isAxisValid:Z

    if-eqz v1, :cond_4

    .line 227
    const-string v1, "axis"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->axisEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    :cond_4
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isVisionValid:Z

    if-eqz v1, :cond_5

    .line 232
    const-string v1, "vision"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->visionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 235
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 238
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isSphValid:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isCylValid:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isAxisValid:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isVisionValid:Z

    if-eqz v1, :cond_7

    .line 239
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto :goto_4

    .line 242
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isSphValid:Z

    if-nez v1, :cond_8

    const-string v1, "SPH, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_8
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isCylValid:Z

    if-nez v1, :cond_9

    const-string v1, "CYL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_9
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isAxisValid:Z

    if-nez v1, :cond_a

    const-string v1, "AXIS, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_a
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isVisionValid:Z

    if-nez v1, :cond_b

    const-string v1, "VISION, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 252
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Please enter missing value for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 255
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    return-void
.end method

.method private setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 100
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setupListeners()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphSignSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphValuesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylSignSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylValuesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->axisEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->axisEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->visionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private validateAxis()V
    .locals 3

    const/4 v0, 0x0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->axisEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0xb4

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 183
    :goto_0
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isAxisValid:Z

    goto :goto_1

    .line 185
    :cond_1
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isAxisValid:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 188
    :catch_0
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isAxisValid:Z

    :goto_1
    return-void
.end method

.method private validateCyl()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylSignSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylValuesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isCylValid:Z

    return-void
.end method

.method private validateSph()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphSignSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphValuesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isSphValid:Z

    return-void
.end method

.method private validateVision()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->visionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->isVisionValid:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 158
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateOnFocusLost:Z

    if-nez p1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateAxis()V

    .line 160
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->setAnswer()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->axisEditText:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateAxis()V

    .line 142
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->setAnswer()V

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 123
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphSignSpinner:Landroid/widget/Spinner;

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->sphValuesSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylSignSpinner:Landroid/widget/Spinner;

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->cylValuesSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->visionSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_4

    .line 128
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateVision()V

    goto :goto_2

    .line 126
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateCyl()V

    goto :goto_2

    .line 124
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateSph()V

    .line 130
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->setAnswer()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public validateAll()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateOnFocusLost:Z

    .line 198
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateSph()V

    .line 199
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateCyl()V

    .line 200
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateAxis()V

    .line 201
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateVision()V

    .line 202
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->setAnswer()V

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;->validateOnFocusLost:Z

    return-void
.end method
