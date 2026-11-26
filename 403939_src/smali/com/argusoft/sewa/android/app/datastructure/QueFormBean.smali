.class public Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
.super Ljava/lang/Object;
.source "QueFormBean.java"


# instance fields
.field private answer:Ljava/lang/Object;

.field private binding:Ljava/lang/String;

.field private datamap:Ljava/lang/String;

.field private event:Ljava/lang/String;

.field private extraBinding:I

.field private formulas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private hasUnselectedText:Z

.field private helpvideofield:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private id:I

.field private ignoreLoop:Z

.field private ignoreNextQueLoop:Z

.field private instruction:Ljava/lang/String;

.field private instructionsView:Landroid/widget/TextView;

.field private isNextNull:Z

.field private ishidden:Ljava/lang/String;

.field private ismandatory:Ljava/lang/String;

.field private length:I

.field private loopCounter:I

.field private mandatorymessage:Ljava/lang/String;

.field private next:Ljava/lang/String;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private page:Ljava/lang/String;

.field private question:Ljava/lang/String;

.field private questionTypeView:Ljava/lang/Object;

.field private questionUIFrame:Ljava/lang/Object;

.field private questionView:Landroid/widget/TextView;

.field private relatedpropertyname:Ljava/lang/String;

.field private subTitleView:Landroid/widget/TextView;

