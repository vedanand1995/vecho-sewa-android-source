package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberPregnancyStatusBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class PregnancyStatusActivity extends MenuActivity {
    private Map<Integer, Integer> ancDateTextViewIds;
    private Map<Integer, Integer> bpTextViewIds;
    private Map<Integer, Integer> calciumTabTextViewIds;
    private Map<Integer, Integer> faTabTextViewIds;
    SewaFhsServiceImpl fhsService;
    private Map<Integer, Integer> hbTextViewIds;
    private Map<Integer, Integer> ifaTabTextViewIds;
    private MemberBean memberBean;
    private MemberPregnancyStatusBean memberPregnancyStatusBean;
    private Map<Integer, Integer> regDateTextViewIds;
    private Map<Integer, Integer> urineTextViewIds;
    private Map<Integer, Integer> vaccineTextViewIds;
    private Map<Integer, Integer> weightTextViewIds;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        Long lValueOf = Long.valueOf(getIntent().getExtras() != null ? getIntent().getExtras().getLong("memberId") : -1L);
        this.memberPregnancyStatusBean = this.fhsService.retrievePregnancyStatusBeanByMemberId(lValueOf);
        this.memberBean = this.fhsService.retrieveMemberBeanByActualId(lValueOf);
        if (this.memberPregnancyStatusBean == null) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.NO_PREGNANCY_DETAILS_FOUND), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.PregnancyStatusActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PregnancyStatusActivity.this.alertDialog.dismiss();
                    PregnancyStatusActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        } else {
            initView();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.PREGNANCY_STATUS_TITLE));
    }

    public void initView() {
        setContentView(R.layout.activity_pregnancy_status);
        initMaps();
        setData();
    }

    private void initMaps() {
        HashMap map = new HashMap();
        this.regDateTextViewIds = map;
        map.put(1, Integer.valueOf(R.id.pregStatusRegDate1));
        this.regDateTextViewIds.put(2, Integer.valueOf(R.id.pregStatusRegDate2));
        this.regDateTextViewIds.put(3, Integer.valueOf(R.id.pregStatusRegDate3));
        this.regDateTextViewIds.put(4, Integer.valueOf(R.id.pregStatusRegDate4));
        this.regDateTextViewIds.put(5, Integer.valueOf(R.id.pregStatusRegDate5));
        this.regDateTextViewIds.put(6, Integer.valueOf(R.id.pregStatusRegDate6));
        this.regDateTextViewIds.put(7, Integer.valueOf(R.id.pregStatusRegDate7));
        this.regDateTextViewIds.put(8, Integer.valueOf(R.id.pregStatusRegDate8));
        this.regDateTextViewIds.put(9, Integer.valueOf(R.id.pregStatusRegDate9));
        HashMap map2 = new HashMap();
        this.ancDateTextViewIds = map2;
        map2.put(1, Integer.valueOf(R.id.pregStatusAncDate1));
        this.ancDateTextViewIds.put(2, Integer.valueOf(R.id.pregStatusAncDate2));
        this.ancDateTextViewIds.put(3, Integer.valueOf(R.id.pregStatusAncDate3));
        this.ancDateTextViewIds.put(4, Integer.valueOf(R.id.pregStatusAncDate4));
        this.ancDateTextViewIds.put(5, Integer.valueOf(R.id.pregStatusAncDate5));
        this.ancDateTextViewIds.put(6, Integer.valueOf(R.id.pregStatusAncDate6));
        this.ancDateTextViewIds.put(7, Integer.valueOf(R.id.pregStatusAncDate7));
        this.ancDateTextViewIds.put(8, Integer.valueOf(R.id.pregStatusAncDate8));
        this.ancDateTextViewIds.put(9, Integer.valueOf(R.id.pregStatusAncDate9));
        HashMap map3 = new HashMap();
        this.bpTextViewIds = map3;
        map3.put(1, Integer.valueOf(R.id.pregStatusBp1));
        this.bpTextViewIds.put(2, Integer.valueOf(R.id.pregStatusBp2));
        this.bpTextViewIds.put(3, Integer.valueOf(R.id.pregStatusBp3));
        this.bpTextViewIds.put(4, Integer.valueOf(R.id.pregStatusBp4));
        this.bpTextViewIds.put(5, Integer.valueOf(R.id.pregStatusBp5));
        this.bpTextViewIds.put(6, Integer.valueOf(R.id.pregStatusBp6));
        this.bpTextViewIds.put(7, Integer.valueOf(R.id.pregStatusBp7));
        this.bpTextViewIds.put(8, Integer.valueOf(R.id.pregStatusBp8));
        this.bpTextViewIds.put(9, Integer.valueOf(R.id.pregStatusBp9));
        HashMap map4 = new HashMap();
        this.hbTextViewIds = map4;
        map4.put(1, Integer.valueOf(R.id.pregStatusHb1));
        this.hbTextViewIds.put(2, Integer.valueOf(R.id.pregStatusHb2));
        this.hbTextViewIds.put(3, Integer.valueOf(R.id.pregStatusHb3));
        this.hbTextViewIds.put(4, Integer.valueOf(R.id.pregStatusHb4));
        this.hbTextViewIds.put(5, Integer.valueOf(R.id.pregStatusHb5));
        this.hbTextViewIds.put(6, Integer.valueOf(R.id.pregStatusHb6));
        this.hbTextViewIds.put(7, Integer.valueOf(R.id.pregStatusHb7));
        this.hbTextViewIds.put(8, Integer.valueOf(R.id.pregStatusHb8));
        this.hbTextViewIds.put(9, Integer.valueOf(R.id.pregStatusHb9));
        HashMap map5 = new HashMap();
        this.urineTextViewIds = map5;
        map5.put(1, Integer.valueOf(R.id.pregStatusUrine1));
        this.urineTextViewIds.put(2, Integer.valueOf(R.id.pregStatusUrine2));
        this.urineTextViewIds.put(3, Integer.valueOf(R.id.pregStatusUrine3));
        this.urineTextViewIds.put(4, Integer.valueOf(R.id.pregStatusUrine4));
        this.urineTextViewIds.put(5, Integer.valueOf(R.id.pregStatusUrine5));
        this.urineTextViewIds.put(6, Integer.valueOf(R.id.pregStatusUrine6));
        this.urineTextViewIds.put(7, Integer.valueOf(R.id.pregStatusUrine7));
        this.urineTextViewIds.put(8, Integer.valueOf(R.id.pregStatusUrine8));
        this.urineTextViewIds.put(9, Integer.valueOf(R.id.pregStatusUrine9));
        HashMap map6 = new HashMap();
        this.weightTextViewIds = map6;
        map6.put(1, Integer.valueOf(R.id.pregStatusWeight1));
        this.weightTextViewIds.put(2, Integer.valueOf(R.id.pregStatusWeight2));
        this.weightTextViewIds.put(3, Integer.valueOf(R.id.pregStatusWeight3));
        this.weightTextViewIds.put(4, Integer.valueOf(R.id.pregStatusWeight4));
        this.weightTextViewIds.put(5, Integer.valueOf(R.id.pregStatusWeight5));
        this.weightTextViewIds.put(6, Integer.valueOf(R.id.pregStatusWeight6));
        this.weightTextViewIds.put(7, Integer.valueOf(R.id.pregStatusWeight7));
        this.weightTextViewIds.put(8, Integer.valueOf(R.id.pregStatusWeight8));
        this.weightTextViewIds.put(9, Integer.valueOf(R.id.pregStatusWeight9));
        HashMap map7 = new HashMap();
        this.vaccineTextViewIds = map7;
        map7.put(1, Integer.valueOf(R.id.pregStatusVaccine1));
        this.vaccineTextViewIds.put(2, Integer.valueOf(R.id.pregStatusVaccine2));
        this.vaccineTextViewIds.put(3, Integer.valueOf(R.id.pregStatusVaccine3));
        this.vaccineTextViewIds.put(4, Integer.valueOf(R.id.pregStatusVaccine4));
        this.vaccineTextViewIds.put(5, Integer.valueOf(R.id.pregStatusVaccine5));
        this.vaccineTextViewIds.put(6, Integer.valueOf(R.id.pregStatusVaccine6));
        this.vaccineTextViewIds.put(7, Integer.valueOf(R.id.pregStatusVaccine7));
        this.vaccineTextViewIds.put(8, Integer.valueOf(R.id.pregStatusVaccine8));
        this.vaccineTextViewIds.put(9, Integer.valueOf(R.id.pregStatusVaccine9));
        HashMap map8 = new HashMap();
        this.faTabTextViewIds = map8;
        map8.put(1, Integer.valueOf(R.id.pregStatusFaTab1));
        this.faTabTextViewIds.put(2, Integer.valueOf(R.id.pregStatusFaTab2));
        this.faTabTextViewIds.put(3, Integer.valueOf(R.id.pregStatusFaTab3));
        HashMap map9 = new HashMap();
        this.ifaTabTextViewIds = map9;
        map9.put(4, Integer.valueOf(R.id.pregStatusIfaTab1));
        this.ifaTabTextViewIds.put(5, Integer.valueOf(R.id.pregStatusIfaTab2));
        this.ifaTabTextViewIds.put(6, Integer.valueOf(R.id.pregStatusIfaTab3));
        this.ifaTabTextViewIds.put(7, Integer.valueOf(R.id.pregStatusIfaTab4));
        this.ifaTabTextViewIds.put(8, Integer.valueOf(R.id.pregStatusIfaTab5));
        this.ifaTabTextViewIds.put(9, Integer.valueOf(R.id.pregStatusIfaTab6));
        HashMap map10 = new HashMap();
        this.calciumTabTextViewIds = map10;
        map10.put(4, Integer.valueOf(R.id.pregStatusCalciumTab1));
        this.calciumTabTextViewIds.put(5, Integer.valueOf(R.id.pregStatusCalciumTab2));
        this.calciumTabTextViewIds.put(6, Integer.valueOf(R.id.pregStatusCalciumTab3));
        this.calciumTabTextViewIds.put(7, Integer.valueOf(R.id.pregStatusCalciumTab4));
        this.calciumTabTextViewIds.put(8, Integer.valueOf(R.id.pregStatusCalciumTab5));
        this.calciumTabTextViewIds.put(9, Integer.valueOf(R.id.pregStatusCalciumTab6));
    }

    private void setData() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd\nMMM", Locale.getDefault());
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        if (this.memberPregnancyStatusBean.getRegDate() != null) {
            Integer num = this.regDateTextViewIds.get(Integer.valueOf(UtilBean.calculateMonthsBetweenDates(this.memberBean.getLmpDate(), this.memberPregnancyStatusBean.getRegDate())));
            if (num != null) {
                TextView textView = (TextView) findViewById(num.intValue());
                textView.setText(simpleDateFormat.format(this.memberPregnancyStatusBean.getRegDate()).toUpperCase());
                textView.setBackgroundColor(ContextCompat.getColor(this.context, R.color.pregnancyStatusTextSelected));
            }
        }
        if (this.memberPregnancyStatusBean.getAncDate() != null) {
            for (String str : this.memberPregnancyStatusBean.getAncDate().split(GlobalTypes.COMMA)) {
                try {
                    Date date = simpleDateFormat2.parse(str);
                    Integer num2 = this.ancDateTextViewIds.get(Integer.valueOf(UtilBean.calculateMonthsBetweenDates(this.memberBean.getLmpDate(), date)));
                    if (num2 != null) {
                        TextView textView2 = (TextView) findViewById(num2.intValue());
                        textView2.setText(simpleDateFormat.format(date).toUpperCase());
                        textView2.setBackground(ContextCompat.getDrawable(this.context, R.drawable.pregnancy_status_textview_background_green));
                    }
                } catch (ParseException e) {
                    Log.e(getClass().getName(), null, e);
                }
            }
        }
        if (this.memberPregnancyStatusBean.getBp() != null) {
            for (String str2 : this.memberPregnancyStatusBean.getBp().split(GlobalTypes.COMMA)) {
                String[] strArrSplit = str2.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                try {
                    Integer num3 = this.bpTextViewIds.get(Integer.valueOf(UtilBean.calculateMonthsBetweenDates(this.memberBean.getLmpDate(), simpleDateFormat2.parse(strArrSplit[0]))));
                    if (num3 != null) {
                        TextView textView3 = (TextView) findViewById(num3.intValue());
                        textView3.setText(strArrSplit[1] + "\nmmHg");
                        textView3.setTextColor(ContextCompat.getColor(this.context, R.color.pregnancyStatusTextSelected));
                        textView3.setBackground(ContextCompat.getDrawable(this.context, R.drawable.pregnancy_status_textview_background_white));
                    }
                } catch (ParseException e2) {
                    Log.e(getClass().getName(), null, e2);
                }
            }
        }
        if (this.memberPregnancyStatusBean.getHaemoglobin() != null) {
            for (String str3 : this.memberPregnancyStatusBean.getHaemoglobin().split(GlobalTypes.COMMA)) {
                String[] strArrSplit2 = str3.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                try {
                    Integer num4 = this.hbTextViewIds.get(Integer.valueOf(UtilBean.calculateMonthsBetweenDates(this.memberBean.getLmpDate(), simpleDateFormat2.parse(strArrSplit2[0]))));
                    if (num4 != null) {
                        TextView textView4 = (TextView) findViewById(num4.intValue());
                        textView4.setText(strArrSplit2[1] + "\ng/dl");
                        textView4.setTextColor(ContextCompat.getColor(this.context, R.color.pregnancyStatusTextSelected));
                        textView4.setBackground(ContextCompat.getDrawable(this.context, R.drawable.pregnancy_status_textview_background_white));
                    }
                } catch (ParseException e3) {
                    Log.e(getClass().getName(), null, e3);
                }
            }
        }
        if (this.memberPregnancyStatusBean.getUrineTest() != null) {
            for (String str4 : this.memberPregnancyStatusBean.getUrineTest().split(GlobalTypes.COMMA)) {
                String[] strArrSplit3 = str4.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                try {
                    Integer num5 = this.urineTextViewIds.get(Integer.valueOf(UtilBean.calculateMonthsBetweenDates(this.memberBean.getLmpDate(), simpleDateFormat2.parse(strArrSplit3[0]))));
                    if (num5 != null) {
                        TextView textView5 = (TextView) findViewById(num5.intValue());
                        textView5.setText(strArrSplit3[1]);
                        textView5.setTextColor(ContextCompat.getColor(this.context, R.color.pregnancyStatusTextSelected));
                        textView5.setBackground(ContextCompat.getDrawable(this.context, R.drawable.pregnancy_status_textview_background_white));
                    }
                } catch (ParseException e4) {
                    Log.e(getClass().getName(), null, e4);
                }
            }
        }
        if (this.memberPregnancyStatusBean.getWeight() != null) {
            for (String str5 : this.memberPregnancyStatusBean.getWeight().split(GlobalTypes.COMMA)) {
                String[] strArrSplit4 = str5.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                try {
                    Integer num6 = this.weightTextViewIds.get(Integer.valueOf(UtilBean.calculateMonthsBetweenDates(this.memberBean.getLmpDate(), simpleDateFormat2.parse(strArrSplit4[0]))));
                    if (num6 != null) {
                        TextView textView6 = (TextView) findViewById(num6.intValue());
                        textView6.setText(strArrSplit4[1] + "\nKgs");
                        textView6.setTextColor(ContextCompat.getColor(this.context, R.color.pregnancyStatusTextSelected));
                        textView6.setBackground(ContextCompat.getDrawable(this.context, R.drawable.pregnancy_status_textview_background_white));
                    }
                } catch (ParseException e5) {
                    Log.e(getClass().getName(), null, e5);
                }
            }
        }
        if (this.memberPregnancyStatusBean.getImmunisation() != null) {
            for (String str6 : this.memberPregnancyStatusBean.getImmunisation().split(GlobalTypes.COMMA)) {
                try {
                    Date date2 = simpleDateFormat2.parse(str6.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH)[0]);
                    Integer num7 = this.vaccineTextViewIds.get(Integer.valueOf(UtilBean.calculateMonthsBetweenDates(this.memberBean.getLmpDate(), date2)));
                    if (num7 != null) {
                        TextView textView7 = (TextView) findViewById(num7.intValue());
                        textView7.setText(simpleDateFormat.format(date2).toUpperCase());
                        textView7.setBackground(ContextCompat.getDrawable(this.context, R.drawable.pregnancy_status_textview_background_green));
                    }
                } catch (ParseException e6) {
                    Log.e(getClass().getName(), null, e6);
                }
            }
        }
        if (this.memberPregnancyStatusBean.getFaTablets() != null) {
            for (String str7 : this.memberPregnancyStatusBean.getFaTablets().split(GlobalTypes.COMMA)) {
                String[] strArrSplit5 = str7.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                try {
                    Integer num8 = this.faTabTextViewIds.get(Integer.valueOf(UtilBean.calculateMonthsBetweenDates(this.memberBean.getLmpDate(), simpleDateFormat2.parse(strArrSplit5[0]))));
                    if (num8 != null) {
                        ((TextView) findViewById(num8.intValue())).setText(strArrSplit5[1]);
                    }
                } catch (ParseException e7) {
                    Log.e(getClass().getName(), null, e7);
                }
            }
        }
        if (this.memberPregnancyStatusBean.getIfaTablets() != null) {
            for (String str8 : this.memberPregnancyStatusBean.getIfaTablets().split(GlobalTypes.COMMA)) {
                String[] strArrSplit6 = str8.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                try {
                    Integer num9 = this.ifaTabTextViewIds.get(Integer.valueOf(UtilBean.calculateMonthsBetweenDates(this.memberBean.getLmpDate(), simpleDateFormat2.parse(strArrSplit6[0]))));
                    if (num9 != null) {
                        ((TextView) findViewById(num9.intValue())).setText(strArrSplit6[1]);
                    }
                } catch (ParseException e8) {
                    Log.e(getClass().getName(), null, e8);
                }
            }
        }
        if (this.memberPregnancyStatusBean.getCalciumTablets() != null) {
            for (String str9 : this.memberPregnancyStatusBean.getCalciumTablets().split(GlobalTypes.COMMA)) {
                String[] strArrSplit7 = str9.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                try {
                    Integer num10 = this.calciumTabTextViewIds.get(Integer.valueOf(UtilBean.calculateMonthsBetweenDates(this.memberBean.getLmpDate(), simpleDateFormat2.parse(strArrSplit7[0]))));
                    if (num10 != null) {
                        ((TextView) findViewById(num10.intValue())).setText(strArrSplit7[1]);
                    }
                } catch (ParseException e9) {
                    Log.e(getClass().getName(), null, e9);
                }
            }
        }
    }
}
