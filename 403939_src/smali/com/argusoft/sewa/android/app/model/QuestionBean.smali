.class public Lcom/argusoft/sewa/android/app/model/QuestionBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "QuestionBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private binding:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private datamap:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private entity:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private event:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private formulass:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private helpvideofield:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hint:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private instruction:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ishidden:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ismandatory:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private length:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mandatorymessage:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private next:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private page:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private queId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private question:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private relatedpropertyname:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private subform:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private subtitle:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private validationmessage:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private validationmethod:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 265
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBinding()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->binding:Ljava/lang/String;

    return-object v0
.end method

.method public getDatamap()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->datamap:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->entity:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulass()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->formulass:Ljava/lang/String;

    return-object v0
.end method

.method public getHelpvideofield()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->helpvideofield:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->instruction:Ljava/lang/String;

    return-object v0
.end method

.method public getIshidden()Ljava/lang/Boolean;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->ishidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsmandatory()Ljava/lang/Boolean;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->ismandatory:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->length:I

    return v0
.end method

.method public getMandatorymessage()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->mandatorymessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->next:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->page:I

    return v0
.end method

.method public getQueId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->queId:I

    return v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedpropertyname()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->relatedpropertyname:Ljava/lang/String;

    return-object v0
.end method

.method public getSubform()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->subform:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationmessage()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->validationmessage:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationmethod()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->validationmethod:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 270
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBinding(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->binding:Ljava/lang/String;

    return-void
.end method

.method public setDatamap(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->datamap:Ljava/lang/String;

    return-void
.end method

.method public setEntity(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->entity:Ljava/lang/String;

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->event:Ljava/lang/String;

    return-void
.end method

.method public setFormulass(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->formulass:Ljava/lang/String;

    return-void
.end method

.method public setHelpvideofield(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->helpvideofield:Ljava/lang/String;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->hint:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setInstruction(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->instruction:Ljava/lang/String;

    return-void
.end method

.method public setIshidden(Ljava/lang/Boolean;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->ishidden:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsmandatory(Ljava/lang/Boolean;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->ismandatory:Ljava/lang/Boolean;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->length:I

    return-void
.end method

.method public setMandatorymessage(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->mandatorymessage:Ljava/lang/String;

    return-void
.end method

.method public setNext(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->next:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->page:I

    return-void
.end method

.method public setQueId(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->queId:I

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->question:Ljava/lang/String;

    return-void
.end method

.method public setRelatedpropertyname(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->relatedpropertyname:Ljava/lang/String;

    return-void
.end method

.method public setSubform(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->subform:Ljava/lang/String;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setValidationmessage(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->validationmessage:Ljava/lang/String;

    return-void
.end method

.method public setValidationmethod(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->validationmethod:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuestionBean{queId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->queId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instruction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->instruction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", question="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ismandatory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->ismandatory:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mandatorymessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->mandatorymessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", datamap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->datamap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->next:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->subform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", binding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->binding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ishidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->ishidden:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relatedpropertyname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->relatedpropertyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validationmethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->validationmethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validationmessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->validationmessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", formulass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->formulass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/QuestionBean;->entity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
