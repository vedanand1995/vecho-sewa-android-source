package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.BookmarkDataBean;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetAnswerDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.databean.LmsUserLessonSessionMetaData;
import com.argusoft.sewa.android.app.databean.LmsUserMetaData;
import com.argusoft.sewa.android.app.databean.LmsViewedMediaDataBean;
import com.argusoft.sewa.android.app.model.LmsBookMarkBean;
import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface LmsService {
    void addSessionsForMedia(Date date, Date date2, Integer num, Integer num2, Integer num3);

    void createLmsUserMetaDataBean(LmsUserMetaDataBean lmsUserMetaDataBean);

    void createStoreEvent(String str, String str2);

    void createStoreEventForLessonCompleted(Integer num, Integer num2, Integer num3, Boolean bool);

    void createStoreEventForLessonEndDate(Integer num, Integer num2, Integer num3, Date date);

    void createStoreEventForLessonFeedback(Integer num, Integer num2, Integer num3, Integer num4);

    void createStoreEventForLessonPausedOn(Integer num, Integer num2, Integer num3, Integer num4);

    void createStoreEventForLessonSession(Integer num, Integer num2, Integer num3, LmsUserLessonSessionMetaData lmsUserLessonSessionMetaData);

    void createStoreEventForLessonStartDate(Integer num, Integer num2, Integer num3, Date date);

    void deleteBookmark(LmsBookMarkBean lmsBookMarkBean);

    Map<Integer, Boolean> getAllowedMediaMap(Integer num);

    Integer getLastPausedOn(Integer num);

    LmsUserMetaData getLmsUserMetaDataByCourseId(Integer num);

    LmsViewedMediaDataBean getViewedCourseById(Integer num);

    LmsViewedMediaBean getViewedLessonById(Integer num);

    List<Integer> getViewedLessonList();

    boolean isAnyUpdatedDataAvailable();

    boolean isQuizCompleted(Integer num, Integer num2, Integer num3, Integer num4);

    void makeCourseArchive(Integer num, boolean z);

    void makeCourseDownloadable(Integer num, boolean z);

    void markCourseDataViewed(Integer num, List<LmsTopicDataBean> list, List<LmsQuestionSetDataBean> list2);

    void markCourseViewed(Integer num);

    void markLessonCompleted(Integer num, Integer num2, Integer num3);

    List<LmsBookMarkBean> retrieveBookmarks(Integer num);

    LmsCourseDataBean retrieveCourseByCourseId(Integer num);

    List<LmsCourseDataBean> retrieveCourses();

    void saveBookmark(Integer num, BookmarkDataBean bookmarkDataBean);

    void storeLmsTestResult(LmsQuestionSetAnswerDataBean lmsQuestionSetAnswerDataBean, String str);

    void storeUserFeedbackOfMedia(Integer num, Integer num2, Integer num3, Integer num4);

    void updateBookmark(LmsBookMarkBean lmsBookMarkBean);

    void updateEndDateForMedia(Date date, Integer num, Integer num2, Integer num3);

    void updateLastPausedOnForMedia(Integer num, Integer num2, Integer num3, Integer num4);

    void updateStartDateForMedia(Date date, Integer num, Integer num2, Integer num3);
}
