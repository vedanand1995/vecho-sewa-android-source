package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.FileProvider;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyAudioPlayer;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.treeview.holder.TreeHolder;
import com.argusoft.sewa.android.app.treeview.model.TreeNode;
import com.argusoft.sewa.android.app.treeview.view.AndroidTreeView;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.MyComparatorUtil;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class LMSActivity extends MenuActivity implements View.OnClickListener {
    private static final String COURSE_SCREEN = "COURSE_SCREEN";
    private static final String MODULE_SCREEN = "MODULE_SCREEN";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    private LinearLayout globalPanel;
    List<LmsCourseDataBean> lmsCourseDataBeans;
    LmsServiceImpl lmsService;
    private Button nextButton;
    private String screen;
    private LmsCourseDataBean selectedCourse;
    private Integer selectedCourseIndex;
    private LmsLessonDataBean selectedMedia;
    private View treeView;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        getWindow().setSoftInputMode(16);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.LEARNING_MANAGEMENT_SYSTEM_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setBodyDetail();
    }

    public void setBodyDetail() {
        this.lmsCourseDataBeans = this.lmsService.retrieveCourses();
        setCourseScreen();
    }

    public void setCourseScreen() {
        this.screen = COURSE_SCREEN;
        this.selectedCourseIndex = null;
        this.bodyLayoutContainer.removeAllViews();
        List<LmsCourseDataBean> list = this.lmsCourseDataBeans;
        if (list == null || list.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_COURSES_AVAILABLE));
            this.nextButton.setText("Okay");
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_COURSES));
            ArrayList arrayList = new ArrayList();
            for (LmsCourseDataBean lmsCourseDataBean : this.lmsCourseDataBeans) {
                arrayList.add(new ListItemDataBean(lmsCourseDataBean.getCourseName(), (String) null, lmsCourseDataBean.getCourseDescription()));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_info, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSActivity.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    LMSActivity.this.selectedCourseIndex = Integer.valueOf(i);
                }
            }, null));
        }
        hideProcessDialog();
    }

    public void setModuleScreen() {
        showProcessDialog();
        this.screen = MODULE_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        View viewGenerateTreeView = generateTreeView(this.selectedCourse);
        this.treeView = viewGenerateTreeView;
        this.bodyLayoutContainer.addView(viewGenerateTreeView);
        hideProcessDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    public View generateTreeView(final LmsCourseDataBean lmsCourseDataBean) {
        if (lmsCourseDataBean == null) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, "No courses to show. Please refresh and try again");
            materialTextViewGenerateInstructionView.setPadding(20, 0, 0, 0);
            return materialTextViewGenerateInstructionView;
        }
        TreeNode treeNodeRoot = TreeNode.root();
        AndroidTreeView androidTreeView = new AndroidTreeView(getApplicationContext(), treeNodeRoot);
        int i = 1;
        TreeNode viewHolder = new TreeNode(new TreeHolder.IconTreeItem(R.drawable.ic_arrow_right, lmsCourseDataBean.getCourseName(), false)).setViewHolder(new TreeHolder(getApplicationContext(), true, 0, 0));
        treeNodeRoot.addChild(viewHolder);
        List<LmsTopicDataBean> topics = lmsCourseDataBean.getTopics();
        Collections.sort(topics, MyComparatorUtil.LMS_TOPIC_ORDER_COMPARATOR);
        for (LmsTopicDataBean lmsTopicDataBean : topics) {
            TreeNode viewHolder2 = new TreeNode(new TreeHolder.IconTreeItem(R.drawable.ic_arrow_right, lmsTopicDataBean.getTopicName(), false)).setViewHolder(new TreeHolder(getApplicationContext(), i, R.layout.child, 50));
            TreeNode[] treeNodeArr = new TreeNode[i];
            treeNodeArr[0] = viewHolder2;
            viewHolder.addChildren(treeNodeArr);
            viewHolder.setExpanded(i);
            List<LmsLessonDataBean> topicMedias = lmsTopicDataBean.getTopicMedias();
            Collections.sort(topicMedias, MyComparatorUtil.LMS_TOPIC_MEDIA_ORDER_COMPARATOR);
            List<Integer> viewedLessonList = this.lmsService.getViewedLessonList();
            for (final LmsLessonDataBean lmsLessonDataBean : topicMedias) {
                TreeNode viewHolder3 = new TreeNode(new TreeHolder.IconTreeItem(getIconFromMediaType(lmsLessonDataBean), lmsLessonDataBean.getTitle(), viewedLessonList.contains(lmsLessonDataBean.getActualId()))).setViewHolder(new TreeHolder(getApplicationContext(), false, R.layout.child, 70));
                viewHolder2.addChild(viewHolder3);
                viewHolder3.setClickListener(new TreeNode.TreeNodeClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSActivity.2
                    @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeClickListener
                    public void onClick(TreeNode treeNode, Object obj) {
                        LMSActivity.this.selectedMedia = lmsLessonDataBean;
                        if (Boolean.TRUE.equals(LMSActivity.this.lmsService.getAllowedMediaMap(lmsCourseDataBean.getCourseId()).get(lmsLessonDataBean.getActualId()))) {
                            LMSActivity.this.openMediaAccordingToType(lmsLessonDataBean);
                        } else {
                            SewaUtil.generateToast(LMSActivity.this.context, LabelConstants.COMPLETE_PREVIOUS_LESSONS);
                        }
                    }
                });
                LmsLessonDataBean lmsLessonDataBean2 = this.selectedMedia;
                if (lmsLessonDataBean2 != null && lmsLessonDataBean2.getActualId().equals(lmsLessonDataBean.getActualId())) {
                    viewHolder2.setExpanded(true);
                    viewHolder3.setSelected(true);
                }
                addLessonTestInTreeView(lmsLessonDataBean, viewHolder2);
            }
            addModuleTestInTreeView(lmsTopicDataBean, viewHolder2);
            i = 1;
        }
        addCourseTestInTreeView(lmsCourseDataBean, viewHolder);
        return androidTreeView.getView();
    }

    private int getIconFromMediaType(LmsLessonDataBean lmsLessonDataBean) {
        String mediaType = lmsLessonDataBean.getMediaType();
        mediaType.hashCode();
        switch (mediaType) {
            case "PDF":
                return R.drawable.pdf;
            case "AUDIO":
                return R.drawable.play_audio;
            case "IMAGE":
                return R.drawable.image;
            case "VIDEO":
                return R.drawable.play_video;
            default:
                return R.drawable.pending;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openMediaAccordingToType(LmsLessonDataBean lmsLessonDataBean) {
        String str = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(lmsLessonDataBean.getMediaId(), lmsLessonDataBean.getMediaFileName());
        if (!UtilBean.isFileExists(str)) {
            SewaUtil.generateToast(this.context, LabelConstants.FILE_NOT_FOUND);
        }
        String mediaType = lmsLessonDataBean.getMediaType();
        mediaType.hashCode();
        switch (mediaType) {
            case "PDF":
                Intent intent = new Intent(this.context, (Class<?>) CustomPDFViewerActivity_.class);
                intent.putExtra("path", str);
                intent.putExtra(FieldNameConstants.FILE_NAME, lmsLessonDataBean.getDescription());
                intent.putExtra("fromLms", true);
                intent.putExtra(FieldNameConstants.COURSE_ID, this.selectedCourse.getCourseId());
                intent.putExtra("lesson", new Gson().toJson(lmsLessonDataBean));
                startActivityForResult(intent, 1016);
                break;
            case "AUDIO":
                MyAudioPlayer myAudioPlayer = new MyAudioPlayer(this, lmsLessonDataBean.getTitle(), MediaPlayer.create(this, FileProvider.getUriForFile(this, getApplicationContext().getPackageName() + ".provider", new File(str))), true, this.lmsService, lmsLessonDataBean, this.selectedCourse.getCourseId());
                myAudioPlayer.show();
                myAudioPlayer.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.LMSActivity.3
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        LMSActivity.this.bodyLayoutContainer.removeView(LMSActivity.this.treeView);
                        LMSActivity lMSActivity = LMSActivity.this;
                        lMSActivity.treeView = lMSActivity.generateTreeView(lMSActivity.selectedCourse);
                        LMSActivity.this.bodyLayoutContainer.addView(LMSActivity.this.treeView);
                    }
                });
                break;
            case "IMAGE":
                Intent intent2 = new Intent(this, (Class<?>) CustomImageViewerActivity_.class);
                intent2.putExtra("path", str);
                intent2.putExtra(FieldNameConstants.FILE_NAME, lmsLessonDataBean.getTitle());
                intent2.putExtra("fromLms", true);
                intent2.putExtra(FieldNameConstants.COURSE_ID, this.selectedCourse.getCourseId());
                intent2.putExtra("lesson", new Gson().toJson(lmsLessonDataBean));
                startActivityForResult(intent2, 1016);
                break;
            case "VIDEO":
                Intent intent3 = new Intent(this.context, (Class<?>) LMSVideoPlayerActivity_.class);
                intent3.putExtra(FieldNameConstants.COURSE_ID, this.selectedCourse.getCourseId());
                intent3.putExtra("lesson", new Gson().toJson(lmsLessonDataBean));
                startActivityForResult(intent3, 1016);
                break;
            default:
                SewaUtil.generateToast(this.context, LabelConstants.FILE_IS_NOT_SUPPORTED);
                break;
        }
    }

    private void addLessonTestInTreeView(final LmsLessonDataBean lmsLessonDataBean, TreeNode treeNode) {
        if (lmsLessonDataBean.getQuestionSet() == null || lmsLessonDataBean.getQuestionSet().isEmpty()) {
            return;
        }
        for (final LmsQuestionSetDataBean lmsQuestionSetDataBean : lmsLessonDataBean.getQuestionSet()) {
            TreeNode viewHolder = new TreeNode(new TreeHolder.IconTreeItem(R.drawable.test, UtilBean.getMyLabel("Lesson Test") + " - " + lmsQuestionSetDataBean.getQuestionSetName() + " (" + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean.getQuestionSetType().toString())) + ")", false)).setViewHolder(new TreeHolder(getApplicationContext(), false, R.layout.child, 70));
            treeNode.addChild(viewHolder);
            viewHolder.setClickListener(new TreeNode.TreeNodeClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSActivity.4
                @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeClickListener
                public void onClick(TreeNode treeNode2, Object obj) {
                    LMSActivity lMSActivity = LMSActivity.this;
                    LmsLessonDataBean lmsLessonDataBean2 = lmsLessonDataBean;
                    lMSActivity.openLmsTestModule(null, null, lmsLessonDataBean2, lmsQuestionSetDataBean, lmsLessonDataBean2.getTitle());
                }
            });
        }
    }

    private void addModuleTestInTreeView(final LmsTopicDataBean lmsTopicDataBean, TreeNode treeNode) {
        if (lmsTopicDataBean.getQuestionSet() == null || lmsTopicDataBean.getQuestionSet().isEmpty()) {
            return;
        }
        for (final LmsQuestionSetDataBean lmsQuestionSetDataBean : lmsTopicDataBean.getQuestionSet()) {
            TreeNode viewHolder = new TreeNode(new TreeHolder.IconTreeItem(R.drawable.test, UtilBean.getMyLabel("Module Test") + " - " + lmsQuestionSetDataBean.getQuestionSetName() + " (" + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean.getQuestionSetType().toString())) + ")", false)).setViewHolder(new TreeHolder(getApplicationContext(), false, R.layout.child, 70));
            treeNode.addChild(viewHolder);
            viewHolder.setClickListener(new TreeNode.TreeNodeClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSActivity.5
                @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeClickListener
                public void onClick(TreeNode treeNode2, Object obj) {
                    LMSActivity lMSActivity = LMSActivity.this;
                    LmsTopicDataBean lmsTopicDataBean2 = lmsTopicDataBean;
                    lMSActivity.openLmsTestModule(null, lmsTopicDataBean2, null, lmsQuestionSetDataBean, lmsTopicDataBean2.getTopicName());
                }
            });
        }
    }

    private void addCourseTestInTreeView(final LmsCourseDataBean lmsCourseDataBean, TreeNode treeNode) {
        if (lmsCourseDataBean.getQuestionSet() == null || lmsCourseDataBean.getQuestionSet().isEmpty()) {
            return;
        }
        for (final LmsQuestionSetDataBean lmsQuestionSetDataBean : lmsCourseDataBean.getQuestionSet()) {
            TreeNode viewHolder = new TreeNode(new TreeHolder.IconTreeItem(R.drawable.test, UtilBean.getMyLabel("Course Test") + " - " + lmsQuestionSetDataBean.getQuestionSetName() + " (" + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(lmsQuestionSetDataBean.getQuestionSetType().toString())) + ")", false)).setViewHolder(new TreeHolder(getApplicationContext(), false, R.layout.child, 70));
            treeNode.addChild(viewHolder);
            viewHolder.setClickListener(new TreeNode.TreeNodeClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSActivity.6
                @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.TreeNodeClickListener
                public void onClick(TreeNode treeNode2, Object obj) {
                    LMSActivity lMSActivity = LMSActivity.this;
                    LmsCourseDataBean lmsCourseDataBean2 = lmsCourseDataBean;
                    lMSActivity.openLmsTestModule(lmsCourseDataBean2, null, null, lmsQuestionSetDataBean, lmsCourseDataBean2.getCourseName());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLmsTestModule(LmsCourseDataBean lmsCourseDataBean, LmsTopicDataBean lmsTopicDataBean, LmsLessonDataBean lmsLessonDataBean, LmsQuestionSetDataBean lmsQuestionSetDataBean, String str) {
        Intent intent;
        List<Integer> viewedLessonList = this.lmsService.getViewedLessonList();
        boolean z = false;
        boolean zContains = true;
        if (lmsCourseDataBean != null) {
            Iterator<LmsTopicDataBean> it = lmsCourseDataBean.getTopics().iterator();
            while (it.hasNext()) {
                Iterator<LmsLessonDataBean> it2 = it.next().getTopicMedias().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    } else if (!viewedLessonList.contains(it2.next().getActualId())) {
                        zContains = false;
                        break;
                    }
                }
            }
        } else if (lmsTopicDataBean != null) {
            Iterator<LmsLessonDataBean> it3 = lmsTopicDataBean.getTopicMedias().iterator();
            while (true) {
                if (!it3.hasNext()) {
                    z = true;
                    break;
                } else if (!viewedLessonList.contains(it3.next().getActualId())) {
                    break;
                }
            }
            zContains = z;
        } else if (lmsLessonDataBean != null) {
            zContains = viewedLessonList.contains(lmsLessonDataBean.getActualId());
        }
        if (zContains) {
            LmsCourseDataBean lmsCourseDataBean2 = this.selectedCourse;
            if (lmsCourseDataBean2 != null && lmsCourseDataBean2.getTestConfigJson() != null && Boolean.TRUE.equals(this.selectedCourse.getTestConfigJson().get(lmsQuestionSetDataBean.getQuestionSetType()).getProvideInteractiveFeedbackAfterEachQuestion())) {
                intent = new Intent(this.context, (Class<?>) LmsInteractiveQuestionModuleActivity_.class);
            } else {
                LmsCourseDataBean lmsCourseDataBean3 = this.selectedCourse;
                if (lmsCourseDataBean3 != null && lmsCourseDataBean3.getTestConfigJson() != null && lmsQuestionSetDataBean.getQuestionSetType().intValue() == 2468) {
                    intent = new Intent(this.context, (Class<?>) LmsSimulationActivity_.class);
                } else {
                    intent = new Intent(this.context, (Class<?>) LmsQuestionModuleActivity_.class);
                }
            }
            intent.putExtra("questionSet", new Gson().toJson(lmsQuestionSetDataBean));
            intent.putExtra("testFor", str);
            startActivityForResult(intent, 1016);
            return;
        }
        SewaUtil.generateToast(this.context, LabelConstants.COMPLETE_PREVIOUS_LESSONS);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (COURSE_SCREEN.equals(this.screen)) {
            if (this.lmsCourseDataBeans.isEmpty()) {
                navigateToHomeScreen(false);
                return;
            }
            Integer num = this.selectedCourseIndex;
            if (num != null) {
                this.selectedCourse = this.lmsCourseDataBeans.get(num.intValue());
                setModuleScreen();
                return;
            } else {
                SewaUtil.generateToast(this.context, "Please select a course");
                return;
            }
        }
        throw new IllegalStateException("Unexpected value: " + this.screen);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        if (MODULE_SCREEN.equals(this.screen)) {
            setCourseScreen();
            this.footerLayout.setVisibility(0);
        } else {
            finish();
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.CLOSE_LMS_ACTIVITY, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LMSActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    LMSActivity.this.alertDialog.dismiss();
                    LMSActivity.this.navigateToHomeScreen(false);
                    LMSActivity.this.finish();
                    return;
                }
                LMSActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1016) {
            String str = this.screen;
            str.hashCode();
            if (str.equals(COURSE_SCREEN)) {
                setCourseScreen();
                this.footerLayout.setVisibility(0);
            } else {
                if (str.equals(MODULE_SCREEN)) {
                    if (this.selectedCourse != null) {
                        setModuleScreen();
                        return;
                    } else {
                        setCourseScreen();
                        this.footerLayout.setVisibility(0);
                        return;
                    }
                }
                throw new IllegalStateException("Unexpected value: " + this.screen);
            }
        }
    }
}
