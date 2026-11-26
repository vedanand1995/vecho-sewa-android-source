.class public Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;
.super Ljava/lang/Object;
.source "LmsCourseScreenDataBean.java"


# instance fields
.field private completionStatus:I

.field private courseDesc:Ljava/lang/String;

.field private courseId:Ljava/lang/Integer;

.field private courseSize:Ljava/lang/Long;

.field private courseTitle:Ljava/lang/String;

.field private image:Landroid/graphics/Bitmap;

.field private isMediaDownloaded:Ljava/lang/Boolean;

.field private questionSetSize:I

.field private topicSize:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->image:Landroid/graphics/Bitmap;

    .line 19
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseId:Ljava/lang/Integer;

    .line 20
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseTitle:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseDesc:Ljava/lang/String;

    .line 22
    iput p5, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->completionStatus:I

    .line 23
    iput p6, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->questionSetSize:I

    .line 24
    iput p7, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->topicSize:I

    .line 25
    iput-object p8, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->isMediaDownloaded:Ljava/lang/Boolean;

    .line 26
    iput-object p9, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseSize:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getCompletionStatus()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->completionStatus:I

    return v0
.end method

.method public getCourseDesc()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseId()Ljava/lang/Integer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCourseSize()Ljava/lang/Long;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getCourseTitle()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getQuestionSetSize()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->questionSetSize:I

    return v0
.end method

.method public getTopicSize()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->topicSize:I

    return v0
.end method

.method public isMediaDownloaded()Ljava/lang/Boolean;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->isMediaDownloaded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCompletionStatus(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->completionStatus:I

    return-void
.end method

.method public setCourseDesc(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseDesc:Ljava/lang/String;

    return-void
.end method

.method public setCourseId(Ljava/lang/Integer;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseId:Ljava/lang/Integer;

    return-void
.end method

.method public setCourseSize(Ljava/lang/Long;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseSize:Ljava/lang/Long;

    return-void
.end method

.method public setCourseTitle(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->courseTitle:Ljava/lang/String;

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setMediaDownloaded(Ljava/lang/Boolean;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->isMediaDownloaded:Ljava/lang/Boolean;

    return-void
.end method

.method public setQuestionSetSize(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->questionSetSize:I

    return-void
.end method

.method public setTopicSize(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->topicSize:I

    return-void
.end method
