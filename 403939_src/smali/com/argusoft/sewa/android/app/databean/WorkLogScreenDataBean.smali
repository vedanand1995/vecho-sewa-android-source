.class public Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;
.super Ljava/lang/Object;
.source "WorkLogScreenDataBean.java"


# instance fields
.field private date:Ljava/lang/String;

.field private image:I

.field private message:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private task:Ljava/lang/String;

.field private uploadFileDataBean:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->date:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->image:I

    .line 34
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->name:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->task:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->date:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->image:I

    .line 25
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->name:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->task:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->message:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->uploadFileDataBean:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->image:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->task:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadFileDataBean()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->uploadFileDataBean:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkLogScreenDataBean{date="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->image:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->task:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
