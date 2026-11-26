package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LmsEventConstants;
import com.argusoft.sewa.android.app.core.LmsService;
import com.argusoft.sewa.android.app.databean.BookmarkDataBean;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetAnswerDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.databean.LmsUserLessonSessionMetaData;
import com.argusoft.sewa.android.app.databean.LmsUserMetaData;
import com.argusoft.sewa.android.app.databean.LmsViewedMediaDataBean;
import com.argusoft.sewa.android.app.model.LmsBookMarkBean;
import com.argusoft.sewa.android.app.model.LmsCourseBean;
import com.argusoft.sewa.android.app.model.LmsEventBean;
import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.MyComparatorUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.table.TableUtils;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LmsServiceImpl implements LmsService {
    Dao<LmsBookMarkBean, Integer> bookMarkBeanDao;
    Dao<LmsCourseBean, Integer> courseBeanDao;
    Dao<LmsEventBean, Integer> eventBeanDao;
    Dao<LmsUserMetaDataBean, Integer> quizMetadataBeanDao;
    SewaServiceImpl sewaService;
    Dao<LmsViewedMediaBean, Integer> viewedMediaBeanDao;

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public List<LmsCourseDataBean> retrieveCourses() {
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        List<Integer> viewedLessonList = getViewedLessonList();
        Integer num = null;
        try {
            Iterator<LmsCourseBean> it = this.courseBeanDao.queryForAll().iterator();
            while (it.hasNext()) {
                LmsCourseDataBean lmsCourseDataBean = new LmsCourseDataBean(it.next());
                if (lmsCourseDataBean.getTopics() == null || lmsCourseDataBean.getTopics().isEmpty()) {
                    i = 0;
                    i2 = 0;
                } else {
                    i = 0;
                    i2 = 0;
                    for (LmsTopicDataBean lmsTopicDataBean : lmsCourseDataBean.getTopics()) {
                        if (lmsTopicDataBean.getTopicMedias() != null && !lmsTopicDataBean.getTopicMedias().isEmpty()) {
                            Iterator<LmsLessonDataBean> it2 = lmsTopicDataBean.getTopicMedias().iterator();
                            while (it2.hasNext()) {
                                if (viewedLessonList.contains(it2.next().getActualId())) {
                                    i2++;
                                }
                                i++;
                            }
                        }
                    }
                }
                if (lmsCourseDataBean.getTopics() != null && !lmsCourseDataBean.getTopics().isEmpty()) {
                    if (lmsCourseDataBean.getQuestionSet() != null && !lmsCourseDataBean.getQuestionSet().isEmpty()) {
                        Iterator<LmsQuestionSetDataBean> it3 = lmsCourseDataBean.getQuestionSet().iterator();
                        while (it3.hasNext()) {
                            i++;
                            if (isQuizCompleted(lmsCourseDataBean.getCourseId(), num, num, it3.next().getQuestionSetType())) {
                                i2++;
                            }
                        }
                    }
                    for (LmsTopicDataBean lmsTopicDataBean2 : lmsCourseDataBean.getTopics()) {
                        if (lmsTopicDataBean2.getQuestionSet() != null && !lmsTopicDataBean2.getQuestionSet().isEmpty()) {
                            Iterator<LmsQuestionSetDataBean> it4 = lmsTopicDataBean2.getQuestionSet().iterator();
                            while (it4.hasNext()) {
                                i++;
                                if (isQuizCompleted(lmsCourseDataBean.getCourseId(), lmsTopicDataBean2.getTopicId(), num, it4.next().getQuestionSetType())) {
                                    i2++;
                                }
                            }
                        }
                        for (LmsLessonDataBean lmsLessonDataBean : lmsTopicDataBean2.getTopicMedias()) {
                            if (lmsLessonDataBean.getQuestionSet() != null && !lmsLessonDataBean.getQuestionSet().isEmpty()) {
                                Iterator<LmsQuestionSetDataBean> it5 = lmsLessonDataBean.getQuestionSet().iterator();
                                while (it5.hasNext()) {
                                    i++;
                                    if (isQuizCompleted(lmsCourseDataBean.getCourseId(), lmsTopicDataBean2.getTopicId(), lmsLessonDataBean.getActualId(), it5.next().getQuestionSetType())) {
                                        i2++;
                                    }
                                }
                            }
                            num = null;
                        }
                    }
                }
                lmsCourseDataBean.setCompletionStatus(Integer.valueOf(i == 0 ? 0 : (i2 * 100) / i));
                arrayList.add(lmsCourseDataBean);
                num = null;
            }
            Collections.sort(arrayList, MyComparatorUtil.LMS_COURSE_COMPLETION_COMPARATOR);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return arrayList;
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void makeCourseArchive(Integer num, boolean z) {
        if (num == null) {
            return;
        }
        try {
            LmsCourseBean lmsCourseBeanQueryForFirst = this.courseBeanDao.queryBuilder().where().eq(FieldNameConstants.COURSE_ID, num).queryForFirst();
            lmsCourseBeanQueryForFirst.setArchived(Boolean.valueOf(z));
            this.courseBeanDao.update((Dao<LmsCourseBean, Integer>) lmsCourseBeanQueryForFirst);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void makeCourseDownloadable(Integer num, boolean z) {
        if (num == null) {
            return;
        }
        try {
            LmsCourseBean lmsCourseBeanQueryForFirst = this.courseBeanDao.queryBuilder().where().eq(FieldNameConstants.COURSE_ID, num).queryForFirst();
            lmsCourseBeanQueryForFirst.setMediaDownloaded(Boolean.valueOf(z));
            this.courseBeanDao.update((Dao<LmsCourseBean, Integer>) lmsCourseBeanQueryForFirst);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public LmsCourseDataBean retrieveCourseByCourseId(Integer num) {
        if (num == null) {
            return null;
        }
        try {
            return new LmsCourseDataBean(this.courseBeanDao.queryBuilder().where().eq(FieldNameConstants.COURSE_ID, num).queryForFirst());
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void deleteBookmark(LmsBookMarkBean lmsBookMarkBean) {
        try {
            this.bookMarkBeanDao.delete((Dao<LmsBookMarkBean, Integer>) lmsBookMarkBean);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void updateBookmark(LmsBookMarkBean lmsBookMarkBean) {
        try {
            this.bookMarkBeanDao.update((Dao<LmsBookMarkBean, Integer>) lmsBookMarkBean);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public List<LmsBookMarkBean> retrieveBookmarks(Integer num) {
        LinkedList linkedList = new LinkedList();
        try {
            return this.bookMarkBeanDao.queryBuilder().where().eq(FieldNameConstants.LESSON_ID, num).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return linkedList;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void saveBookmark(Integer num, BookmarkDataBean bookmarkDataBean) {
        try {
            LmsBookMarkBean lmsBookMarkBean = new LmsBookMarkBean();
            lmsBookMarkBean.setPosition(bookmarkDataBean.getPosition());
            lmsBookMarkBean.setBookmarkText(bookmarkDataBean.getBookmarkText());
            lmsBookMarkBean.setBookmarkNote(bookmarkDataBean.getBookmarkNote());
            lmsBookMarkBean.setFileName(bookmarkDataBean.getFileName());
            lmsBookMarkBean.setLessonId(num);
            this.bookMarkBeanDao.create((Dao<LmsBookMarkBean, Integer>) lmsBookMarkBean);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public Map<Integer, Boolean> getAllowedMediaMap(Integer num) {
        HashMap map = new HashMap();
        List<Integer> viewedLessonList = getViewedLessonList();
        List<LmsTopicDataBean> topics = retrieveCourseByCourseId(num).getTopics();
        Collections.sort(topics, MyComparatorUtil.LMS_TOPIC_ORDER_COMPARATOR);
        Integer actualId = null;
        for (LmsTopicDataBean lmsTopicDataBean : topics) {
            List<LmsLessonDataBean> topicMedias = lmsTopicDataBean.getTopicMedias();
            Collections.sort(topicMedias, MyComparatorUtil.LMS_TOPIC_MEDIA_ORDER_COMPARATOR);
            for (LmsLessonDataBean lmsLessonDataBean : topicMedias) {
                Integer actualId2 = lmsLessonDataBean.getActualId();
                boolean z = true;
                if ((!lmsTopicDataBean.getTopicOrder().equals(MorbiditiesConstant.ONE_PLUS) || lmsLessonDataBean.getMediaOrder().intValue() != 1) && !viewedLessonList.contains(actualId)) {
                    z = false;
                }
                map.put(actualId2, Boolean.valueOf(z));
                actualId = lmsLessonDataBean.getActualId();
            }
        }
        return map;
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public List<Integer> getViewedLessonList() {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<LmsViewedMediaBean> it = this.viewedMediaBeanDao.queryBuilder().where().eq("isCompleted", true).query().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getLessonId());
            }
            return arrayList;
        } catch (SQLException e) {
            e.printStackTrace();
            return Collections.emptyList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void storeLmsTestResult(LmsQuestionSetAnswerDataBean lmsQuestionSetAnswerDataBean, String str) {
        Log.i(getClass().getSimpleName(), "Storing LMS Test Result : " + new Gson().toJson(lmsQuestionSetAnswerDataBean));
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setAnswerEntity(FormConstants.LMS_TEST);
        storeAnswerBean.setAnswer(new Gson().toJson(lmsQuestionSetAnswerDataBean));
        storeAnswerBean.setChecksum(sb.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(-1L);
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        if (SewaTransformer.loginBean != null) {
            storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
            storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        }
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setBeneficiaryName(str);
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setFormType(FormConstants.LMS_TEST);
        loggerBean.setTaskName(UtilBean.getFullFormOfEntity().get(FormConstants.LMS_TEST));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        this.sewaService.createLoggerBean(loggerBean);
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public Integer getLastPausedOn(Integer num) {
        try {
            LmsViewedMediaBean lmsViewedMediaBeanQueryForFirst = this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.LESSON_ID, num).queryForFirst();
            if (lmsViewedMediaBeanQueryForFirst != null && lmsViewedMediaBeanQueryForFirst.getLastPausedOn() != null) {
                return lmsViewedMediaBeanQueryForFirst.getLastPausedOn();
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return 0;
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public LmsUserMetaData getLmsUserMetaDataByCourseId(Integer num) {
        try {
            return new LmsUserMetaData(this.quizMetadataBeanDao.queryBuilder().where().eq(FieldNameConstants.COURSE_ID, num).queryForFirst());
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public LmsViewedMediaBean getViewedLessonById(Integer num) {
        try {
            return this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.LESSON_ID, num).queryForFirst();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public boolean isAnyUpdatedDataAvailable() {
        try {
            for (LmsCourseDataBean lmsCourseDataBean : retrieveCourses()) {
                if (lmsCourseDataBean.getCompletionStatus().intValue() < 100 && getViewedCourseById(lmsCourseDataBean.getCourseId()) == null) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public LmsViewedMediaDataBean getViewedCourseById(Integer num) {
        try {
            LmsViewedMediaBean lmsViewedMediaBeanQueryForFirst = this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.COURSE_ID, num).and().eq("isViewed", true).and().eq("isCompleted", false).queryForFirst();
            if (lmsViewedMediaBeanQueryForFirst != null) {
                return new LmsViewedMediaDataBean(lmsViewedMediaBeanQueryForFirst);
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void markCourseViewed(Integer num) {
        LmsViewedMediaBean lmsViewedMediaBeanQueryForFirst;
        try {
            lmsViewedMediaBeanQueryForFirst = this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.COURSE_ID, num).and().eq("isCompleted", false).queryForFirst();
        } catch (SQLException e) {
            e.printStackTrace();
            lmsViewedMediaBeanQueryForFirst = null;
        }
        if (lmsViewedMediaBeanQueryForFirst != null) {
            if (!Boolean.TRUE.equals(lmsViewedMediaBeanQueryForFirst.getViewed())) {
                lmsViewedMediaBeanQueryForFirst.setViewed(true);
            }
            try {
                this.viewedMediaBeanDao.update((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBeanQueryForFirst);
                return;
            } catch (SQLException e2) {
                e2.printStackTrace();
                return;
            }
        }
        LmsViewedMediaBean lmsViewedMediaBean = new LmsViewedMediaBean();
        lmsViewedMediaBean.setLessonId(null);
        lmsViewedMediaBean.setModuleId(null);
        lmsViewedMediaBean.setCourseId(num);
        lmsViewedMediaBean.setViewed(true);
        lmsViewedMediaBean.setCompleted(false);
        lmsViewedMediaBean.setLastPausedOn(null);
        try {
            this.viewedMediaBeanDao.create((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBean);
        } catch (SQLException e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void markCourseDataViewed(Integer num, List<LmsTopicDataBean> list, List<LmsQuestionSetDataBean> list2) {
        LmsViewedMediaBean lmsViewedMediaBeanQueryForFirst;
        try {
            lmsViewedMediaBeanQueryForFirst = this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.COURSE_ID, num).and().eq("isCompleted", false).queryForFirst();
        } catch (SQLException e) {
            e.printStackTrace();
            lmsViewedMediaBeanQueryForFirst = null;
        }
        if (lmsViewedMediaBeanQueryForFirst != null) {
            if (!Boolean.TRUE.equals(lmsViewedMediaBeanQueryForFirst.getViewed())) {
                lmsViewedMediaBeanQueryForFirst.setViewed(true);
            }
            lmsViewedMediaBeanQueryForFirst.setTopics(new Gson().toJson(list));
            lmsViewedMediaBeanQueryForFirst.setQuestionSet(new Gson().toJson(list2));
            try {
                this.viewedMediaBeanDao.update((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBeanQueryForFirst);
                return;
            } catch (SQLException e2) {
                e2.printStackTrace();
                return;
            }
        }
        LmsViewedMediaBean lmsViewedMediaBean = new LmsViewedMediaBean();
        lmsViewedMediaBean.setLessonId(null);
        lmsViewedMediaBean.setModuleId(null);
        lmsViewedMediaBean.setCourseId(num);
        lmsViewedMediaBean.setViewed(true);
        lmsViewedMediaBean.setCompleted(false);
        lmsViewedMediaBean.setLastPausedOn(null);
        lmsViewedMediaBean.setTopics(new Gson().toJson(list));
        lmsViewedMediaBean.setQuestionSet(new Gson().toJson(list2));
        try {
            this.viewedMediaBeanDao.create((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBean);
        } catch (SQLException e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void markLessonCompleted(Integer num, Integer num2, Integer num3) {
        LmsViewedMediaBean lmsViewedMediaBeanQueryForFirst;
        try {
            lmsViewedMediaBeanQueryForFirst = this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.LESSON_ID, num).queryForFirst();
        } catch (SQLException e) {
            e.printStackTrace();
            lmsViewedMediaBeanQueryForFirst = null;
        }
        if (lmsViewedMediaBeanQueryForFirst != null) {
            if (!Boolean.TRUE.equals(lmsViewedMediaBeanQueryForFirst.getCompleted())) {
                lmsViewedMediaBeanQueryForFirst.setCompleted(true);
                createStoreEventForLessonCompleted(num3, num2, num, true);
            }
            lmsViewedMediaBeanQueryForFirst.setLastPausedOn(null);
            try {
                this.viewedMediaBeanDao.update((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBeanQueryForFirst);
                return;
            } catch (SQLException e2) {
                e2.printStackTrace();
                return;
            }
        }
        LmsViewedMediaBean lmsViewedMediaBean = new LmsViewedMediaBean();
        lmsViewedMediaBean.setLessonId(num);
        lmsViewedMediaBean.setModuleId(num2);
        lmsViewedMediaBean.setCourseId(num3);
        lmsViewedMediaBean.setCompleted(true);
        lmsViewedMediaBean.setLastPausedOn(null);
        try {
            this.viewedMediaBeanDao.create((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBean);
        } catch (SQLException e3) {
            e3.printStackTrace();
        }
        createStoreEventForLessonCompleted(num3, num2, num, true);
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void updateLastPausedOnForMedia(Integer num, Integer num2, Integer num3, Integer num4) {
        LmsViewedMediaBean lmsViewedMediaBeanQueryForFirst;
        try {
            lmsViewedMediaBeanQueryForFirst = this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.LESSON_ID, num2).queryForFirst();
        } catch (SQLException e) {
            e.printStackTrace();
            lmsViewedMediaBeanQueryForFirst = null;
        }
        if (lmsViewedMediaBeanQueryForFirst != null) {
            lmsViewedMediaBeanQueryForFirst.setLastPausedOn(num);
            try {
                this.viewedMediaBeanDao.update((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBeanQueryForFirst);
            } catch (SQLException e2) {
                e2.printStackTrace();
            }
        } else {
            LmsViewedMediaBean lmsViewedMediaBean = new LmsViewedMediaBean();
            lmsViewedMediaBean.setLessonId(num2);
            lmsViewedMediaBean.setModuleId(num3);
            lmsViewedMediaBean.setCourseId(num4);
            lmsViewedMediaBean.setLastPausedOn(num);
            try {
                this.viewedMediaBeanDao.create((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBean);
            } catch (SQLException e3) {
                e3.printStackTrace();
            }
        }
        createStoreEventForLessonPausedOn(num4, num3, num2, num);
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void updateStartDateForMedia(Date date, Integer num, Integer num2, Integer num3) {
        LmsViewedMediaBean lmsViewedMediaBeanQueryForFirst;
        try {
            lmsViewedMediaBeanQueryForFirst = this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.LESSON_ID, num).queryForFirst();
        } catch (SQLException e) {
            e.printStackTrace();
            lmsViewedMediaBeanQueryForFirst = null;
        }
        if (lmsViewedMediaBeanQueryForFirst != null) {
            if (lmsViewedMediaBeanQueryForFirst.getStartDate() == null) {
                lmsViewedMediaBeanQueryForFirst.setStartDate(date);
                try {
                    this.viewedMediaBeanDao.update((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBeanQueryForFirst);
                } catch (SQLException e2) {
                    e2.printStackTrace();
                }
                createStoreEventForLessonStartDate(num3, num2, num, date);
                return;
            }
            return;
        }
        LmsViewedMediaBean lmsViewedMediaBean = new LmsViewedMediaBean();
        lmsViewedMediaBean.setLessonId(num);
        lmsViewedMediaBean.setModuleId(num2);
        lmsViewedMediaBean.setCourseId(num3);
        lmsViewedMediaBean.setStartDate(date);
        try {
            this.viewedMediaBeanDao.create((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBean);
        } catch (SQLException e3) {
            e3.printStackTrace();
        }
        createStoreEventForLessonStartDate(num3, num2, num, date);
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void updateEndDateForMedia(Date date, Integer num, Integer num2, Integer num3) {
        LmsViewedMediaBean lmsViewedMediaBeanQueryForFirst;
        try {
            lmsViewedMediaBeanQueryForFirst = this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.LESSON_ID, num).queryForFirst();
        } catch (SQLException e) {
            e.printStackTrace();
            lmsViewedMediaBeanQueryForFirst = null;
        }
        if (lmsViewedMediaBeanQueryForFirst != null) {
            if (lmsViewedMediaBeanQueryForFirst.getEndDate() == null) {
                lmsViewedMediaBeanQueryForFirst.setEndDate(date);
                try {
                    this.viewedMediaBeanDao.update((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBeanQueryForFirst);
                } catch (SQLException e2) {
                    e2.printStackTrace();
                }
                createStoreEventForLessonEndDate(num3, num2, num, date);
                return;
            }
            return;
        }
        LmsViewedMediaBean lmsViewedMediaBean = new LmsViewedMediaBean();
        lmsViewedMediaBean.setLessonId(num);
        lmsViewedMediaBean.setModuleId(num2);
        lmsViewedMediaBean.setCourseId(num3);
        lmsViewedMediaBean.setEndDate(date);
        try {
            this.viewedMediaBeanDao.create((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBean);
        } catch (SQLException e3) {
            e3.printStackTrace();
        }
        createStoreEventForLessonEndDate(num3, num2, num, date);
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void addSessionsForMedia(Date date, Date date2, Integer num, Integer num2, Integer num3) {
        if (date == null || date2 == null) {
            return;
        }
        LmsUserLessonSessionMetaData lmsUserLessonSessionMetaData = new LmsUserLessonSessionMetaData();
        lmsUserLessonSessionMetaData.setStartDate(Long.valueOf(date.getTime()));
        lmsUserLessonSessionMetaData.setEndDate(Long.valueOf(date2.getTime()));
        try {
            List arrayList = new ArrayList();
            LmsViewedMediaBean lmsViewedMediaBeanQueryForFirst = this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.LESSON_ID, num).queryForFirst();
            if (lmsViewedMediaBeanQueryForFirst != null) {
                if (lmsViewedMediaBeanQueryForFirst.getSessions() != null && !lmsViewedMediaBeanQueryForFirst.getSessions().isEmpty()) {
                    arrayList = (List) new Gson().fromJson(lmsViewedMediaBeanQueryForFirst.getSessions(), new TypeToken<List<LmsUserLessonSessionMetaData>>() { // from class: com.argusoft.sewa.android.app.core.impl.LmsServiceImpl.1
                    }.getType());
                }
                arrayList.add(lmsUserLessonSessionMetaData);
                lmsViewedMediaBeanQueryForFirst.setSessions(new Gson().toJson(arrayList));
                this.viewedMediaBeanDao.update((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBeanQueryForFirst);
            } else {
                arrayList.add(lmsUserLessonSessionMetaData);
                LmsViewedMediaBean lmsViewedMediaBean = new LmsViewedMediaBean();
                lmsViewedMediaBean.setLessonId(num);
                lmsViewedMediaBean.setModuleId(num2);
                lmsViewedMediaBean.setCourseId(num3);
                lmsViewedMediaBean.setSessions(new Gson().toJson(arrayList));
                this.viewedMediaBeanDao.create((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBean);
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        createStoreEventForLessonSession(num3, num2, num, lmsUserLessonSessionMetaData);
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void storeUserFeedbackOfMedia(Integer num, Integer num2, Integer num3, Integer num4) {
        LmsViewedMediaBean lmsViewedMediaBeanQueryForFirst;
        try {
            lmsViewedMediaBeanQueryForFirst = this.viewedMediaBeanDao.queryBuilder().where().eq(FieldNameConstants.LESSON_ID, num2).queryForFirst();
        } catch (SQLException e) {
            e.printStackTrace();
            lmsViewedMediaBeanQueryForFirst = null;
        }
        if (lmsViewedMediaBeanQueryForFirst != null) {
            if (lmsViewedMediaBeanQueryForFirst.getUserFeedback() == null) {
                lmsViewedMediaBeanQueryForFirst.setUserFeedback(num);
                try {
                    this.viewedMediaBeanDao.update((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBeanQueryForFirst);
                } catch (SQLException e2) {
                    e2.printStackTrace();
                }
                createStoreEventForLessonFeedback(num4, num3, num2, num);
                return;
            }
            return;
        }
        LmsViewedMediaBean lmsViewedMediaBean = new LmsViewedMediaBean();
        lmsViewedMediaBean.setLessonId(num2);
        lmsViewedMediaBean.setModuleId(num3);
        lmsViewedMediaBean.setCourseId(num4);
        lmsViewedMediaBean.setUserFeedback(num);
        try {
            this.viewedMediaBeanDao.create((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBean);
        } catch (SQLException e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void createLmsUserMetaDataBean(LmsUserMetaDataBean lmsUserMetaDataBean) {
        try {
            TableUtils.clearTable(this.quizMetadataBeanDao.getConnectionSource(), LmsUserMetaDataBean.class);
            this.quizMetadataBeanDao.create((Dao<LmsUserMetaDataBean, Integer>) lmsUserMetaDataBean);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0029 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002a  */
    @Override // com.argusoft.sewa.android.app.core.LmsService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isQuizCompleted(java.lang.Integer r7, java.lang.Integer r8, java.lang.Integer r9, java.lang.Integer r10) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.LmsServiceImpl.isQuizCompleted(java.lang.Integer, java.lang.Integer, java.lang.Integer, java.lang.Integer):boolean");
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void createStoreEvent(String str, String str2) {
        LmsEventBean lmsEventBean = new LmsEventBean();
        lmsEventBean.setChecksum(SewaTransformer.loginBean.getUsername() + Calendar.getInstance().getTimeInMillis());
        lmsEventBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        lmsEventBean.setToken(SewaTransformer.loginBean.getUserToken());
        lmsEventBean.setUserId(Integer.valueOf(SewaTransformer.loginBean.getUserID().intValue()));
        lmsEventBean.setMobileDate(new Date());
        lmsEventBean.setEventType(str);
        lmsEventBean.setEventData(str2);
        try {
            this.eventBeanDao.create((Dao<LmsEventBean, Integer>) lmsEventBean);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("#### LMS Event Created for Mobile : " + str + " : " + str2);
    }

    private JsonObject getObjectForStoreEventData(Integer num, Integer num2, Integer num3) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(FieldNameConstants.COURSE_ID, num);
        jsonObject.addProperty(FieldNameConstants.MODULE_ID, num2);
        jsonObject.addProperty(FieldNameConstants.LESSON_ID, num3);
        return jsonObject;
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void createStoreEventForLessonStartDate(Integer num, Integer num2, Integer num3, Date date) {
        JsonObject objectForStoreEventData = getObjectForStoreEventData(num, num2, num3);
        objectForStoreEventData.addProperty("startDate", Long.valueOf(date.getTime()));
        createStoreEvent(LmsEventConstants.LESSON_START_DATE, new Gson().toJson((JsonElement) objectForStoreEventData));
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void createStoreEventForLessonEndDate(Integer num, Integer num2, Integer num3, Date date) {
        JsonObject objectForStoreEventData = getObjectForStoreEventData(num, num2, num3);
        objectForStoreEventData.addProperty("endDate", Long.valueOf(date.getTime()));
        createStoreEvent(LmsEventConstants.LESSON_END_DATE, new Gson().toJson((JsonElement) objectForStoreEventData));
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void createStoreEventForLessonPausedOn(Integer num, Integer num2, Integer num3, Integer num4) {
        JsonObject objectForStoreEventData = getObjectForStoreEventData(num, num2, num3);
        objectForStoreEventData.addProperty("pausedOn", num4);
        createStoreEvent(LmsEventConstants.LESSON_PAUSED_ON, new Gson().toJson((JsonElement) objectForStoreEventData));
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void createStoreEventForLessonCompleted(Integer num, Integer num2, Integer num3, Boolean bool) {
        JsonObject objectForStoreEventData = getObjectForStoreEventData(num, num2, num3);
        objectForStoreEventData.addProperty("completed", bool);
        createStoreEvent(LmsEventConstants.LESSON_COMPLETED, new Gson().toJson((JsonElement) objectForStoreEventData));
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void createStoreEventForLessonSession(Integer num, Integer num2, Integer num3, LmsUserLessonSessionMetaData lmsUserLessonSessionMetaData) {
        JsonObject objectForStoreEventData = getObjectForStoreEventData(num, num2, num3);
        objectForStoreEventData.addProperty("session", new Gson().toJson(lmsUserLessonSessionMetaData));
        createStoreEvent(LmsEventConstants.LESSON_SESSION, new Gson().toJson((JsonElement) objectForStoreEventData));
    }

    @Override // com.argusoft.sewa.android.app.core.LmsService
    public void createStoreEventForLessonFeedback(Integer num, Integer num2, Integer num3, Integer num4) {
        JsonObject objectForStoreEventData = getObjectForStoreEventData(num, num2, num3);
        objectForStoreEventData.addProperty("feedback", num4);
        createStoreEvent(LmsEventConstants.LESSON_FEEDBACK, new Gson().toJson((JsonElement) objectForStoreEventData));
    }
}
