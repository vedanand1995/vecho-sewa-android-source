package com.argusoft.sewa.android.app.datastructure;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.NestedScrollView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.DynamicFormActivity;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.service.GPSTracker;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.PointInPolygon;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class FormEngine implements View.OnClickListener {
    private static int firstPageNo = 1;
    private static int next;
    private LinearLayout bodyLayoutContainer;
    private Context context;
    private PageFormBean currentPage;
    private String formType;
    private LinearLayout globalPanel;
    private GPSTracker gps;
    private boolean isVaccinationsPage = false;
    private Button nextButton;
    private NestedScrollView scrollView;

    private FormEngine(Context context, String str) {
        this.context = context;
        this.formType = str;
        PageFormBean.context = context;
        this.gps = SharedStructureData.gps;
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        ((AppCompatActivity) context).setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.scrollView = (NestedScrollView) this.globalPanel.findViewById(DynamicUtils.ID_BODY_SCROLL);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        initializeFormComponent();
        firstPageNo = 1;
        next = 0;
        if (SharedStructureData.mapIndexPage != null) {
            PageFormBean pageFormBean = SharedStructureData.mapIndexPage.get(Integer.valueOf(firstPageNo));
            this.currentPage = pageFormBean;
            if (pageFormBean != null) {
                while (true) {
                    LinearLayout pageLayout = this.currentPage.getPageLayout(false, this.bodyLayoutContainer.getPaddingTop());
                    if (pageLayout != null) {
                        this.bodyLayoutContainer.addView(pageLayout);
                        break;
                    }
                    PageFormBean pageFromNext = DynamicUtils.getPageFromNext(next);
                    if (pageFromNext == null) {
                        break;
                    }
                    pageFromNext.setFirstQuestionId(next);
                    this.currentPage = pageFromNext;
                    firstPageNo = pageFromNext.getPageNo();
                }
            }
            Log.i(getClass().getSimpleName(), "First Page is : \n " + this.currentPage);
        } else {
            Log.i(getClass().getSimpleName(), "Page Map is null ");
            this.bodyLayoutContainer.addView(MyStaticComponents.getMaterialTextView(context, UtilBean.getMyLabel("Xls sheet not downloaded yet. Please login again...."), -1, 20, false));
        }
        setButtonDynamicText();
    }

    public static void setNext(int i) {
        next = i;
    }

    public static FormEngine generateForm(Context context, String str) {
        SharedStructureData.formType = str;
        return new FormEngine(context, str);
    }

    private void initializeFormComponent() {
        if (SharedStructureData.mapIndexQuestion != null) {
            Iterator<Map.Entry<Integer, QueFormBean>> it = SharedStructureData.mapIndexQuestion.entrySet().iterator();
            while (it.hasNext()) {
                QueFormBean value = it.next().getValue();
                if (value != null) {
                    try {
                        FormGenerator.generateQuestion(value, this.context);
                    } catch (Exception e) {
                        Log.e(getClass().getSimpleName(), null, e);
                    }
                }
            }
        }
    }

    public View getPageView() {
        return this.globalPanel;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.bodyLayoutContainer.clearFocus();
        if (view.getId() == 15004) {
            navigateToPreviousPage();
            PageFormBean pageFormBean = this.currentPage;
            if (pageFormBean == null) {
                return;
            }
            if (pageFormBean.isIsVaccinations()) {
                if (this.currentPage.getMyVaccination().getTotalVaccinations() > 0) {
                    setBackListener(this.currentPage.getMyVaccination());
                }
            } else {
                setBackListener(null);
                setNextListener(null);
            }
        } else if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            if (SharedStructureData.gpsEnabledForms.contains(this.formType)) {
                if (!SharedStructureData.gps.isLocationProviderEnabled()) {
                    this.gps.showSettingsAlert(this.context);
                } else {
                    if (!PointInPolygon.coordinateInsidePolygon()) {
                        UtilBean.showAlertAndExit(GlobalTypes.MSG_GEO_FENCING_VIOLATION, this.context);
                    }
                    navigateToNextPage();
                    if (this.currentPage.isIsVaccinations()) {
                        if (this.currentPage.getMyVaccination().getTotalVaccinations() > 0) {
                            this.currentPage.getMyVaccination().showFirst();
                            setNextListener(this.currentPage.getMyVaccination());
                        }
                    } else {
                        setBackListener(null);
                        setNextListener(null);
                    }
                }
            } else {
                navigateToNextPage();
                if (this.currentPage.isIsVaccinations()) {
                    if (this.currentPage.getMyVaccination().getTotalVaccinations() > 0) {
                        this.currentPage.getMyVaccination().showFirst();
                        setNextListener(this.currentPage.getMyVaccination());
                    }
                } else {
                    setBackListener(null);
                    setNextListener(null);
                }
            }
        }
        setButtonDynamicText();
        ((InputMethodManager) this.context.getSystemService("input_method")).hideSoftInputFromWindow(this.bodyLayoutContainer.getWindowToken(), 0);
    }

    private void navigateToPreviousPage() {
        PageFormBean pageFormBean = this.currentPage;
        if (pageFormBean != null && pageFormBean.getPrePage() != null) {
            LinearLayout pageLayout = this.currentPage.getPageLayout(false, this.bodyLayoutContainer.getPaddingTop());
            pageLayout.setVisibility(8);
            pageLayout.clearFocus();
            pageLayout.setDescendantFocusability(131072);
            pageLayout.setFocusableInTouchMode(true);
            this.currentPage = this.currentPage.getPrePage();
            NestedScrollView nestedScrollView = this.scrollView;
            nestedScrollView.scrollTo(nestedScrollView.getTop(), this.scrollView.getTop());
            this.currentPage.getPageLayout(false, this.bodyLayoutContainer.getPaddingTop()).setVisibility(0);
            return;
        }
        ((DynamicFormActivity) this.context).onBackPressed();
    }

    public void navigateToNextPage() {
        PageFormBean pageFormBean = this.currentPage;
        if (pageFormBean != null) {
            LinearLayout pageLayout = pageFormBean.getPageLayout(false, this.bodyLayoutContainer.getPaddingTop());
            pageLayout.setVisibility(8);
            pageLayout.clearFocus();
            pageLayout.setDescendantFocusability(131072);
            pageLayout.setFocusableInTouchMode(true);
            if (isValidPage(this.currentPage)) {
                MyDynamicComponents.reapplySkipCustomLocationAgeRange();
                int nextPageId = this.currentPage.getNextPageId();
                if (nextPageId > 0) {
                    PageFormBean pageFromNext = SharedStructureData.mapIndexPage.get(Integer.valueOf(nextPageId));
                    if (pageFromNext == null) {
                        pageLayout.setVisibility(0);
                        return;
                    }
                    while (true) {
                        if (pageFromNext == null || !Boolean.TRUE.equals(Boolean.valueOf(pageFromNext.isIsFirst()))) {
                            break;
                        }
                        LinearLayout pageLayout2 = pageFromNext.getPageLayout(false, this.bodyLayoutContainer.getPaddingTop());
                        if (pageLayout2 != null) {
                            this.bodyLayoutContainer.addView(pageLayout2);
                            break;
                        }
                        pageFromNext = DynamicUtils.getPageFromNext(next);
                    }
                    if (pageFromNext != null) {
                        pageFromNext.getPageLayout(false, this.bodyLayoutContainer.getPaddingTop()).setVisibility(0);
                        NestedScrollView nestedScrollView = this.scrollView;
                        nestedScrollView.scrollTo(nestedScrollView.getTop(), this.scrollView.getTop());
                        this.currentPage.setNextPage(pageFromNext);
                        this.currentPage = pageFromNext;
                        return;
                    }
                    return;
                }
                if (nextPageId < 0) {
                    pageLayout.setVisibility(0);
                    if (this.currentPage.getEvent() != null && this.currentPage.getEvent().trim().equalsIgnoreCase("Okay")) {
                        this.nextButton.setEnabled(Boolean.FALSE.booleanValue());
                        ((DynamicFormActivity) this.context).onFormFillFinish(DynamicUtils.generateAnswerString(firstPageNo, this.formType, this.context), true);
                        return;
                    }
                    if (this.currentPage.getEvent() != null && this.currentPage.getEvent().trim().equalsIgnoreCase(GlobalTypes.EVENT_SUBMIT)) {
                        this.nextButton.setEnabled(Boolean.FALSE.booleanValue());
                        ((DynamicFormActivity) this.context).onFormFillFinish(DynamicUtils.generateAnswerString(firstPageNo, this.formType, this.context), false);
                        return;
                    } else {
                        if (this.currentPage.getEvent() != null && this.currentPage.getEvent().trim().equalsIgnoreCase("Cancel")) {
                            ((DynamicFormActivity) this.context).onBackPressed();
                            return;
                        }
                        if (this.currentPage.getEvent() != null && this.currentPage.getEvent().trim().equalsIgnoreCase(GlobalTypes.EVENT_SAVE_FORM)) {
                            this.nextButton.setEnabled(Boolean.FALSE.booleanValue());
                            ((DynamicFormActivity) this.context).storeOpdLabTestForm(DynamicUtils.generateAnswerString(firstPageNo, this.formType, this.context));
                            return;
                        }
                        SewaUtil.generateToast(this.context, "No more next page available");
                        return;
                    }
                }
                PageFormBean pageFormBean2 = SharedStructureData.mapIndexPage.get(Integer.valueOf(firstPageNo));
                this.currentPage = pageFormBean2;
                if (pageFormBean2 != null) {
                    pageFormBean2.getPageLayout(false, this.bodyLayoutContainer.getPaddingTop()).setVisibility(0);
                }
                NestedScrollView nestedScrollView2 = this.scrollView;
                nestedScrollView2.scrollTo(nestedScrollView2.getTop(), this.scrollView.getTop());
                return;
            }
            pageLayout.setVisibility(0);
            SewaUtil.generateToast(this.context, this.currentPage.getValidationMessage());
            return;
        }
        ((DynamicFormActivity) this.context).onBackPressed();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
    
        r0 = r3.getMandatorymessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a3, code lost:
    
        if (r0 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ad, code lost:
    
        if (r0.trim().length() == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b7, code lost:
    
        if (r0.trim().equalsIgnoreCase(com.argusoft.sewa.android.app.constants.LabelConstants.NULL) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b9, code lost:
    
        r0 = r3.getQuestion();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bd, code lost:
    
        r10.setValidationMessage(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c0, code lost:
    
        return false;
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isValidPage(com.argusoft.sewa.android.app.datastructure.PageFormBean r10) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.datastructure.FormEngine.isValidPage(com.argusoft.sewa.android.app.datastructure.PageFormBean):boolean");
    }

    private void setButtonDynamicText() {
        PageFormBean pageFormBean = this.currentPage;
        if (pageFormBean != null) {
            if (pageFormBean.getEvent() != null) {
                this.nextButton.setText(UtilBean.getMyLabel(this.currentPage.getEvent()));
            } else {
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
            }
            if (this.currentPage.getFirstQuestionId() == 9999) {
                this.nextButton.setText(UtilBean.getMyLabel(GlobalTypes.EVENT_SUBMIT));
            }
        }
    }

    public void setNextListener(View.OnClickListener onClickListener) {
        Button button = this.nextButton;
        if (button != null) {
            if (onClickListener != null) {
                button.setOnClickListener(onClickListener);
            } else {
                button.setOnClickListener(this);
            }
        }
    }

    public void backButtonClicked() {
        View view = new View(this.context);
        view.setId(DynamicUtils.ID_BACK_BUTTON);
        if (!this.isVaccinationsPage) {
            onClick(view);
        } else {
            this.currentPage.getMyVaccination().onClick(view);
        }
    }

    public void setBackListener(View.OnClickListener onClickListener) {
        this.isVaccinationsPage = onClickListener != null;
    }
}