.field private subform:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private validations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone(ZZLandroid/content/Context;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    .locals 3

    .line 349
    new-instance v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    .line 351
    sget v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setLoopCounter(I)V

    const/4 v1, 0x0

    .line 352
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getBinding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setBinding(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setDatamap(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setEvent(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setFormulas(Ljava/util/List;)V

    .line 357
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setId(I)V

    .line 358
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstruction(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 360
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIshidden()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIshidden(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setLength(I)V

    .line 363
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 364
    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isNextNull:Z

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsNextNull(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIsNextNull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 371
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setOptions(Ljava/util/List;)V

    .line 372
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setPage(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestion(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    .line 375
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionUIFrame(Ljava/lang/Object;)V

    .line 376
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionView(Landroid/widget/TextView;)V

    .line 377
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setRelatedpropertyname(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setSubTitleView(Landroid/widget/TextView;)V

    .line 379
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setSubform(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setSubtitle(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setTitle(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setTitleView(Lcom/google/android/material/textview/MaterialTextView;)V

    .line 383
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setType(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setValidations(Ljava/util/List;)V

    .line 385
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIgnoreLoop(Z)V

    .line 386
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIgnoreNextQueLoop(Z)V

    .line 387
    sget p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->newBindingForMorbidity:I

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setExtraBinding(I)V

    .line 388
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getHint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setHint(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getHelpvideofield()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setHelpvideofield(Ljava/lang/String;)V

    .line 391
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result p2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-static {p2, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-static {v0, p3}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator;->generateQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V

    return-object v0
.end method

.method public getAnswer()Ljava/lang/Object;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->answer:Ljava/lang/Object;

    return-object v0
.end method

.method public getBinding()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->binding:Ljava/lang/String;

    return-object v0
.end method

.method public getDatamap()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->datamap:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraBinding()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->extraBinding:I

    return v0
.end method

.method public getFormulas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->formulas:Ljava/util/List;

    return-object v0
.end method

.method public getHelpvideofield()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->helpvideofield:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->id:I

    return v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->instruction:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructionsView()Landroid/widget/TextView;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->instructionsView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIshidden()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ishidden:Ljava/lang/String;

    return-object v0
.end method

.method public getIsmandatory()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ismandatory:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->length:I

    return v0
.end method

.method public getLoopCounter()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->loopCounter:I

    return v0
.end method

.method public getMandatorymessage()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->mandatorymessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionTagBean;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->options:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionTypeView()Ljava/lang/Object;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->questionTypeView:Ljava/lang/Object;

    return-object v0
.end method

.method public getQuestionUIFrame()Ljava/lang/Object;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->questionUIFrame:Ljava/lang/Object;

    return-object v0
.end method

.method public getQuestionView()Landroid/widget/TextView;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->questionView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRelatedpropertyname()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->relatedpropertyname:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitleView()Landroid/widget/TextView;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->subTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubform()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->subform:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValidations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->validations:Ljava/util/List;

    return-object v0
.end method

.method public hasUnselectedText()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->hasUnselectedText:Z

    return v0
.end method

.method public isIgnoreLoop()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ignoreLoop:Z

    return v0
.end method

.method public isIgnoreNextQueLoop()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ignoreNextQueLoop:Z

    return v0
.end method

.method public isIsNextNull()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isNextNull:Z

    return v0
.end method

.method public setAnswer(Ljava/lang/Object;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->answer:Ljava/lang/Object;

    return-void
.end method

.method public setBinding(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->binding:Ljava/lang/String;

    return-void
.end method

.method public setDatamap(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->datamap:Ljava/lang/String;

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->event:Ljava/lang/String;

    return-void
.end method

.method public setExtraBinding(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->extraBinding:I

    return-void
.end method

.method public setFormulas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;",
            ">;)V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->formulas:Ljava/util/List;

    return-void
.end method

.method public setHasUnselectedText(Z)V
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->hasUnselectedText:Z

    return-void
.end method

.method public setHelpvideofield(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->helpvideofield:Ljava/lang/String;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->hint:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->id:I

    return-void
.end method

.method public setIgnoreLoop(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ignoreLoop:Z

    return-void
.end method

.method public setIgnoreNextQueLoop(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ignoreNextQueLoop:Z

    return-void
.end method

.method public setInstruction(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->instruction:Ljava/lang/String;

    return-void
.end method

.method public setInstructionsView(Landroid/widget/TextView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->instructionsView:Landroid/widget/TextView;

    return-void
.end method

.method public setIsNextNull(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isNextNull:Z

    return-void
.end method

.method public setIshidden(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ishidden:Ljava/lang/String;

    return-void
.end method

.method public setIsmandatory(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ismandatory:Ljava/lang/String;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->length:I

    return-void
.end method

.method public setLoopCounter(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->loopCounter:I

    return-void
.end method

.method public setMandatorymessage(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->mandatorymessage:Ljava/lang/String;

    return-void
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->next:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionTagBean;",
            ">;)V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->options:Ljava/util/List;

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->page:Ljava/lang/String;

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->question:Ljava/lang/String;

    return-void
.end method

.method public setQuestionTypeView(Ljava/lang/Object;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->questionTypeView:Ljava/lang/Object;

    return-void
.end method

.method public setQuestionUIFrame(Ljava/lang/Object;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->questionUIFrame:Ljava/lang/Object;

    return-void
.end method

.method public setQuestionView(Landroid/widget/TextView;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->questionView:Landroid/widget/TextView;

    return-void
.end method

.method public setRelatedpropertyname(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->relatedpropertyname:Ljava/lang/String;

    return-void
.end method

.method public setSubTitleView(Landroid/widget/TextView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->subTitleView:Landroid/widget/TextView;

    return-void
.end method

.method public setSubform(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->subform:Ljava/lang/String;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleView(Lcom/google/android/material/textview/MaterialTextView;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->titleView:Landroid/widget/TextView;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setValidations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;)V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->validations:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueFormBean{loopCounter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->loopCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreLoop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ignoreLoop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreNextQueLoop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ignoreNextQueLoop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', titleView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', subTitleView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->subTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instruction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->instruction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', instructionsView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->instructionsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", question=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', questionView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->questionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', questionTypeView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->questionTypeView:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ismandatory=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ismandatory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mandatorymessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->mandatorymessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", datamap=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->datamap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->options:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->answer:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->validations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formulas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->formulas:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", next=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->next:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', event=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', page=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', binding=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->binding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', subform=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->subform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', ishidden=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->ishidden:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', relatedpropertyname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->relatedpropertyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', questionUIFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->questionUIFrame:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNextNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isNextNull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extraBinding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->extraBinding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', helpvideofield=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->helpvideofield:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
