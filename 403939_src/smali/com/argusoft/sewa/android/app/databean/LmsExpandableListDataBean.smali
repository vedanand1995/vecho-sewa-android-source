.class public Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;
.super Ljava/lang/Object;
.source "LmsExpandableListDataBean.java"


# instance fields
.field private groupIndex:Ljava/lang/Integer;

.field private groupType:Ljava/lang/String;

.field private module:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

.field private questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupIndex()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->groupIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->groupType:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->module:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    return-object v0
.end method

.method public getQuestionSet()Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    return-object v0
.end method

.method public setGroupIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->groupIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setGroupType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->groupType:Ljava/lang/String;

    return-void
.end method

.method public setModule(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->module:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    return-void
.end method

.method public setQuestionSet(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    return-void
.end method
