.class public Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LmsBookMarkBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private bookmarkNote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private bookmarkText:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lessonId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private position:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookmarkNote()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->bookmarkNote:Ljava/lang/String;

    return-object v0
.end method

.method public getBookmarkText()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->bookmarkText:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLessonId()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->lessonId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->position:I

    return v0
.end method

.method public setBookmarkNote(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->bookmarkNote:Ljava/lang/String;

    return-void
.end method

.method public setBookmarkText(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->bookmarkText:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setLessonId(Ljava/lang/Integer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->lessonId:Ljava/lang/Integer;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsBookMarkBean{bookmarkText=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->bookmarkText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bookmarkNote=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->bookmarkNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lessonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->lessonId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
