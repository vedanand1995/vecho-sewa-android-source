package com.argusoft.sewa.android.app.constants;

import com.argusoft.sewa.android.app.databean.LmsQuestionOptionDataBean;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class LmsConstants {
    public static final String LMS_COURSE = "LMS_COURSE";
    public static final String LMS_GROUP = "LMS_GROUP";
    public static final String LMS_GROUP_QUIZ = "LMS_GROUP_QUIZ";
    public static final String MEDIA_TYPE_AUDIO = "AUDIO";
    public static final String MEDIA_TYPE_IMAGE = "IMAGE";
    public static final String MEDIA_TYPE_PDF = "PDF";
    public static final String MEDIA_TYPE_VIDEO = "VIDEO";
    public static final String QUESTION_TYPE_FILL_IN_THE_BLANKS = "FILL_IN_THE_BLANKS";
    public static final String QUESTION_TYPE_MATCH_THE_FOLLOWING = "MATCH_THE_FOLLOWING";
    public static final String QUESTION_TYPE_MULTI_SELECT = "MULTI_SELECT";
    public static final String QUESTION_TYPE_SINGLE_SELECT = "SINGLE_SELECT";

    public LmsConstants() {
        throw new IllegalStateException("Utility Class");
    }

    public static boolean isImageAvailableInMatchTheFollowing(List<LmsQuestionOptionDataBean> list, List<LmsQuestionOptionDataBean> list2) {
        Iterator<LmsQuestionOptionDataBean> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getMediaId() != null) {
                return true;
            }
        }
        Iterator<LmsQuestionOptionDataBean> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next().getMediaId() != null) {
                return true;
            }
        }
        return false;
    }
}
