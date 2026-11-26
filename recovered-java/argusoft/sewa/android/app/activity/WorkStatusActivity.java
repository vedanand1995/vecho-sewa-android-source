package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.MyWorkLogAdapter;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.WorkLogScreenDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.FhwServiceDetailBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.service.FileUploadForegroundService;
import com.argusoft.sewa.android.app.service.FileUploadForegroundService_;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class WorkStatusActivity extends MenuActivity implements View.OnClickListener {
    private Handler backgroundHandler;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    Dao<LocationBean, Integer> locationBeanDao;
    private Integer locationId;
    private Button nextButton;
    MyProcessDialog processDialog;
    SewaServiceImpl sewaService;
    private Spinner spinner;
    private List<LocationBean> locationBeans = new ArrayList();
    private Map<String, Long> mapOfStatistics = new LinkedHashMap();
    private Map<String, Long> mapOfExpectedValues = new LinkedHashMap();
    private boolean isVillageSelectionScreen = Boolean.FALSE.booleanValue();
    private Integer pageCounter = 0;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        HandlerThread handlerThread = new HandlerThread("HandlerThread");
        handlerThread.start();
        this.backgroundHandler = new Handler(handlerThread.getLooper());
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.WORK_STATUS_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    private void setBodyDetail() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.locationBeans = distinctLocationsAssignedToUser;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.locationId = this.locationBeans.get(0).getActualID();
            this.isVillageSelectionScreen = Boolean.FALSE.booleanValue();
            this.pageCounter = Integer.valueOf(this.pageCounter.intValue() + 1);
            addTable(Long.valueOf(this.locationId.intValue()));
            return;
        }
        if (this.locationBeans.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            this.isVillageSelectionScreen = Boolean.TRUE.booleanValue();
            addVillageSelectionSpinner();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            if (this.isVillageSelectionScreen) {
                String string = this.spinner.getSelectedItem().toString();
                if (this.spinner.getSelectedItemPosition() == 0) {
                    this.locationId = null;
                } else {
                    Iterator<LocationBean> it = this.locationBeans.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        LocationBean next = it.next();
                        if (string.equals(next.getName())) {
                            this.locationId = next.getActualID();
                            break;
                        }
                    }
                }
                this.bodyLayoutContainer.removeAllViews();
                this.pageCounter = Integer.valueOf(this.pageCounter.intValue() + 1);
                if (this.locationId != null) {
                    addTable(Long.valueOf(r5.intValue()));
                } else {
                    addTable(null);
                }
                this.isVillageSelectionScreen = Boolean.FALSE.booleanValue();
                return;
            }
            if (this.pageCounter.intValue() == 4) {
                this.bodyLayoutContainer.removeAllViews();
                MyProcessDialog myProcessDialog = new MyProcessDialog(this, GlobalTypes.MSG_PROCESSING);
                this.processDialog = myProcessDialog;
                myProcessDialog.show();
                this.pageCounter = Integer.valueOf(this.pageCounter.intValue() + 1);
                retrieveWorkLog();
                this.processDialog.dismiss();
                this.nextButton.setText(UtilBean.getMyLabel(GlobalTypes.MAIN_MENU));
                return;
            }
            if (this.pageCounter.intValue() == 5) {
                navigateToHomeScreen(false);
                return;
            }
            this.bodyLayoutContainer.removeAllViews();
            this.pageCounter = Integer.valueOf(this.pageCounter.intValue() + 1);
            if (this.locationId != null) {
                addTable(Long.valueOf(r5.intValue()));
            } else {
                addTable(null);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addTable(java.lang.Long r25) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.WorkStatusActivity.addTable(java.lang.Long):void");
    }

    private void addVillageSelectionSpinner() {
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE)));
        String[] strArr = new String[this.locationBeans.size() + 1];
        strArr[0] = UtilBean.getMyLabel(LabelConstants.ALL);
        Iterator<LocationBean> it = this.locationBeans.iterator();
        int i = 1;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        this.spinner = spinner;
        this.bodyLayoutContainer.addView(spinner);
        hideProcessDialog();
    }

    private void addVillageHeading(LocationBean locationBean) {
        String myLabel;
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(fhsLastUpdateLabelView(this.sewaService, linearLayout));
        if (locationBean != null) {
            myLabel = UtilBean.getMyLabel("Village") + ":" + UtilBean.getMyLabel(locationBean.getName());
        } else {
            myLabel = UtilBean.getMyLabel("All Village");
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, myLabel));
    }

    private void addStatisticTypeHeading() {
        String str;
        if (this.pageCounter.intValue() == 1) {
            str = LabelConstants.SPEED_OF_FHS_VERIFICATION;
        } else if (this.pageCounter.intValue() == 2) {
            str = LabelConstants.QUALITY_OF_FHS_VERIFICATION;
        } else if (this.pageCounter.intValue() == 3) {
            str = LabelConstants.INFORMATION_ABOUT_EXISTING_BENEFICIARIES;
        } else if (this.pageCounter.intValue() != 4) {
            str = "";
        } else {
            str = "NCD Screening";
        }
        if (str.trim().isEmpty()) {
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(str)));
    }

    private void addValueInMap(Map<String, Long> map, String str, Long l) {
        Long l2 = map.get(str);
        if (l2 != null) {
            map.put(str, Long.valueOf(l2.longValue() + l.longValue()));
        } else {
            map.put(str, l);
        }
    }

    private void populateMapOfStatistics(List<FhwServiceDetailBean> list) {
        Map<String, Long> map = this.mapOfStatistics;
        String str = LabelConstants.NUMBER_OF_FAMILIES_IMPORTED_FROM_EMAMTA_TARGET;
        map.put(LabelConstants.NUMBER_OF_FAMILIES_IMPORTED_FROM_EMAMTA_TARGET, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_FAMILIES_VERIFIED_BY_YOU_TILL_NOW, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_FAMILIES_VERIFIED_BY_YOU_IN_LAST_3_DAYS, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_FAMILIES_ARCHIVED_BY_YOU_TILL_NOW, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_FAMILIES_ADDED_BY_YOU_TILL_NOW, 0L);
        this.mapOfStatistics.put(LabelConstants.TOTAL_NUMBER_OF_FAMILIES_IN_TECHO_AS_OF_TODAY, 0L);
        this.mapOfStatistics.put(LabelConstants.TOTAL_NUMBER_OF_FAMILY_MEMBERS_IN_TECHO_AS_OF_TODAY, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_AND_PROPORTION_OF_TRUE_VALIDATION_BY_GVK_EMRI_CALL_CENTER, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_AND_PROPORTION_OF_FAMILY_MEMBERS_FOR_WHOM_YOU_ENTERED_AADHAR_NUMBER, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_AND_PROPORTION_OF_FAMILY_MEMBERS_FOR_WHOM_YOU_ENTERED_PHONE_NUMBER, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_ELIGIBLE_COUPLES_IN_TECHO_TODAY, 0L);
        Map<String, Long> map2 = this.mapOfStatistics;
        String str2 = LabelConstants.NUMBER_OF_PREGNANT_WOMEN_IN_TECHO_TODAY;
        map2.put(LabelConstants.NUMBER_OF_PREGNANT_WOMEN_IN_TECHO_TODAY, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_UNDER_5_CHILDREN_IN_TECHO_TODAY, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_SEASONAL_MIGRANT_FAMILIES, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_MEMBERS_SCREENED, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_MALE_MEMBERS_SCREENED, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_FEMALE_MEMBERS_SCREENED, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_MEMBERS_SCREENED_FOR_HYPERTENSION, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_MEMBERS_SCREENED_FOR_DIABETES, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_MEMBERS_SCREENED_FOR_ORAL_CANCER, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_FEMALE_MEMBERS_SCREENED_FOR_BREAST_CANCER, 0L);
        this.mapOfStatistics.put(LabelConstants.NUMBER_OF_FEMALE_MEMBERS_SCREENED_FOR_CERVICAL_CANCER, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_FAMILIES_IMPORTED_FROM_EMAMTA_TARGET, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_FAMILIES_VERIFIED_BY_YOU_TILL_NOW, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_FAMILIES_VERIFIED_BY_YOU_IN_LAST_3_DAYS, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_FAMILIES_ARCHIVED_BY_YOU_TILL_NOW, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_FAMILIES_ADDED_BY_YOU_TILL_NOW, 0L);
        this.mapOfExpectedValues.put(LabelConstants.TOTAL_NUMBER_OF_FAMILIES_IN_TECHO_AS_OF_TODAY, 0L);
        this.mapOfExpectedValues.put(LabelConstants.TOTAL_NUMBER_OF_FAMILY_MEMBERS_IN_TECHO_AS_OF_TODAY, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_AND_PROPORTION_OF_TRUE_VALIDATION_BY_GVK_EMRI_CALL_CENTER, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_AND_PROPORTION_OF_FAMILY_MEMBERS_FOR_WHOM_YOU_ENTERED_AADHAR_NUMBER, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_AND_PROPORTION_OF_FAMILY_MEMBERS_FOR_WHOM_YOU_ENTERED_PHONE_NUMBER, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_ELIGIBLE_COUPLES_IN_TECHO_TODAY, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_PREGNANT_WOMEN_IN_TECHO_TODAY, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_UNDER_5_CHILDREN_IN_TECHO_TODAY, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_SEASONAL_MIGRANT_FAMILIES, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_MEMBERS_SCREENED, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_MALE_MEMBERS_SCREENED, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_FEMALE_MEMBERS_SCREENED, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_MEMBERS_SCREENED_FOR_HYPERTENSION, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_MEMBERS_SCREENED_FOR_DIABETES, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_MEMBERS_SCREENED_FOR_ORAL_CANCER, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_FEMALE_MEMBERS_SCREENED_FOR_BREAST_CANCER, 0L);
        this.mapOfExpectedValues.put(LabelConstants.NUMBER_OF_FEMALE_MEMBERS_SCREENED_FOR_CERVICAL_CANCER, 0L);
        Iterator<FhwServiceDetailBean> it = list.iterator();
        while (it.hasNext()) {
            FhwServiceDetailBean next = it.next();
            addValueInMap(this.mapOfStatistics, str, next.getFamiliesImportedFromEMamta());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_FAMILIES_VERIFIED_BY_YOU_TILL_NOW, next.getFamiliesVerifiedTillNow());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_FAMILIES_VERIFIED_BY_YOU_IN_LAST_3_DAYS, next.getFamiliesVerifiedLast3Days());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_FAMILIES_ARCHIVED_BY_YOU_TILL_NOW, next.getFamiliesArchivedTillNow());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_FAMILIES_ADDED_BY_YOU_TILL_NOW, next.getNewFamiliesAddedTillNow());
            addValueInMap(this.mapOfStatistics, LabelConstants.TOTAL_NUMBER_OF_FAMILIES_IN_TECHO_AS_OF_TODAY, next.getTotalFamiliesInIMTTillNow());
            addValueInMap(this.mapOfStatistics, LabelConstants.TOTAL_NUMBER_OF_FAMILY_MEMBERS_IN_TECHO_AS_OF_TODAY, next.getTotalMembersInIMTTillNow());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_AND_PROPORTION_OF_TRUE_VALIDATION_BY_GVK_EMRI_CALL_CENTER, next.getNumberOfTrueValidationsByGvkEmri());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_AND_PROPORTION_OF_FAMILY_MEMBERS_FOR_WHOM_YOU_ENTERED_AADHAR_NUMBER, next.getNumberOfMembersWithAadharNumberEntered());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_AND_PROPORTION_OF_FAMILY_MEMBERS_FOR_WHOM_YOU_ENTERED_PHONE_NUMBER, next.getNumberOfMembersWithMobileNumberEntered());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_ELIGIBLE_COUPLES_IN_TECHO_TODAY, next.getTotalEligibleCouplesInTeCHO());
            addValueInMap(this.mapOfStatistics, str2, next.getTotalPregnantWomenInTeCHO());
            String str3 = str2;
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_UNDER_5_CHILDREN_IN_TECHO_TODAY, next.getUnder5ChildrenTillNow());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_SEASONAL_MIGRANT_FAMILIES, next.getTotalNumberOfSeasonalMigrantFamilies());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_MEMBERS_SCREENED, next.getNcdTotalMembersScreened());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_MALE_MEMBERS_SCREENED, next.getNcdTotalMaleMembersScreened());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_FEMALE_MEMBERS_SCREENED, next.getNcdTotalFemaleMembersScreened());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_MEMBERS_SCREENED_FOR_HYPERTENSION, next.getNcdTotalMembersScreenedForHypertension());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_MEMBERS_SCREENED_FOR_DIABETES, next.getNcdTotalMembersScreenedForDiabetes());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_MEMBERS_SCREENED_FOR_ORAL_CANCER, next.getNcdTotalMembersScreenedForOral());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_FEMALE_MEMBERS_SCREENED_FOR_BREAST_CANCER, next.getNcdTotalFemaleMembersScreenedForBreast());
            addValueInMap(this.mapOfStatistics, LabelConstants.NUMBER_OF_FEMALE_MEMBERS_SCREENED_FOR_CERVICAL_CANCER, next.getNcdTotalFemaleMembersScreenedForCervical());
            addValueInMap(this.mapOfExpectedValues, str, next.getFamiliesImportedFromEMamtaExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.NUMBER_OF_FAMILIES_VERIFIED_BY_YOU_TILL_NOW, next.getFamiliesVerifiedTillNowExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.NUMBER_OF_FAMILIES_VERIFIED_BY_YOU_IN_LAST_3_DAYS, next.getFamiliesVerifiedLast3DaysExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.NUMBER_OF_FAMILIES_ARCHIVED_BY_YOU_TILL_NOW, next.getFamiliesArchivedTillNowExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.NUMBER_OF_FAMILIES_ADDED_BY_YOU_TILL_NOW, next.getNewFamiliesAddedTillNowExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.TOTAL_NUMBER_OF_FAMILIES_IN_TECHO_AS_OF_TODAY, next.getNewFamiliesAddedTillNowExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.TOTAL_NUMBER_OF_FAMILY_MEMBERS_IN_TECHO_AS_OF_TODAY, next.getTotalMembersInIMTTillNowExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.NUMBER_AND_PROPORTION_OF_TRUE_VALIDATION_BY_GVK_EMRI_CALL_CENTER, next.getNumberOfTrueValidationsByGvkEmriExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.NUMBER_AND_PROPORTION_OF_FAMILY_MEMBERS_FOR_WHOM_YOU_ENTERED_AADHAR_NUMBER, next.getNumberOfMembersWithAadharNumberEnteredExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.NUMBER_AND_PROPORTION_OF_FAMILY_MEMBERS_FOR_WHOM_YOU_ENTERED_PHONE_NUMBER, next.getNumberOfMembersWithMobileNumberEnteredExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.NUMBER_OF_ELIGIBLE_COUPLES_IN_TECHO_TODAY, next.getTotalEligibleCouplesInTeCHOExpectedValue());
            addValueInMap(this.mapOfExpectedValues, str3, next.getTotalPregnantWomenInTeCHOExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.NUMBER_OF_UNDER_5_CHILDREN_IN_TECHO_TODAY, next.getUnder5ChildrenTillNowExpectedValue());
            addValueInMap(this.mapOfExpectedValues, LabelConstants.NUMBER_OF_SEASONAL_MIGRANT_FAMILIES, next.getTotalNumberOfSeasonalMigrantFamiliesExpectedValue());
            it = it;
            str2 = str3;
            str = str;
        }
    }

    private String getProportionForTrueValidationsStatistics(String str) {
        StringBuilder sb;
        Long l;
        sb = new StringBuilder(" (");
        l = this.mapOfStatistics.get(str);
        if (l == null) {
            l = 0L;
        }
        str.hashCode();
        switch (str) {
            case "Number and proportion of family members for whom you entered Aadhaar Number":
            case "Number and proportion of family members for whom you entered Phone Number":
                Long l2 = this.mapOfStatistics.get(LabelConstants.TOTAL_NUMBER_OF_FAMILY_MEMBERS_IN_TECHO_AS_OF_TODAY);
                if (l2 != null && l2.longValue() != 0) {
                    sb.append(String.format(Locale.getDefault(), "%.2f", Float.valueOf((l.longValue() / l2.longValue()) * 100.0f)));
                    break;
                } else {
                    return "";
                }
            case "Number and proportion of true validation by GVK EMRI call center":
                Long l3 = this.mapOfStatistics.get(LabelConstants.TOTAL_NUMBER_OF_FAMILIES_IN_TECHO_AS_OF_TODAY);
                if (l3 != null && l3.longValue() != 0) {
                    sb.append(String.format(Locale.getDefault(), "%.2f", Float.valueOf((l.longValue() / l3.longValue()) * 100.0f)));
                    break;
                } else {
                    return "";
                }
                break;
        }
        sb.append("%)");
        return sb.toString();
    }

    public void retrieveWorkLog() {
        WorkLogScreenDataBean workLogScreenDataBean;
        WorkLogScreenDataBean workLogScreenDataBean2;
        WorkLogScreenDataBean workLogScreenDataBean3;
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        List<LoggerBean> workLog = this.sewaService.getWorkLog();
        ArrayList arrayList = new ArrayList();
        if (workLog != null && !workLog.isEmpty()) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss", Locale.getDefault());
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -1);
            for (LoggerBean loggerBean : workLog) {
                List<UploadFileDataBean> fileWorkLog = this.sewaService.getFileWorkLog(loggerBean.getCheckSum());
                if (loggerBean.getStatus().equalsIgnoreCase("S")) {
                    if ((loggerBean.getBeneficiaryName() == null || Objects.equals(loggerBean.getBeneficiaryName(), "")) && loggerBean.getLocation() != null) {
                        workLogScreenDataBean = new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.success, loggerBean.getLocation(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog);
                    } else {
                        workLogScreenDataBean = new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.success, loggerBean.getDisplayBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog);
                    }
                    arrayList.add(workLogScreenDataBean);
                } else if (loggerBean.getStatus().equalsIgnoreCase("P")) {
                    if ((loggerBean.getBeneficiaryName() == null || Objects.equals(loggerBean.getBeneficiaryName(), "")) && loggerBean.getLocation() != null) {
                        workLogScreenDataBean2 = new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.pending, loggerBean.getLocation(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog);
                    } else {
                        workLogScreenDataBean2 = new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.pending, loggerBean.getDisplayBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog);
                    }
                    arrayList.add(workLogScreenDataBean2);
                } else if (loggerBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_QUEUE)) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.queue, loggerBean.getDisplayBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage()));
                } else if (loggerBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_ERROR) && loggerBean.getModifiedOn() != null && loggerBean.getModifiedOn().after(calendar.getTime())) {
                    arrayList.add(new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.error, loggerBean.getDisplayBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog));
                } else if (loggerBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_HANDLED_ERROR) && loggerBean.getModifiedOn() != null && loggerBean.getModifiedOn().after(calendar.getTime())) {
                    if ((loggerBean.getBeneficiaryName() == null || Objects.equals(loggerBean.getBeneficiaryName(), "")) && loggerBean.getLocation() != null) {
                        workLogScreenDataBean3 = new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.warning, loggerBean.getLocation(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog);
                    } else {
                        workLogScreenDataBean3 = new WorkLogScreenDataBean(simpleDateFormat.format(new Date(loggerBean.getDate().longValue())), R.drawable.warning, loggerBean.getDisplayBeneficiaryName(), loggerBean.getTaskName(), loggerBean.getMessage(), fileWorkLog);
                    }
                    arrayList.add(workLogScreenDataBean3);
                }
            }
        } else {
            arrayList.add(new WorkLogScreenDataBean(null, -1, LabelConstants.THERE_IS_NO_WORKLOG_TO_DISPLAY, null, null));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getListView(this, new MyWorkLogAdapter(this, arrayList) { // from class: com.argusoft.sewa.android.app.activity.WorkStatusActivity.1
            @Override // com.argusoft.sewa.android.app.component.MyWorkLogAdapter
            public void retryUploading(UploadFileDataBean uploadFileDataBean) {
                if (FileUploadForegroundService_.isRunning) {
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(uploadFileDataBean);
                Intent intent = new Intent(WorkStatusActivity.this.context, (Class<?>) FileUploadForegroundService_.class);
                intent.putExtra(FileUploadForegroundService.EXTRA_BEANS_LIST, new Gson().toJson(arrayList2));
                ContextCompat.startForegroundService(WorkStatusActivity.this.context, intent);
            }
        }, null));
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() == 16908332) {
            if (this.isVillageSelectionScreen) {
                navigateToHomeScreen(false);
            } else if (this.pageCounter.intValue() == 1 && this.locationBeans.size() == 1) {
                navigateToHomeScreen(false);
            } else if (this.pageCounter.intValue() == 1) {
                this.bodyLayoutContainer.removeAllViews();
                this.isVillageSelectionScreen = Boolean.TRUE.booleanValue();
                this.pageCounter = Integer.valueOf(this.pageCounter.intValue() - 1);
                addVillageSelectionSpinner();
            } else {
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.bodyLayoutContainer.removeAllViews();
                if (this.pageCounter.intValue() == 3) {
                    this.nextButton.setText(UtilBean.getMyLabel("Next"));
                }
                this.pageCounter = Integer.valueOf(this.pageCounter.intValue() - 1);
                if (this.locationId != null) {
                    addTable(Long.valueOf(r5.intValue()));
                } else {
                    addTable(null);
                }
            }
        }
        return true;
    }
}
