package com.argusoft.sewa.android.app.util;

import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsFIBQuestionAnswersDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import java.util.Comparator;

/* loaded from: classes.dex */
public class MyComparatorUtil {
    public static final Comparator<LmsLessonDataBean> LMS_TOPIC_MEDIA_ORDER_COMPARATOR = new Comparator<LmsLessonDataBean>() { // from class: com.argusoft.sewa.android.app.util.MyComparatorUtil.1
        @Override // java.util.Comparator
        public int compare(LmsLessonDataBean lmsLessonDataBean, LmsLessonDataBean lmsLessonDataBean2) {
            return lmsLessonDataBean.getMediaOrder().intValue() - lmsLessonDataBean2.getMediaOrder().intValue();
        }
    };
    public static final Comparator<LmsTopicDataBean> LMS_TOPIC_ORDER_COMPARATOR = new Comparator<LmsTopicDataBean>() { // from class: com.argusoft.sewa.android.app.util.MyComparatorUtil.2
        @Override // java.util.Comparator
        public int compare(LmsTopicDataBean lmsTopicDataBean, LmsTopicDataBean lmsTopicDataBean2) {
            return Integer.parseInt(lmsTopicDataBean.getTopicOrder()) - Integer.parseInt(lmsTopicDataBean2.getTopicOrder());
        }
    };
    public static final Comparator<LmsFIBQuestionAnswersDataBean> LMS_FIB_BLANKS_ORDER_COMPARATOR = new Comparator<LmsFIBQuestionAnswersDataBean>() { // from class: com.argusoft.sewa.android.app.util.MyComparatorUtil.3
        @Override // java.util.Comparator
        public int compare(LmsFIBQuestionAnswersDataBean lmsFIBQuestionAnswersDataBean, LmsFIBQuestionAnswersDataBean lmsFIBQuestionAnswersDataBean2) {
            return lmsFIBQuestionAnswersDataBean.getBlankNumber().intValue() - lmsFIBQuestionAnswersDataBean2.getBlankNumber().intValue();
        }
    };
    public static final Comparator<LmsCourseDataBean> LMS_COURSE_COMPLETION_COMPARATOR = new Comparator<LmsCourseDataBean>() { // from class: com.argusoft.sewa.android.app.util.MyComparatorUtil.4
        @Override // java.util.Comparator
        public int compare(LmsCourseDataBean lmsCourseDataBean, LmsCourseDataBean lmsCourseDataBean2) {
            if (lmsCourseDataBean.getCompletionStatus().intValue() == 100 && lmsCourseDataBean2.getCompletionStatus().intValue() == 100) {
                return 0;
            }
            if (lmsCourseDataBean.getCompletionStatus().intValue() == 100) {
                return 1;
            }
            if (lmsCourseDataBean2.getCompletionStatus().intValue() == 100) {
                return -1;
            }
            return lmsCourseDataBean2.getCompletionStatus().intValue() - lmsCourseDataBean.getCompletionStatus().intValue();
        }
    };
    public static final Comparator<MemberDataBean> CHILD_DUE_VACCINES_COMPARATOR = new Comparator() { // from class: com.argusoft.sewa.android.app.util.MyComparatorUtil$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return MyComparatorUtil.lambda$static$0((MemberDataBean) obj, (MemberDataBean) obj2);
        }
    };

    static /* synthetic */ int lambda$static$0(MemberDataBean memberDataBean, MemberDataBean memberDataBean2) {
        if (memberDataBean.getDueVaccinesCount() == null && memberDataBean2.getDueVaccinesCount() == null) {
            return 0;
        }
        if (memberDataBean.getDueVaccinesCount() == null) {
            return -1;
        }
        if (memberDataBean2.getDueVaccinesCount() == null) {
            return 1;
        }
        return memberDataBean2.getDueVaccinesCount().intValue() - memberDataBean.getDueVaccinesCount().intValue();
    }
}
