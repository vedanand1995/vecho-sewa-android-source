.class public Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;
.super Ljava/lang/Object;
.source "LmsScenarioConfigDataBean.java"


# instance fields
.field audio:Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;

.field private mediaExtension:Ljava/lang/String;

.field private mediaId:Ljava/lang/Long;

.field private mediaName:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;

.field scenarioDescription:Ljava/lang/String;

.field scenarioQuestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;",
            ">;"
        }
    .end annotation
.end field

.field scenarioTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudio()Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->audio:Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;

    return-object v0
.end method

.method public getMediaExtension()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->mediaExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->mediaId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMediaName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->mediaName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioDescription()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->scenarioDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->scenarioQuestions:Ljava/util/List;

    return-object v0
.end method

.method public getScenarioTitle()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->scenarioTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setAudio(Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->audio:Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;

    return-void
.end method

.method public setMediaExtension(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->mediaExtension:Ljava/lang/String;

    return-void
.end method

.method public setMediaId(Ljava/lang/Long;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->mediaId:Ljava/lang/Long;

    return-void
.end method

.method public setMediaName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->mediaName:Ljava/lang/String;

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->mediaType:Ljava/lang/String;

    return-void
.end method

.method public setScenarioDescription(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->scenarioDescription:Ljava/lang/String;

    return-void
.end method

.method public setScenarioQuestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->scenarioQuestions:Ljava/util/List;

    return-void
.end method

.method public setScenarioTitle(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->scenarioTitle:Ljava/lang/String;

    return-void
.end method
