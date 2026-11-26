package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.argusoft.sewa.android.app.activity.AbhaNumberActivity_;
import com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_;
import com.argusoft.sewa.android.app.activity.AnnouncementActivity_;
import com.argusoft.sewa.android.app.activity.AshaFacilitatorIncentiveFlowActivity_;
import com.argusoft.sewa.android.app.activity.AssignFamilyActivity_;
import com.argusoft.sewa.android.app.activity.DailyNutritionActivity_;
import com.argusoft.sewa.android.app.activity.DataQualityActivity_;
import com.argusoft.sewa.android.app.activity.FHSActivity_;
import com.argusoft.sewa.android.app.activity.FHSAshaActivity_;
import com.argusoft.sewa.android.app.activity.FHSAwwActivity_;
import com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_;
import com.argusoft.sewa.android.app.activity.HighRiskAshaActivity_;
import com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity_;
import com.argusoft.sewa.android.app.activity.IncentivesReportActivity_;
import com.argusoft.sewa.android.app.activity.LibraryActivity_;
import com.argusoft.sewa.android.app.activity.LmsProgressReportActivity_;
import com.argusoft.sewa.android.app.activity.MobileNumberValidationActivity_;
import com.argusoft.sewa.android.app.activity.MyPeopleActivity_;
import com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_;
import com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity_;
import com.argusoft.sewa.android.app.activity.NCDRegisterFHWActivity_;
import com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity_;
import com.argusoft.sewa.android.app.activity.NPCBScreeningFhw_;
import com.argusoft.sewa.android.app.activity.NPCBScreening_;
import com.argusoft.sewa.android.app.activity.NcdRegisterAshaActivity_;
import com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity_;
import com.argusoft.sewa.android.app.activity.NotificationActivity_;
import com.argusoft.sewa.android.app.activity.NotificationAshaActivity_;
import com.argusoft.sewa.android.app.activity.NotificationAwwActivity_;
import com.argusoft.sewa.android.app.activity.OPDFacilityActivity_;
import com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity_;
import com.argusoft.sewa.android.app.activity.TakeHomeRation_;
import com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity_;
import com.argusoft.sewa.android.app.activity.WorkLogActivity_;
import com.argusoft.sewa.android.app.activity.WorkRegisterActivity_;
import com.argusoft.sewa.android.app.activity.WorkRegisterAshaActivity_;
import com.argusoft.sewa.android.app.activity.WorkStatusActivity_;
import com.argusoft.sewa.android.app.constants.MenuConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.lms.LmsCourseListActivity_;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public class MenuClickListener implements View.OnClickListener {
    private final Context context;
    private final String selectedMenu;
    private final String userRole = getUserRole();

    public String getUserRole() {
        return SewaTransformer.loginBean.getUserRole();
    }

    public MenuClickListener(Context context, String str) {
        this.context = context;
        this.selectedMenu = str;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = this.selectedMenu;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2068313934:
                if (str.equals(MenuConstants.DAILY_NUTRITION)) {
                    c = 0;
                    break;
                }
                break;
            case -2037963624:
                if (str.equals(MenuConstants.FHW_MY_PEOPLE)) {
                    c = 1;
                    break;
                }
                break;
            case -1815175358:
                if (str.equals(MenuConstants.ASHA_CHO_INCENTIVE)) {
                    c = 2;
                    break;
                }
                break;
            case -1772225241:
                if (str.equals(MenuConstants.FHW_WORK_REGISTER)) {
                    c = 3;
                    break;
                }
                break;
            case -1549113796:
                if (str.equals("ADOLESCENT_HEALTH_SCREENING")) {
                    c = 4;
                    break;
                }
                break;
            case -1512620342:
                if (str.equals(MenuConstants.LEARNING_MANAGEMENT_SYSTEM)) {
                    c = 5;
                    break;
                }
                break;
            case -1350070215:
                if (str.equals(MenuConstants.LMS_PROGRESS_REPORT)) {
                    c = 6;
                    break;
                }
                break;
            case -1182906934:
                if (str.equals(MenuConstants.FHW_ASSIGN_FAMILY)) {
                    c = 7;
                    break;
                }
                break;
            case -1150007732:
                if (str.equals(MenuConstants.FHW_VERY_HIGH_RISK_WOMEN)) {
                    c = '\b';
                    break;
                }
                break;
            case -1115812492:
                if (str.equals(MenuConstants.FHW_DATA_QUALITY)) {
                    c = '\t';
                    break;
                }
                break;
            case -1036856951:
                if (str.equals(MenuConstants.AWW_NOTIFICATION)) {
                    c = '\n';
                    break;
                }
                break;
            case -613452820:
                if (str.equals(MenuConstants.ANNOUNCEMENTS)) {
                    c = 11;
                    break;
                }
                break;
            case -550663299:
                if (str.equals(MenuConstants.ASHA_WORK_REGISTER)) {
                    c = '\f';
                    break;
                }
                break;
            case -501036344:
                if (str.equals(MenuConstants.FHW_CFHC)) {
                    c = '\r';
                    break;
                }
                break;
            case -433001195:
                if (str.equals(MenuConstants.FHW_NOTIFICATION)) {
                    c = 14;
                    break;
                }
                break;
            case -143711550:
                if (str.equals(MenuConstants.FHSR_PHONE_NUMBER_VERIFICATION)) {
                    c = 15;
                    break;
                }
                break;
            case -42577209:
                if (str.equals(MenuConstants.ASHA_NCD_REGISTER)) {
                    c = 16;
                    break;
                }
                break;
            case 13817020:
                if (str.equals(MenuConstants.HEAD_TO_TOE_SCREENING)) {
                    c = 17;
                    break;
                }
                break;
            case 91143741:
                if (str.equals("ASHA_FHS")) {
                    c = 18;
                    break;
                }
                break;
            case 130545230:
                if (str.equals("ABHA_NUMBER")) {
                    c = 19;
                    break;
                }
                break;
            case 132179315:
                if (str.equals(MenuConstants.AWW_FHS)) {
                    c = 20;
                    break;
                }
                break;
            case 188404444:
                if (str.equals(MenuConstants.ASHA_HIGH_RISK_BENEFICIARIES)) {
                    c = 21;
                    break;
                }
                break;
            case 481657055:
                if (str.equals(MenuConstants.OPD_FACILITY)) {
                    c = 22;
                    break;
                }
                break;
            case 518681462:
                if (str.equals(MenuConstants.FHW_WORK_STATUS)) {
                    c = 23;
                    break;
                }
                break;
            case 818750710:
                if (str.equals(MenuConstants.WORK_LOG)) {
                    c = 24;
                    break;
                }
                break;
            case 819416558:
                if (str.equals(MenuConstants.ASHA_MY_PEOPLE)) {
                    c = 25;
                    break;
                }
                break;
            case 824526187:
                if (str.equals(MenuConstants.TAKE_HOME_RATION)) {
                    c = 26;
                    break;
                }
                break;
            case 884191387:
                if (str.equals(MenuConstants.LIBRARY)) {
                    c = 27;
                    break;
                }
                break;
            case 1083288907:
                if (str.equals(MenuConstants.INCENTIVE)) {
                    c = 28;
                    break;
                }
                break;
            case 1108155182:
                if (str.equals(MenuConstants.FHW_MOBILE_VERIFICATION)) {
                    c = 29;
                    break;
                }
                break;
            case 1273632374:
                if (str.equals(MenuConstants.FHW_HIGH_RISK_WOMEN_AND_CHILD)) {
                    c = 30;
                    break;
                }
                break;
            case 1365292196:
                if (str.equals(MenuConstants.AWW_MY_PEOPLE)) {
                    c = 31;
                    break;
                }
                break;
            case 1418621425:
                if (str.equals(MenuConstants.NPCB_SCREENING_TITLE)) {
                    c = ' ';
                    break;
                }
                break;
            case 1469261004:
                if (str.equals(MenuConstants.ASHA_NPCB_SCREENING)) {
                    c = '!';
                    break;
                }
                break;
            case 1556747112:
                if (str.equals(MenuConstants.ASHA_CBAC_ENTRY)) {
                    c = Typography.quote;
                    break;
                }
                break;
            case 1800389084:
                if (str.equals(MenuConstants.FHW_NCD_SCREENING)) {
                    c = '#';
                    break;
                }
                break;
            case 1823161343:
                if (str.equals(MenuConstants.ASHA_NOTIFICATION)) {
                    c = Typography.dollar;
                    break;
                }
                break;
            case 1996227549:
                if (str.equals(MenuConstants.FHW_NCD_REGISTER)) {
                    c = '%';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.context.startActivity(new Intent(this.context, (Class<?>) DailyNutritionActivity_.class));
                break;
            case 1:
                this.context.startActivity(new Intent(this.context, (Class<?>) MyPeopleActivity_.class));
                break;
            case 2:
                this.context.startActivity(new Intent(this.context, (Class<?>) AshaFacilitatorIncentiveFlowActivity_.class));
                break;
            case 3:
                this.context.startActivity(new Intent(this.context, (Class<?>) WorkRegisterActivity_.class));
                break;
            case 4:
                this.context.startActivity(new Intent(this.context, (Class<?>) AdolescentEventNotificationActivity_.class));
                break;
            case 5:
                this.context.startActivity(new Intent(this.context, (Class<?>) LmsCourseListActivity_.class));
                break;
            case 6:
                this.context.startActivity(new Intent(this.context, (Class<?>) LmsProgressReportActivity_.class));
                break;
            case 7:
                this.context.startActivity(new Intent(this.context, (Class<?>) AssignFamilyActivity_.class));
                break;
            case '\b':
                this.context.startActivity(new Intent(this.context, (Class<?>) VeryHighRiskPregnancyActivity_.class));
                break;
            case '\t':
                this.context.startActivity(new Intent(this.context, (Class<?>) DataQualityActivity_.class));
                break;
            case '\n':
                this.context.startActivity(new Intent(this.context, (Class<?>) NotificationAwwActivity_.class));
                break;
            case 11:
                this.context.startActivity(new Intent(this.context, (Class<?>) AnnouncementActivity_.class));
                break;
            case '\f':
                this.context.startActivity(new Intent(this.context, (Class<?>) WorkRegisterAshaActivity_.class));
                break;
            case '\r':
                this.context.startActivity(new Intent(this.context, (Class<?>) FHSActivity_.class));
                break;
            case 14:
                this.context.startActivity(new Intent(this.context, (Class<?>) NotificationActivity_.class));
                break;
            case 15:
                this.context.startActivity(new Intent(this.context, (Class<?>) PhoneNumberVerificationActivity_.class));
                break;
            case 16:
                this.context.startActivity(new Intent(this.context, (Class<?>) NcdRegisterAshaActivity_.class));
                break;
            case 17:
                this.context.startActivity(new Intent(this.context, (Class<?>) HeadToToeScreeningActivity_.class));
                break;
            case 18:
                this.context.startActivity(new Intent(this.context, (Class<?>) FHSAshaActivity_.class));
                break;
            case 19:
                Intent intent = new Intent(this.context, (Class<?>) AbhaNumberActivity_.class);
                intent.putExtra(RelatedPropertyNameConstants.ROLE, this.userRole);
                this.context.startActivity(intent);
                break;
            case 20:
                this.context.startActivity(new Intent(this.context, (Class<?>) FHSAwwActivity_.class));
                break;
            case 21:
                this.context.startActivity(new Intent(this.context, (Class<?>) HighRiskAshaActivity_.class));
                break;
            case 22:
                this.context.startActivity(new Intent(this.context, (Class<?>) OPDFacilityActivity_.class));
                break;
            case 23:
                this.context.startActivity(new Intent(this.context, (Class<?>) WorkStatusActivity_.class));
                break;
            case 24:
                this.context.startActivity(new Intent(this.context, (Class<?>) WorkLogActivity_.class));
                break;
            case 25:
                this.context.startActivity(new Intent(this.context, (Class<?>) MyPeopleAshaActivity_.class));
                break;
            case 26:
                this.context.startActivity(new Intent(this.context, (Class<?>) TakeHomeRation_.class));
                break;
            case 27:
                this.context.startActivity(new Intent(this.context, (Class<?>) LibraryActivity_.class));
                break;
            case 28:
                this.context.startActivity(new Intent(this.context, (Class<?>) IncentivesReportActivity_.class));
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                this.context.startActivity(new Intent(this.context, (Class<?>) MobileNumberValidationActivity_.class));
                break;
            case 30:
                this.context.startActivity(new Intent(this.context, (Class<?>) HighRiskPregnancyActivity_.class));
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                this.context.startActivity(new Intent(this.context, (Class<?>) MyPeopleAwwActivity_.class));
                break;
            case ' ':
                this.context.startActivity(new Intent(this.context, (Class<?>) NPCBScreeningFhw_.class));
                break;
            case '!':
                this.context.startActivity(new Intent(this.context, (Class<?>) NPCBScreening_.class));
                break;
            case '\"':
                this.context.startActivity(new Intent(this.context, (Class<?>) NCDScreeningAshaActivity_.class));
                break;
            case '#':
                this.context.startActivity(new Intent(this.context, (Class<?>) NcdScreeningFhwActivity_.class));
                break;
            case '$':
                this.context.startActivity(new Intent(this.context, (Class<?>) NotificationAshaActivity_.class));
                break;
            case '%':
                this.context.startActivity(new Intent(this.context, (Class<?>) NCDRegisterFHWActivity_.class));
                break;
        }
    }
}
