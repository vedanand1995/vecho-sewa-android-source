.class public Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;
.super Ljava/lang/Object;
.source "BookmarkDataBean.java"


# instance fields
.field private bookmarkNote:Ljava/lang/String;

.field private bookmarkText:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->position:I

    .line 12
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->bookmarkText:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->bookmarkNote:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBookmarkNote()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->bookmarkNote:Ljava/lang/String;

    return-object v0
.end method

.method public getBookmarkText()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->bookmarkText:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->position:I

    return v0
.end method

.method public setBookmarkNote(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->bookmarkNote:Ljava/lang/String;

    return-void
.end method

.method public setBookmarkText(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->bookmarkText:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BookmarkDataBean{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookmarkText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->bookmarkText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bookmarkNote=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->bookmarkNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
