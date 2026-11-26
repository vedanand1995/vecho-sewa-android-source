.class public Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;
.super Ljava/lang/Object;
.source "ComponentTagBean.java"


# instance fields
.field private binding:Ljava/lang/String;

.field private datamap:Ljava/lang/String;

.field private event:Ljava/lang/String;

.field private formulas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private helpvideofield:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private id:I

.field private instruction:Ljava/lang/String;

.field private ishidden:Ljava/lang/String;

.field private ismandatory:Ljava/lang/String;

.field private length:I

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

.field private relatedpropertyname:Ljava/lang/String;

.field private subform:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinding()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->binding:Ljava/lang/String;

    return-object v0
.end method

.method public getDatamap()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->datamap:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->event:Ljava/lang/String;

    return-object v0
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

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->formulas:Ljava/util/List;

    return-object v0
.end method

.method public getHelpvideofield()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->helpvideofield:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->id:I

    return v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->instruction:Ljava/lang/String;

    return-object v0
.end method

.method public getIshidden()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->ishidden:Ljava/lang/String;

    return-object v0
.end method

.method public getIsmandatory()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->ismandatory:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->length:I

    return v0
.end method

.method public getMandatorymessage()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->mandatorymessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->next:Ljava/lang/String;

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

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->options:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedpropertyname()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->relatedpropertyname:Ljava/lang/String;

    return-object v0
.end method

.method public getSubform()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->subform:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->type:Ljava/lang/String;

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

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->validations:Ljava/util/List;

    return-object v0
.end method

.method public setBinding(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->binding:Ljava/lang/String;

    return-void
.end method

.method public setDatamap(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->datamap:Ljava/lang/String;

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->event:Ljava/lang/String;

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

    .line 178
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->formulas:Ljava/util/List;

    return-void
.end method

.method public setHelpvideofield(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->helpvideofield:Ljava/lang/String;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->hint:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->id:I

    return-void
.end method

.method public setInstruction(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->instruction:Ljava/lang/String;

    return-void
.end method

.method public setIshidden(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->ishidden:Ljava/lang/String;

    return-void
.end method

.method public setIsmandatory(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->ismandatory:Ljava/lang/String;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->length:I

    return-void
.end method

.method public setMandatorymessage(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->mandatorymessage:Ljava/lang/String;

    return-void
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->next:Ljava/lang/String;

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

    .line 130
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->options:Ljava/util/List;

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->page:Ljava/lang/String;

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->question:Ljava/lang/String;

    return-void
.end method

.method public setRelatedpropertyname(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->relatedpropertyname:Ljava/lang/String;

    return-void
.end method

.method public setSubform(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->subform:Ljava/lang/String;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->type:Ljava/lang/String;

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

    .line 170
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;->validations:Ljava/util/List;

    return-void
.end method
