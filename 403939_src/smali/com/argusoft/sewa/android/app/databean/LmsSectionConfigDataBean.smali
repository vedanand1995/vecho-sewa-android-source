.class public Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;
.super Ljava/lang/Object;
.source "LmsSectionConfigDataBean.java"


# instance fields
.field questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;",
            ">;"
        }
    .end annotation
.end field

.field sectionDescription:Ljava/lang/String;

.field sectionTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->questions:Ljava/util/List;

    return-object v0
.end method

.method public getSectionDescription()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->sectionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionTitle()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->sectionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setQuestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->questions:Ljava/util/List;

    return-void
.end method

.method public setSectionDescription(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->sectionDescription:Ljava/lang/String;

    return-void
.end method

.method public setSectionTitle(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->sectionTitle:Ljava/lang/String;

    return-void
.end method
