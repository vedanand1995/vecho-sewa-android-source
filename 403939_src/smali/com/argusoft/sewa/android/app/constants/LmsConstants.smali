.class public Lcom/argusoft/sewa/android/app/constants/LmsConstants;
.super Ljava/lang/Object;
.source "LmsConstants.java"


# static fields
.field public static final LMS_COURSE:Ljava/lang/String; = "LMS_COURSE"

.field public static final LMS_GROUP:Ljava/lang/String; = "LMS_GROUP"

.field public static final LMS_GROUP_QUIZ:Ljava/lang/String; = "LMS_GROUP_QUIZ"

.field public static final MEDIA_TYPE_AUDIO:Ljava/lang/String; = "AUDIO"

.field public static final MEDIA_TYPE_IMAGE:Ljava/lang/String; = "IMAGE"

.field public static final MEDIA_TYPE_PDF:Ljava/lang/String; = "PDF"

.field public static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "VIDEO"

.field public static final QUESTION_TYPE_FILL_IN_THE_BLANKS:Ljava/lang/String; = "FILL_IN_THE_BLANKS"

.field public static final QUESTION_TYPE_MATCH_THE_FOLLOWING:Ljava/lang/String; = "MATCH_THE_FOLLOWING"

.field public static final QUESTION_TYPE_MULTI_SELECT:Ljava/lang/String; = "MULTI_SELECT"

.field public static final QUESTION_TYPE_SINGLE_SELECT:Ljava/lang/String; = "SINGLE_SELECT"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isImageAvailableInMatchTheFollowing(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;)Z"
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 29
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    .line 33
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 34
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
