.class public interface abstract Lcom/argusoft/sewa/android/app/core/LmsService;
.super Ljava/lang/Object;
.source "LmsService.java"


# virtual methods
.method public abstract addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract createLmsUserMetaDataBean(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V
.end method

.method public abstract createStoreEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract createStoreEventForLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
.end method

.method public abstract createStoreEventForLessonEndDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;)V
.end method

.method public abstract createStoreEventForLessonFeedback(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract createStoreEventForLessonPausedOn(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract createStoreEventForLessonSession(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;)V
.end method

.method public abstract createStoreEventForLessonStartDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;)V
.end method

.method public abstract deleteBookmark(Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)V
.end method

.method public abstract getAllowedMediaMap(Ljava/lang/Integer;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastPausedOn(Ljava/lang/Integer;)Ljava/lang/Integer;
.end method

.method public abstract getLmsUserMetaDataByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;
.end method

.method public abstract getViewedCourseById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;
.end method

.method public abstract getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
.end method

.method public abstract getViewedLessonList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAnyUpdatedDataAvailable()Z
.end method

.method public abstract isQuizCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
.end method

.method public abstract makeCourseArchive(Ljava/lang/Integer;Z)V
.end method

.method public abstract makeCourseDownloadable(Ljava/lang/Integer;Z)V
.end method

.method public abstract markCourseDataViewed(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract markCourseViewed(Ljava/lang/Integer;)V
.end method

.method public abstract markLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract retrieveBookmarks(Ljava/lang/Integer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveCourseByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;
.end method

.method public abstract retrieveCourses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveBookmark(Ljava/lang/Integer;Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;)V
.end method

.method public abstract storeLmsTestResult(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;Ljava/lang/String;)V
.end method

.method public abstract storeUserFeedbackOfMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract updateBookmark(Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)V
.end method

.method public abstract updateEndDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract updateStartDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method
