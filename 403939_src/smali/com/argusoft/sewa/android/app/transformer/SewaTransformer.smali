.class public Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;
.super Ljava/lang/Object;
.source "SewaTransformer.java"


# static fields
.field public static loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

.field private static transformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertDobToMillis(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 719
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    .line 725
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x0

    .line 726
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 728
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 729
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DOB parse failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SewaTransformer"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static convertGender(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 740
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 742
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "M"

    return-object p0

    .line 743
    :cond_1
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "F"

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static convertUwinMemberDtoToMemberDataBean(Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;
    .locals 2

    .line 704
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>()V

    .line 706
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;->beneficiaryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setUniqueHealthId(Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;->benName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setFirstName(Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setMobileNumber(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;->gender:Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setGender(Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;->dob:Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertDobToMillis(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setDob(Ljava/lang/Long;)V

    .line 713
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;->referenceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setMemberId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;
    .locals 1

    .line 58
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->transformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->transformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    .line 61
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->transformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    return-object v0
.end method


# virtual methods
.method public convertComponentDataBeanToAnswerBeanModel(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/AnswerBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/AnswerBean;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 371
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    .line 373
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;

    .line 376
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getOptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    .line 378
    new-instance v3, Lcom/argusoft/sewa/android/app/model/AnswerBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/model/AnswerBean;-><init>()V

    .line 379
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->setKey(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 381
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->setNext(I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 383
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->setNext(I)V

    .line 385
    :goto_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->setQueId(I)V

    .line 386
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->setRelatedpropertyname(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getSubform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->setSubform(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->setValue(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v3, p3}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->setEntity(Ljava/lang/String;)V

    .line 390
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public convertComponentDataBeanToQuestionBeanModel(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/QuestionBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/QuestionBean;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_d

    .line 276
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez p1, :cond_0

    .line 278
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;

    .line 281
    new-instance v1, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/QuestionBean;-><init>()V

    .line 282
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setQueId(I)V

    .line 283
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setTitle(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setSubtitle(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setInstruction(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setQuestion(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setType(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "T"

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setIsmandatory(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 291
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setIsmandatory(Ljava/lang/Boolean;)V

    .line 293
    :goto_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setLength(I)V

    .line 295
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getValidations()Ljava/util/List;

    move-result-object v2

    const-string v4, ":"

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getValidations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 299
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getValidations()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    if-eqz v7, :cond_2

    .line 301
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_2

    .line 305
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 311
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setValidationmessage(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setValidationmethod(Ljava/lang/String;)V

    goto :goto_3

    .line 314
    :cond_4
    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setValidationmessage(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setValidationmethod(Ljava/lang/String;)V

    .line 317
    :goto_3
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 320
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getFormulas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    if-eqz v5, :cond_5

    .line 322
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_4

    .line 325
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 329
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setFormulass(Ljava/lang/String;)V

    goto :goto_5

    .line 331
    :cond_7
    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setFormulass(Ljava/lang/String;)V

    .line 333
    :goto_5
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getDatamap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setDatamap(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 335
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setNext(I)V

    goto :goto_6

    .line 337
    :cond_8
    invoke-virtual {v1, v4}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setNext(I)V

    .line 339
    :goto_6
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getSubform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setSubform(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setRelatedpropertyname(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getIshidden()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getIshidden()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 342
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setIshidden(Ljava/lang/Boolean;)V

    goto :goto_7

    .line 344
    :cond_9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setIshidden(Ljava/lang/Boolean;)V

    .line 346
    :goto_7
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setEvent(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getBinding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getBinding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getBinding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 348
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getBinding()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 349
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getBinding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getBinding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setBinding(Ljava/lang/String;)V

    goto :goto_8

    .line 351
    :cond_a
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getBinding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setBinding(Ljava/lang/String;)V

    goto :goto_8

    .line 354
    :cond_b
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setBinding(Ljava/lang/String;)V

    .line 356
    :goto_8
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getPage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 357
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getPage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setPage(I)V

    goto :goto_9

    .line 359
    :cond_c
    invoke-virtual {v1, v4}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setPage(I)V

    .line 361
    :goto_9
    invoke-virtual {v1, p3}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setEntity(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setHint(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->getHelpvideofield()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->setHelpvideofield(Ljava/lang/String;)V

    .line 364
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    return-object p1
.end method

.method public convertListValueBeansToFieldValueDataBean(Lcom/argusoft/sewa/android/app/model/ListValueBean;)Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;
    .locals 3

    if-eqz p1, :cond_0

    .line 563
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;-><init>()V

    .line 564
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setField(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getFieldType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setFieldType(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getFormCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setFormCode(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getIdOfValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setIdOfValue(I)V

    const-wide/high16 v1, -0x8000000000000000L

    .line 568
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setLastUpdateOfFieldValue(Ljava/lang/Long;)V

    .line 569
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setValue(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public convertListValueBeansToFieldValueDataBean(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/ListValueBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;"
        }
    .end annotation

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 553
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    .line 555
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertListValueBeansToFieldValueDataBean(Lcom/argusoft/sewa/android/app/model/ListValueBean;)Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public convertLocationDataBeanToLocationModel(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 122
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz p1, :cond_1

    .line 124
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;

    .line 126
    new-instance v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;-><init>()V

    .line 127
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setActualID(Ljava/lang/Integer;)V

    .line 128
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->getParent()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setParent(Ljava/lang/Integer;)V

    .line 130
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->getLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setLevel(Ljava/lang/Integer;)V

    .line 131
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->getIsActive()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setIsActive(Ljava/lang/Boolean;)V

    .line 132
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->getLgdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setLgdCode(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setType(Ljava/lang/String;)V

    .line 134
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public convertMigratedFamilyBeanToDataBean(Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;)Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;
    .locals 3

    .line 679
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;-><init>()V

    .line 681
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getMigrationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setMigrationId(Ljava/lang/Integer;)V

    .line 682
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getFamilyId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setFamilyId(Ljava/lang/Integer;)V

    .line 683
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getFamilyIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setFamilyIdString(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLocationMigratedFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setLocationMigratedFrom(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLocationMigratedTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setLocationMigratedTo(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getFromLocationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setFromLocationId(Ljava/lang/Integer;)V

    .line 687
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getToLocationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setToLocationId(Ljava/lang/Integer;)V

    .line 688
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setOutOfState(Ljava/lang/Boolean;)V

    .line 689
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setIsConfirmed(Ljava/lang/Boolean;)V

    .line 690
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setIsLfu(Ljava/lang/Boolean;)V

    .line 691
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getSplitFamily()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setIsSplitFamily(Ljava/lang/Boolean;)V

    .line 692
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getsFamilyId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setsFamilyId(Ljava/lang/Integer;)V

    .line 693
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getsFamilyIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setsFamilyIdString(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getSplitMembersDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setSplitMembersDetail(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 697
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getModifiedOn()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->setModifiedOn(Ljava/lang/Long;)V

    :cond_0
    return-object v0
.end method

.method public convertMigratedFamilyDataBeanToBean(Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;)Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;
    .locals 4

    .line 654
    new-instance v0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;-><init>()V

    .line 656
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getMigrationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setMigrationId(Ljava/lang/Integer;)V

    .line 657
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getFamilyId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setFamilyId(Ljava/lang/Integer;)V

    .line 658
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getFamilyIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setFamilyIdString(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getLocationMigratedFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setLocationMigratedFrom(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getLocationMigratedTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setLocationMigratedTo(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getFromLocationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setFromLocationId(Ljava/lang/Integer;)V

    .line 662
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getToLocationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setToLocationId(Ljava/lang/Integer;)V

    .line 663
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setOutOfState(Ljava/lang/Boolean;)V

    .line 664
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getIsConfirmed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setConfirmed(Ljava/lang/Boolean;)V

    .line 665
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getIsLfu()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setLfu(Ljava/lang/Boolean;)V

    .line 666
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getIsSplitFamily()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setSplitFamily(Ljava/lang/Boolean;)V

    .line 667
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getsFamilyId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setsFamilyId(Ljava/lang/Integer;)V

    .line 668
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getsFamilyIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setsFamilyIdString(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getSplitMembersDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setSplitMembersDetail(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getModifiedOn()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 672
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;->getModifiedOn()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->setModifiedOn(Ljava/util/Date;)V

    :cond_0
    return-object v0
.end method

.method public convertMigratedMembersBeanToDataBean(Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;)Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;
    .locals 3

    .line 629
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;-><init>()V

    .line 631
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getMigrationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setMigrationId(Ljava/lang/Long;)V

    .line 632
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setMemberId(Ljava/lang/Long;)V

    .line 633
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setName(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setHealthId(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setHealthId(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLocationMigratedFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setLocationMigratedFrom(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLocationMigratedTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setLocationMigratedTo(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getFamilyMigratedFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setFamilyMigratedFrom(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getFamilyMigratedTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setFamilyMigratedTo(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getFromLocationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setFromLocationId(Ljava/lang/Long;)V

    .line 641
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getToLocationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setToLocationId(Ljava/lang/Long;)V

    .line 642
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setOutOfState(Ljava/lang/Boolean;)V

    .line 643
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setConfirmed(Ljava/lang/Boolean;)V

    .line 644
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setLfu(Ljava/lang/Boolean;)V

    .line 646
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getModifiedOn()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->setModifiedOn(Ljava/lang/Long;)V

    :cond_0
    return-object v0
.end method

.method public convertMigratedMembersDataBeanToBean(Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;)Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;
    .locals 4

    .line 604
    new-instance v0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;-><init>()V

    .line 606
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getMigrationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setMigrationId(Ljava/lang/Long;)V

    .line 607
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setMemberId(Ljava/lang/Long;)V

    .line 608
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setName(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setHealthId(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setHealthId(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getLocationMigratedFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setLocationMigratedFrom(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getLocationMigratedTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setLocationMigratedTo(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getFamilyMigratedFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setFamilyMigratedFrom(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getFamilyMigratedTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setFamilyMigratedTo(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getFromLocationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setFromLocationId(Ljava/lang/Long;)V

    .line 616
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getToLocationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setToLocationId(Ljava/lang/Long;)V

    .line 617
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setOutOfState(Ljava/lang/Boolean;)V

    .line 618
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setConfirmed(Ljava/lang/Boolean;)V

    .line 619
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setLfu(Ljava/lang/Boolean;)V

    .line 621
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getModifiedOn()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 622
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;->getModifiedOn()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->setModifiedOn(Ljava/util/Date;)V

    :cond_0
    return-object v0
.end method

.method public convertNotificationDataBeanToNotificationBeanModel(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_c

    .line 141
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    if-nez p1, :cond_0

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 146
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 147
    new-instance v2, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/NotificationBean;-><init>()V

    .line 148
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getBeneficiaryId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setBeneficiaryId(Ljava/lang/Long;)V

    .line 149
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\("

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 153
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 154
    aget-object v4, v3, v5

    const-string v5, "\\)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 155
    array-length v5, v4

    if-lez v5, :cond_1

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v6

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 162
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 163
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setDateOfNotification(Ljava/util/Date;)V

    .line 165
    :cond_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpiryDate()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 166
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpiryDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setExpiryDate(Ljava/util/Date;)V

    .line 168
    :cond_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setExpectedDueDateString(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 169
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setId(Ljava/lang/Integer;)V

    .line 170
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getNoOfNotificationType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setNoOfNotificationType(I)V

    .line 171
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setNotificationCode(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setNotificationId(Ljava/lang/Long;)V

    .line 173
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getIsChild()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 174
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getIsChild()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    const-string v3, "C"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setNotificationOf(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_4
    const-string v3, "M"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setNotificationOf(Ljava/lang/String;)V

    .line 180
    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    .line 181
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setCustomField(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverDueDate()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_6

    .line 183
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverDueDate(Ljava/lang/Long;)V

    .line 185
    :cond_6
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverDueDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setOverDueDate(Ljava/lang/Long;)V

    .line 186
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getDiagnosisDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 187
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getDiagnosisDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setDiagnosisDate(Ljava/lang/String;)V

    .line 189
    :cond_7
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getAshaId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 190
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getAshaId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setAshaId(Ljava/lang/Long;)V

    .line 192
    :cond_8
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getAshaName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 193
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getAshaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setAshaName(Ljava/lang/String;)V

    .line 195
    :cond_9
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getPositiveFindings()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 196
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getPositiveFindings()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setPositiveFindings(Ljava/lang/String;)V

    .line 198
    :cond_a
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getLocationId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setLocationId(Ljava/lang/Long;)V

    .line 199
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setMemberId(Ljava/lang/Long;)V

    .line 200
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setFamilyId(Ljava/lang/Long;)V

    .line 201
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setOtherDetails(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMigrationId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setMigrationId(Ljava/lang/Long;)V

    .line 203
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getModifiedOn()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setModifiedOn(Ljava/util/Date;)V

    .line 204
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setState(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setHeader(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getScheduledDate()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 207
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getScheduledDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setScheduledDate(Ljava/util/Date;)V

    .line 209
    :cond_b
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    return-object p1
.end method

.method public convertNotificationModelToNotificationDataBean(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 216
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p2, :cond_0

    .line 218
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    if-eqz v0, :cond_1

    .line 223
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;-><init>()V

    .line 224
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getAshaId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setAshaId(Ljava/lang/Long;)V

    .line 225
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getAshaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setAshaName(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getBeneficiaryId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setBeneficiaryId(Ljava/lang/Long;)V

    .line 227
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getDateOfNotification()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getDateOfNotification()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setExpectedDueDate(Ljava/lang/Long;)V

    .line 231
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getExpectedDueDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setExpectedDueDateString(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 233
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setExpiryDate(Ljava/lang/Long;)V

    .line 235
    :cond_3
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setId(Ljava/lang/Long;)V

    .line 236
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationOf()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 237
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationOf()Ljava/lang/String;

    move-result-object v2

    const-string v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setIsChild(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 240
    :cond_4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setIsChild(Ljava/lang/Boolean;)V

    .line 243
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNoOfNotificationType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setNoOfNotificationType(I)V

    .line 244
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    .line 245
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setTask(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getCustomField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setCustomField(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getOverDueDate()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getDateOfNotification()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 248
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getDateOfNotification()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setOverDueDate(Ljava/lang/Long;)V

    .line 250
    :cond_6
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getOverDueDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverDueDate(Ljava/lang/Long;)V

    .line 251
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getDiagnosisDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 252
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getDiagnosisDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setDiagnosisDate(Ljava/lang/String;)V

    .line 254
    :cond_7
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getPositiveFindings()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 255
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getPositiveFindings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setPositiveFindings(Ljava/lang/String;)V

    .line 257
    :cond_8
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getLocationId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setLocationId(Ljava/lang/Long;)V

    .line 258
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setFamilyId(Ljava/lang/Long;)V

    .line 259
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setMemberId(Ljava/lang/Long;)V

    .line 260
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOtherDetails(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMigrationId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setMigrationId(Ljava/lang/Long;)V

    .line 262
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setModifiedOn(Ljava/lang/Long;)V

    .line 263
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setState(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setHeader(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getScheduledDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 266
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getScheduledDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setScheduledDate(Ljava/lang/Long;)V

    .line 268
    :cond_9
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object p2
.end method

.method public convertQueryMobDataBeanToLabelModel(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LabelBean;",
            ">;"
        }
    .end annotation

    .line 576
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p1

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 585
    const-string v2, "custom3b"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 586
    const-string v3, "key"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 587
    const-string v4, "text"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 588
    const-string v5, "language"

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 589
    const-string v6, "created_on"

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 590
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 592
    new-instance v2, Lcom/argusoft/sewa/android/app/model/LabelBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/LabelBean;-><init>()V

    .line 593
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LabelBean;->setLabelKey(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LabelBean;->setLabelValue(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LabelBean;->setLanguage(Ljava/lang/String;)V

    .line 596
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LabelBean;->setModifiedOn(Ljava/util/Date;)V

    .line 597
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public convertQuestionBeansToQueFormBeans(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/QuestionBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/AnswerBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_16

    .line 399
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 400
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    .line 401
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    .line 402
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 403
    const-string v1, "0"

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 404
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/AnswerBean;

    .line 405
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 406
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->getNext()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setNext(Ljava/lang/String;)V

    .line 411
    :cond_1
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setRelatedpropertyname(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->getSubform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setSubform(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->getQueId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 416
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->getQueId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_2
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/AnswerBean;->getQueId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 420
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 424
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    .line 425
    new-instance v2, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    .line 426
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getBinding()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getBinding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getBinding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 427
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getBinding()Ljava/lang/String;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 428
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getBinding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 429
    array-length v5, v3

    if-lez v5, :cond_7

    .line 430
    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setBinding(Ljava/lang/String;)V

    goto :goto_2

    .line 433
    :cond_5
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getBinding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setBinding(Ljava/lang/String;)V

    goto :goto_2

    .line 436
    :cond_6
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getQueId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setBinding(Ljava/lang/String;)V

    .line 438
    :cond_7
    :goto_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getDatamap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setDatamap(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setEvent(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setHint(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getHelpvideofield()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setHelpvideofield(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getFormulass()Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    if-eqz v3, :cond_9

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getFormulass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 443
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getFormulass()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 445
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 446
    array-length v7, v3

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_8

    aget-object v9, v3, v8

    .line 447
    new-instance v10, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    invoke-direct {v10}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;-><init>()V

    .line 448
    invoke-virtual {v10, v9}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->setFormulavalue(Ljava/lang/String;)V

    .line 449
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 451
    :cond_8
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setFormulas(Ljava/util/List;)V

    .line 453
    :cond_9
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getQueId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setId(I)V

    .line 454
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getInstruction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstruction(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getIshidden()Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "T"

    const-string v7, "F"

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getIshidden()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 456
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIshidden(Ljava/lang/String;)V

    goto :goto_4

    .line 458
    :cond_a
    invoke-virtual {v2, v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIshidden(Ljava/lang/String;)V

    .line 460
    :goto_4
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getIsmandatory()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getIsmandatory()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 461
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    goto :goto_5

    .line 463
    :cond_b
    invoke-virtual {v2, v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 465
    :goto_5
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setLength(I)V

    .line 466
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getNext()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 468
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 469
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsNextNull(Z)V

    goto :goto_6

    :cond_c
    const/4 v3, 0x1

    .line 472
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsNextNull(Z)V

    .line 474
    :goto_6
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getQueId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setOptions(Ljava/util/List;)V

    .line 475
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getPage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 477
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setPage(Ljava/lang/String;)V

    goto :goto_7

    .line 479
    :cond_d
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setPage(Ljava/lang/String;)V

    .line 481
    :goto_7
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getQuestion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestion(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setRelatedpropertyname(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getSubform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setSubform(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setSubtitle(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setTitle(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setType(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getValidationmethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getValidationmethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 488
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getValidationmethod()Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getValidationmessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 493
    invoke-static {v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    .line 495
    :goto_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 496
    :goto_9
    array-length v7, v3

    if-ge v4, v7, :cond_10

    .line 497
    new-instance v7, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    invoke-direct {v7}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>()V

    .line 498
    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->setMethod(Ljava/lang/String;)V

    if-eqz v5, :cond_f

    .line 499
    array-length v8, v5

    if-lez v8, :cond_f

    .line 500
    aget-object v8, v5, v4

    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->setMessage(Ljava/lang/String;)V

    .line 502
    :cond_f
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 504
    :cond_10
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setValidations(Ljava/util/List;)V

    .line 506
    :cond_11
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v3

    if-eqz v3, :cond_12

    .line 507
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 509
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "^^^^^^^^^^^^^^^^ Question is not stored in map ^^^^^^^^^^^ no : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_a
    :try_start_0
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 514
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-nez v4, :cond_13

    .line 516
    new-instance v4, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-direct {v4, v3}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;-><init>(I)V

    .line 517
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_13
    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->addQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 520
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "question no : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  next is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  added into pane No : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 522
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^^^^^ Question "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not added in page :^^^^^^^^^^^ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v3

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Question  : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  is Not added into page .........."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    :goto_b
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getDatamap()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getLocationLevel()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getDatamap()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 533
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/QuestionBean;->getDatamap()Ljava/lang/String;

    move-result-object p2

    .line 534
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getLocationLevel()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 535
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v3, v2}, Lcom/argusoft/sewa/android/app/core/SewaService;->retrieveLocationByLevel(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 537
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 538
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 539
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-direct {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;-><init>()V

    .line 540
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setIdOfValue(I)V

    .line 541
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setValue(Ljava/lang/String;)V

    .line 542
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 544
    :cond_15
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_16
    return-void
.end method

.method public convertUserInfoDataBeanToLoginBeanModel(Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;Lcom/argusoft/sewa/android/app/model/LoginBean;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/LoginBean;
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 66
    new-instance p2, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-direct {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;-><init>()V

    const-wide/16 v1, 0x0

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLastUpdateOfAnnouncements(Ljava/lang/Long;)V

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLastUpdateOfInventory(Ljava/lang/Long;)V

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLastUpdateOfLabels(Ljava/lang/Long;)V

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLastUpdateOfListValues(Ljava/lang/Long;)V

    .line 71
    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setFirstLogin(Z)V

    .line 72
    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setUpdateCounter(I)V

    .line 75
    :cond_0
    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLoggedIn(Z)V

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setHidden(Z)V

    .line 78
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "A"

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setUserRoleCode(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FHW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "F"

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setUserRoleCode(Ljava/lang/String;)V

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getfName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setFirstName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLanguageCode(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setPassword(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getPhNoOfPM()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setPhoneNoOfPM(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getServerDate()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setServerDate(Ljava/lang/Long;)V

    .line 89
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setUserID(Ljava/lang/Long;)V

    .line 90
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setUserRole(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setUserToken(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUsername()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setUsername(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->isNagarPalikaUser()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setNagarpalikaUser(Z)V

    .line 95
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getCurrentVillageCode()[J

    move-result-object p3

    const-string v0, ":"

    if-eqz p3, :cond_3

    .line 96
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getCurrentVillageCode()[J

    move-result-object p3

    .line 97
    invoke-static {p3, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->arrayJoinToString([JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setVillageCode(Ljava/lang/String;)V

    .line 100
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getCurrentAssignedVillagesName()[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 101
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getCurrentAssignedVillagesName()[Ljava/lang/String;

    move-result-object p3

    .line 102
    invoke-static {p3, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->arrayJoinToString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setVillageName(Ljava/lang/String;)V

    .line 105
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getOtpVerificationDate()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 106
    new-instance p3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getOtpVerificationDate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setOtpVerificationDate(Ljava/util/Date;)V

    .line 109
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getOtpVerificationRequired()Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 110
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getOtpVerificationRequired()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setOtpVerificationRequired(Ljava/lang/Boolean;)V

    .line 113
    :cond_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getReverificationPeriod()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 114
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getReverificationPeriod()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setReverificationPeriod(Ljava/lang/Integer;)V

    :cond_7
    return-object p2
.end method
