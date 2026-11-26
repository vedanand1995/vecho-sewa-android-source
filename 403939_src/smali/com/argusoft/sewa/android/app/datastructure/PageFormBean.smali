.class public Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;
.super Ljava/lang/Object;
.source "PageFormBean.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static context:Landroid/content/Context;


# instance fields
.field private event:Ljava/lang/String;

.field private firstQuestionId:I

.field private immunisationSelectionComponent:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

.field private isFirst:Z

.field private isVaccinations:Z

.field private lastQuestionId:I

.field private listOfNext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listOfQuestion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listOfShowQuestion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loopCounter:I

.field private myVaccination:Lcom/argusoft/sewa/android/app/component/MyVaccination;

.field private nextPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

.field private pageLayout:Landroid/widget/LinearLayout;

.field private pageNo:I

.field private prePage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

.field private validationMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageNo:I

    .line 56
    sget p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->loopCounter:I

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfNext:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->nextPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->prePage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    .line 63
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->validationMessage:Ljava/lang/String;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isFirst:Z

    .line 65
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->event:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->myVaccination:Lcom/argusoft/sewa/android/app/component/MyVaccination;

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->immunisationSelectionComponent:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isVaccinations:Z

    return-void
.end method

.method private clonePageById(IZZ)V
    .locals 5

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cloning start of Page id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageFormBean"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz v0, :cond_2

    .line 435
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getListOfQuestion()Ljava/util/List;

    move-result-object v0

    .line 436
    new-instance v2, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-direct {v2, p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;-><init>(I)V

    .line 437
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageNo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 440
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v3, :cond_0

    .line 442
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->context:Landroid/content/Context;

    invoke-virtual {v3, p2, p3, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->clone(ZZLandroid/content/Context;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v3

    .line 443
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->addQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Z

    goto :goto_0

    .line 446
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cloning stop of Page id : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with  new id : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageNo()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageNo()I

    :cond_2
    return-void
.end method

.method private getNextLoopPageId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I
    .locals 9

    .line 371
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Loop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 372
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    .line 373
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 374
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v4

    .line 376
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-nez v0, :cond_1

    .line 379
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    .line 380
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v7

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreNextQueLoop()Z

    move-result v8

    const/4 v6, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setFirstQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 384
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p1

    return p1

    :cond_0
    return v2

    .line 390
    :cond_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 391
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setFirstQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 392
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p1

    return p1

    :cond_2
    return v2

    .line 398
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    sput v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    .line 399
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v7

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreNextQueLoop()Z

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 400
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 401
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setFirstQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 402
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_4
    return v2

    .line 411
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    .line 412
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v5}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v0

    .line 413
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v7

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreNextQueLoop()Z

    move-result v8

    const/4 v6, 0x0

    move-object v3, p0

    move v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 414
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 415
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setFirstQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 416
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p1

    return p1

    :cond_6
    if-nez v0, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method private getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    .locals 13

    move v0, p1

    move v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    .line 453
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v3, 0x0

    .line 455
    const-string v6, "PageFormBean"

    if-eqz v1, :cond_c

    .line 456
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIshidden()Ljava/lang/String;

    move-result-object v7

    const-string v8, "T"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 457
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " question is found and it is hidden :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v7, "[TY]"

    const-string v8, "=Event is default loop.............."

    const-string v9, "DefaultLoop"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p3, :cond_5

    .line 460
    sput v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    .line 461
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->context:Landroid/content/Context;

    invoke-virtual {v1, v4, v5, v12}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->clone(ZZLandroid/content/Context;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 463
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz v4, :cond_0

    .line 465
    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->addQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Z

    .line 468
    :cond_0
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 469
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v3

    .line 471
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v3

    .line 475
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    .line 476
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 477
    :goto_0
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreNextQueLoop()Z

    move-result v6

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v7

    move-object v2, p0

    .line 475
    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 479
    :cond_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    return-object v0

    .line 482
    :cond_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreNextQueLoop()Z

    move-result v4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreNextQueLoop()Z

    move-result v5

    const/4 v6, 0x1

    move-object v0, p0

    move v1, v3

    move v2, p2

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    return-object v0

    .line 485
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "= is Not found for hidden question : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 488
    :cond_5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormulaForHiddenQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)V

    .line 489
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 490
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v3

    .line 491
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 494
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v3

    .line 495
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    .line 496
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    .line 497
    :goto_1
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreNextQueLoop()Z

    move-result v6

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v7

    move-object v2, p0

    .line 495
    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    return-object v0

    .line 500
    :cond_7
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    return-object v0

    .line 503
    :cond_8
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreNextQueLoop()Z

    move-result v4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreNextQueLoop()Z

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, v3

    move v2, p2

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    return-object v0

    .line 506
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "=Next is Not found for  question : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v3

    :cond_a
    if-eqz p3, :cond_b

    .line 512
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 513
    sput v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    move-object v7, p0

    .line 514
    invoke-direct {p0, v0, v4, v5}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->clonePageById(IZZ)V

    .line 515
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v1

    invoke-static {v1, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    goto :goto_3

    :cond_b
    move-object v7, p0

    :goto_3
    return-object v1

    :cond_c
    move-object v7, p0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "= question is not found"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_d

    .line 522
    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getOriginalId(II)I

    move-result v1

    if-eq v1, v0, :cond_d

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    .line 524
    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextVisibleQues(IIZZZ)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    return-object v0

    :cond_d
    return-object v3
.end method

.method private hideQuestions(Ljava/util/List;Landroid/widget/LinearLayout;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")I"
        }
    .end annotation

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 536
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 540
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, -0x1

    if-nez p1, :cond_7

    .line 541
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 543
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_7

    .line 544
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v2, :cond_6

    .line 546
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 547
    const-string v3, "-1"

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v3

    if-eqz p1, :cond_3

    if-lez v1, :cond_3

    .line 548
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_4

    :cond_3
    move v1, v3

    .line 552
    :cond_4
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIshidden()Ljava/lang/String;

    move-result-object v3

    const-string v4, "F"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 553
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v3, 0x8

    .line 554
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 555
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 556
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    if-nez v2, :cond_5

    .line 558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    .line 560
    :cond_5
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    return v1
.end method


# virtual methods
.method public addQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Z
    .locals 2

    .line 118
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->event:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Submit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->event:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->event:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Save Form"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->event:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "Next"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->event:Ljava/lang/String;

    .line 131
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getNextQuestionIdList(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 133
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfNext:Ljava/util/List;

    if-nez v1, :cond_5

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfNext:Ljava/util/List;

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfNext:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    :cond_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    if-nez v0, :cond_7

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstQuestionId()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->firstQuestionId:I

    return v0
.end method

.method public getImmunisationSelectionComponent()Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->immunisationSelectionComponent:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    return-object v0
.end method

.method public getLastQuestionId()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->lastQuestionId:I

    return v0
.end method

.method public getListOfQuestion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    return-object v0
.end method

.method public getListOfShowQuestion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    return-object v0
.end method

.method public getLoopCounter()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->loopCounter:I

    return v0
.end method

.method public getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->myVaccination:Lcom/argusoft/sewa/android/app/component/MyVaccination;

    return-object v0
.end method

.method public getNextPage()Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->nextPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    return-object v0
.end method

.method public getNextPageId()I
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    iget v2, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->lastQuestionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextLoopPageId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getPageLayout(ZI)Landroid/widget/LinearLayout;
    .locals 13

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "first question is : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->firstQuestionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PageFormBean"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 219
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->context:Landroid/content/Context;

    if-nez p1, :cond_1

    goto/16 :goto_6

    .line 223
    :cond_1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    .line 225
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    const-string v4, "MDC"

    const-string v6, "F"

    const/4 v7, 0x0

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v5, :cond_d

    .line 226
    iget p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->firstQuestionId:I

    if-gtz p1, :cond_4

    .line 227
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 228
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfNext:Ljava/util/List;

    if-eqz v9, :cond_2

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 229
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->firstQuestionId:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 236
    :cond_4
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->firstQuestionId:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 242
    :goto_1
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/16 v11, 0x8

    if-eqz v10, :cond_c

    .line 244
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIshidden()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 246
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    if-nez v9, :cond_5

    .line 247
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    :cond_5
    if-eqz v1, :cond_6

    .line 250
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 251
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 252
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-ne v8, v5, :cond_8

    add-int/lit8 v8, v8, 0x1

    .line 255
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 259
    :cond_6
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 260
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    :cond_7
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 262
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-int/lit8 p2, p2, -0x1

    .line 264
    invoke-virtual {v9, p2, p2, p2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 265
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    :cond_8
    :goto_2
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 270
    :cond_9
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormulaForHiddenQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)V

    .line 273
    :goto_3
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getNext(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result v9

    if-ne v9, v3, :cond_b

    .line 276
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getNextQuestionIdList(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Ljava/util/List;

    move-result-object v1

    if-nez v8, :cond_a

    add-int/lit8 v8, v8, 0x1

    .line 279
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->context:Landroid/content/Context;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x925

    invoke-static {v2, v10, v5, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 282
    :cond_a
    invoke-direct {p0, v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->hideQuestions(Ljava/util/List;Landroid/widget/LinearLayout;)I

    move-result v1

    move v9, v1

    const/4 v1, 0x1

    :cond_b
    if-eq v9, p1, :cond_c

    .line 284
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v9

    goto/16 :goto_1

    :cond_c
    if-ne v8, v5, :cond_11

    .line 294
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 297
    :cond_d
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v5, :cond_10

    .line 298
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 299
    iput v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->firstQuestionId:I

    .line 300
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v1, :cond_f

    .line 301
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIshidden()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 302
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 303
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-int/lit8 p2, p2, -0x1

    .line 305
    invoke-virtual {v2, p2, p2, p2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 306
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    :cond_e
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    .line 310
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    if-eqz v1, :cond_10

    .line 311
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_10

    .line 312
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormulaForHiddenQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)V

    .line 313
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v9

    goto :goto_5

    :cond_10
    :goto_4
    const/4 v9, 0x0

    .line 316
    :cond_11
    :goto_5
    iput-boolean v7, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isFirst:Z

    .line 317
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    if-nez p1, :cond_12

    .line 318
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNext(I)V

    return-object v0

    .line 322
    :cond_12
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    return-object p1

    :cond_13
    :goto_6
    return-object v0
.end method

.method public getPageNo()I
    .locals 2

    .line 149
    iget v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageNo:I

    iget v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->loopCounter:I

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v0

    return v0
.end method

.method public getPrePage()Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->prePage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    return-object v0
.end method

.method public getValidationMessage()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->validationMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isIsFirst()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isFirst:Z

    return v0
.end method

.method public isIsVaccinations()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isVaccinations:Z

    return v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->event:Ljava/lang/String;

    return-void
.end method

.method public setFirstQuestionId(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->firstQuestionId:I

    return-void
.end method

.method public setImmunisationSelectionComponent(Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->immunisationSelectionComponent:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    return-void
.end method

.method public setIsFirst(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isFirst:Z

    return-void
.end method

.method public setIsVaccinations(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isVaccinations:Z

    return-void
.end method

.method public setLastQuestionId(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->lastQuestionId:I

    return-void
.end method

.method public setListOfQuestion(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    return-void
.end method

.method public setListOfShowQuestion(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    return-void
.end method

.method public setLoopCounter(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->loopCounter:I

    return-void
.end method

.method public setMyVaccination(Lcom/argusoft/sewa/android/app/component/MyVaccination;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->myVaccination:Lcom/argusoft/sewa/android/app/component/MyVaccination;

    return-void
.end method

.method public setNextPage(Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->nextPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    .line 349
    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setPrePage(Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;)V

    return-void
.end method

.method public setPageLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setPageNo(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageNo:I

    return-void
.end method

.method public setPrePage(Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->prePage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    return-void
.end method

.method public setValidationMessage(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->validationMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PageFormBean{pageNo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->pageNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loopCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->loopCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listOfQuestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfQuestion:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nlistOfShowQuestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfShowQuestion:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nlistOfNext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->listOfNext:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
