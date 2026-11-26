package com.argusoft.sewa.android.app.lms;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.os.Environment;
import android.os.StatFs;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.internal.view.SupportMenu;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.databean.LmsViewedMediaDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class LmsCourseListAdaptor extends RecyclerView.Adapter<ViewHolder> {
    private final Map<Integer, View> adapterView = new HashMap();
    private final boolean archiveOption;
    private final Context context;
    private List<LmsCourseScreenDataBean> list;
    private LmsServiceImpl lmsService;
    private final boolean showProgress;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public abstract void onAdapterItemClick(int i);

    public abstract void onMenuClick(int i, View view);

    public LmsCourseListAdaptor(Context context, List<LmsCourseScreenDataBean> list, boolean z, boolean z2, LmsServiceImpl lmsServiceImpl) {
        this.context = context;
        this.list = list;
        this.showProgress = z;
        this.archiveOption = z2;
        this.lmsService = lmsServiceImpl;
    }

    public void removeItem(int i) {
        this.list.remove(i);
        notifyItemRemoved(i);
    }

    public List<LmsCourseScreenDataBean> getData() {
        return this.list;
    }

    public void updateList(List<LmsCourseScreenDataBean> list) {
        this.list = list;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.listview_row_lms_course, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        final LmsCourseScreenDataBean lmsCourseScreenDataBean = this.list.get(i);
        viewHolder.icon_menu.setVisibility(this.archiveOption ? 0 : 8);
        if (lmsCourseScreenDataBean.getCompletionStatus() < 100) {
            viewHolder.notification_badge.setVisibility(isCourseContentUpdated(lmsCourseScreenDataBean.getCourseId()) ? 0 : 8);
        } else {
            viewHolder.notification_badge.setVisibility(8);
        }
        if (lmsCourseScreenDataBean.getImage() != null) {
            viewHolder.courseImage.setImageBitmap(lmsCourseScreenDataBean.getImage());
        }
        if (lmsCourseScreenDataBean.getCourseTitle() != null) {
            viewHolder.title.setText(lmsCourseScreenDataBean.getCourseTitle());
        }
        if (lmsCourseScreenDataBean.getCourseTitle() != null) {
            viewHolder.numberOfLessonsAndQuizzes.setText(String.format("Lessons: %s, Quizzes: %s", Integer.valueOf(lmsCourseScreenDataBean.getTopicSize()), Integer.valueOf(lmsCourseScreenDataBean.getQuestionSetSize())));
        }
        if (lmsCourseScreenDataBean.getCourseDesc() != null) {
            viewHolder.desc.setText(lmsCourseScreenDataBean.getCourseDesc());
        }
        if (lmsCourseScreenDataBean.isMediaDownloaded() == null || Boolean.FALSE.equals(lmsCourseScreenDataBean.isMediaDownloaded())) {
            final View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseListAdaptor.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (SharedStructureData.workLogAlert != null) {
                        SharedStructureData.workLogAlert.dismiss();
                    }
                }
            };
            viewHolder.warning_image.setImageResource(R.drawable.warning);
            viewHolder.warning_image.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseListAdaptor.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SharedStructureData.workLogAlert = new MyAlertDialog(LmsCourseListAdaptor.this.context, "Unable to download media files  for this course due to insufficient space. Required space is " + (lmsCourseScreenDataBean.getCourseSize().longValue() / 1000000) + " MB & available free storage is " + (LmsCourseListAdaptor.this.getAvailableInternalMemorySize() / 1000000) + " MB.", onClickListener, DynamicUtils.BUTTON_OK);
                    SharedStructureData.workLogAlert.show();
                }
            });
        }
        if (this.showProgress) {
            viewHolder.progressLayout.setVisibility(0);
            viewHolder.progressText.setText(lmsCourseScreenDataBean.getCompletionStatus() + GlobalTypes.BENEFICIARY_SEPARATOR);
            viewHolder.progressBar.setProgress(lmsCourseScreenDataBean.getCompletionStatus());
            if (lmsCourseScreenDataBean.getCompletionStatus() < 60) {
                viewHolder.progressBar.getProgressDrawable().setColorFilter(SupportMenu.CATEGORY_MASK, PorterDuff.Mode.SRC_IN);
                return;
            }
            if (lmsCourseScreenDataBean.getCompletionStatus() >= 60 && lmsCourseScreenDataBean.getCompletionStatus() < 80) {
                viewHolder.progressBar.getProgressDrawable().setColorFilter(Color.rgb(255, 165, 0), PorterDuff.Mode.SRC_IN);
                return;
            } else {
                if (lmsCourseScreenDataBean.getCompletionStatus() >= 80) {
                    viewHolder.progressBar.getProgressDrawable().setColorFilter(-16711936, PorterDuff.Mode.SRC_IN);
                    return;
                }
                return;
            }
        }
        viewHolder.progressLayout.setVisibility(8);
    }

    public long getAvailableInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<LmsCourseScreenDataBean> list = this.list;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    private boolean isCourseContentUpdated(Integer num) {
        try {
            LmsCourseDataBean lmsCourseDataBeanRetrieveCourseByCourseId = this.lmsService.retrieveCourseByCourseId(num);
            LmsViewedMediaDataBean viewedCourseById = this.lmsService.getViewedCourseById(num);
            if (viewedCourseById == null || lmsCourseDataBeanRetrieveCourseByCourseId == null || ((lmsCourseDataBeanRetrieveCourseByCourseId.getQuestionSet() != null && viewedCourseById.getQuestionSet() == null) || (lmsCourseDataBeanRetrieveCourseByCourseId.getTopics() != null && viewedCourseById.getTopics() == null))) {
                return true;
            }
            if (lmsCourseDataBeanRetrieveCourseByCourseId.getQuestionSet() != null && viewedCourseById.getQuestionSet() != null && (!viewedCourseById.getQuestionSet().containsAll(lmsCourseDataBeanRetrieveCourseByCourseId.getQuestionSet()) || !lmsCourseDataBeanRetrieveCourseByCourseId.getQuestionSet().containsAll(viewedCourseById.getQuestionSet()))) {
                return true;
            }
            if (lmsCourseDataBeanRetrieveCourseByCourseId.getTopics() == null || viewedCourseById.getTopics() == null) {
                return false;
            }
            if (viewedCourseById.getTopics().containsAll(lmsCourseDataBeanRetrieveCourseByCourseId.getTopics()) && lmsCourseDataBeanRetrieveCourseByCourseId.getTopics().containsAll(viewedCourseById.getTopics())) {
                for (LmsTopicDataBean lmsTopicDataBean : lmsCourseDataBeanRetrieveCourseByCourseId.getTopics()) {
                    for (LmsTopicDataBean lmsTopicDataBean2 : viewedCourseById.getTopics()) {
                        if (Objects.equals(lmsTopicDataBean.getTopicId(), lmsTopicDataBean2.getTopicId())) {
                            if ((lmsTopicDataBean2.getQuestionSet() == null && lmsTopicDataBean.getQuestionSet() != null) || (lmsTopicDataBean2.getTopicMedias() == null && lmsTopicDataBean.getTopicMedias() != null)) {
                                return true;
                            }
                            if (lmsTopicDataBean2.getQuestionSet() != null && lmsTopicDataBean.getQuestionSet() != null && (!lmsTopicDataBean2.getQuestionSet().containsAll(lmsTopicDataBean.getQuestionSet()) || !lmsTopicDataBean.getQuestionSet().containsAll(lmsTopicDataBean2.getQuestionSet()))) {
                                return true;
                            }
                            if (lmsTopicDataBean2.getTopicMedias() != null && lmsTopicDataBean.getTopicMedias() != null) {
                                if (lmsTopicDataBean2.getTopicMedias().containsAll(lmsTopicDataBean.getTopicMedias()) && lmsTopicDataBean.getTopicMedias().containsAll(lmsTopicDataBean2.getTopicMedias())) {
                                    for (LmsLessonDataBean lmsLessonDataBean : lmsTopicDataBean.getTopicMedias()) {
                                        for (LmsLessonDataBean lmsLessonDataBean2 : lmsTopicDataBean2.getTopicMedias()) {
                                            if (Objects.equals(lmsLessonDataBean.getActualId(), lmsLessonDataBean2.getActualId())) {
                                                if (lmsLessonDataBean2.getQuestionSet() == null && lmsLessonDataBean.getQuestionSet() != null) {
                                                    return true;
                                                }
                                                if (lmsLessonDataBean2.getQuestionSet() == null || lmsLessonDataBean.getQuestionSet() == null || (lmsLessonDataBean2.getQuestionSet().containsAll(lmsLessonDataBean.getQuestionSet()) && lmsLessonDataBean.getQuestionSet().containsAll(lmsLessonDataBean2.getQuestionSet()))) {
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        ImageView courseImage;
        TextView desc;
        ImageView icon_menu;
        ImageView notification_badge;
        TextView numberOfLessonsAndQuizzes;
        ProgressBar progressBar;
        LinearLayout progressLayout;
        TextView progressText;
        TextView title;
        AppCompatImageView warning_image;

        public ViewHolder(View view) {
            super(view);
            this.courseImage = (ImageView) view.findViewById(R.id.course_image);
            this.notification_badge = (ImageView) view.findViewById(R.id.notification_badge);
            this.icon_menu = (ImageView) view.findViewById(R.id.icon_menu);
            this.warning_image = (AppCompatImageView) view.findViewById(R.id.size_warning);
            this.title = (TextView) view.findViewById(R.id.course_title);
            this.numberOfLessonsAndQuizzes = (TextView) view.findViewById(R.id.course_lessons_and_quizzes);
            this.desc = (TextView) view.findViewById(R.id.course_desc);
            this.progressLayout = (LinearLayout) view.findViewById(R.id.course_progress_layout);
            this.progressText = (TextView) view.findViewById(R.id.course_progress_text);
            this.progressBar = (ProgressBar) view.findViewById(R.id.course_progress_bar);
            this.icon_menu.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseListAdaptor.ViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LmsCourseListAdaptor.this.onMenuClick(ViewHolder.this.getAdapterPosition(), view2);
                }
            });
            view.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.lms.LmsCourseListAdaptor.ViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LmsCourseListAdaptor.this.onAdapterItemClick(ViewHolder.this.getAdapterPosition());
                }
            });
        }
    }
}
