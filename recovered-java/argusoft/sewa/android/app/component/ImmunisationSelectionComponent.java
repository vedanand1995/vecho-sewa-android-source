package com.argusoft.sewa.android.app.component;

import android.app.DatePickerDialog;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.DatePicker;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.FullFormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class ImmunisationSelectionComponent extends LinearLayout {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String EXCLUDE_VITAMIN_A_IMMUNISATION = "excludeVitaminA";
    private static final String ONLY_VITAMIN_A_IMMUNISATION = "onlyVitaminA";
    private static final String SHOW_ALL_IMMUNISATION = "showAll";
    private Map<String, Date> allImmDateMap;
    private final Context context;
    private Date currentDate;
    private Date dob;
    private List<String> dueImmunisations;
    private String givenImmunisations;
    private Map<String, MaterialCheckBox> immDateCheckBoxMap;
    private Map<String, MaterialTextView> immDateTextViewMap;
    private Map<String, Date> newImmDateMap;
    private final QueFormBean queFormBean;
    private String type;

    public ImmunisationSelectionComponent(Context context, QueFormBean queFormBean) {
        super(context);
        this.type = SHOW_ALL_IMMUNISATION;
        this.currentDate = new Date();
        this.context = context;
        this.queFormBean = queFormBean;
        setBasicDataForImmunisations();
        setMainLayout();
    }

    public ImmunisationSelectionComponent(Context context, Date date, Map<String, Date> map, Date date2) {
        super(context);
        this.type = SHOW_ALL_IMMUNISATION;
        new Date();
        this.context = context;
        this.queFormBean = null;
        this.dob = date;
        this.allImmDateMap = map;
        this.currentDate = date2;
        setMainLayout();
    }

    public void resetComponent() {
        removeAllViews();
        setBasicDataForImmunisations();
        setMainLayout();
    }

    private void setBasicDataForImmunisations() {
        String str;
        String str2;
        this.allImmDateMap = new HashMap();
        this.currentDate = new Date();
        String datamap = this.queFormBean.getDatamap();
        if (datamap == null || datamap.isEmpty()) {
            return;
        }
        String[] strArrSplit = datamap.split(GlobalTypes.KEY_VALUE_SEPARATOR);
        if (strArrSplit.length > 0 && (str2 = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[0])) != null) {
            this.dob = new Date(Long.parseLong(str2));
        }
        if (strArrSplit.length > 1) {
            String str3 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(strArrSplit[1], this.queFormBean.getLoopCounter()));
            this.givenImmunisations = str3;
            if (str3 != null) {
                this.allImmDateMap = UtilBean.getImmunisationDateMap(str3);
            }
        }
        if (this.allImmDateMap == null) {
            this.allImmDateMap = new HashMap();
        }
        SharedStructureData.vaccineGivenDateMap = this.allImmDateMap;
        if (strArrSplit.length > 2 && (str = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[2])) != null) {
            this.currentDate = new Date(Long.parseLong(str));
        }
        if (strArrSplit.length > 3) {
            this.type = strArrSplit[3];
        }
    }

    private void setMainLayout() {
        this.newImmDateMap = new HashMap();
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        String str = "No vaccines due";
        if (this.dob == null) {
            linearLayout.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMyLabel("No vaccines due")));
            addView(linearLayout);
            return;
        }
        this.dueImmunisations = new ArrayList(SharedStructureData.immunisationService.getDueImmunisationsForChild(this.dob, this.givenImmunisations, new Date(), SharedStructureData.getVaccineGivenDateMap(Integer.valueOf(this.queFormBean.getLoopCounter()))));
        if (EXCLUDE_VITAMIN_A_IMMUNISATION.equalsIgnoreCase(this.type)) {
            this.dueImmunisations.removeAll(vitaminAVaccines());
        } else if (ONLY_VITAMIN_A_IMMUNISATION.equalsIgnoreCase(this.type)) {
            this.dueImmunisations.retainAll(vitaminAVaccines());
            str = "No Vitamin A doses due";
        }
        List<String> list = this.dueImmunisations;
        if (list != null && !list.isEmpty()) {
            linearLayout.addView(getHeaderLayout());
            linearLayout.addView(getBodyLayout());
        } else {
            linearLayout.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMyLabel(str)));
        }
        addView(linearLayout);
    }

    private LinearLayout getHeaderLayout() {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setWeightSum(10.0f);
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(this.context, -1, 0, new LinearLayout.LayoutParams(0, -2, 4.0f));
        linearLayout2.setGravity(17);
        linearLayout2.addView(MyStaticComponents.getListTitleView(this.context, UtilBean.getMyLabel("Vaccine")));
        linearLayout.addView(linearLayout2);
        LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(this.context, -1, 0, new LinearLayout.LayoutParams(0, -2, 6.0f));
        linearLayout3.setGravity(17);
        linearLayout3.addView(MyStaticComponents.getListTitleView(this.context, UtilBean.getMyLabel(LabelConstants.DATE)));
        linearLayout.addView(linearLayout3);
        return linearLayout;
    }

    private LinearLayout getBodyLayout() {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        getImmunisationSelectionLayout(linearLayout);
        return linearLayout;
    }

    private void getImmunisationSelectionLayout(LinearLayout linearLayout) {
        List<String> list = this.dueImmunisations;
        if (list == null || list.isEmpty()) {
            SewaUtil.generateToast(this.context, "No more vaccines due");
            return;
        }
        this.immDateTextViewMap = new HashMap();
        this.immDateCheckBoxMap = new HashMap();
        for (String str : this.dueImmunisations) {
            LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(this.context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
            linearLayout2.setWeightSum(10.0f);
            if ("0".equals(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.IS_OUT_OFF_SESSION))) {
                linearLayout2.addView(getVaccineCheckBox(str));
            } else {
                linearLayout2.addView(getVaccineNameView(str));
                linearLayout2.addView(getVaccineDateView(str));
            }
            linearLayout.addView(linearLayout2);
        }
    }

    private LinearLayout getVaccineCheckBox(final String str) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 0, new LinearLayout.LayoutParams(0, -2, 6.0f));
        final MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, UtilBean.getMyLabel(FullFormConstants.getFullFormOfVaccines(str)), -1, false);
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.component.ImmunisationSelectionComponent$$ExternalSyntheticLambda3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m562x9450a0e6(str, checkBox, compoundButton, z);
            }
        });
        this.immDateCheckBoxMap.put(str, checkBox);
        linearLayout.addView(checkBox);
        return linearLayout;
    }

    /* renamed from: lambda$getVaccineCheckBox$0$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent, reason: not valid java name */
    /* synthetic */ void m562x9450a0e6(String str, MaterialCheckBox materialCheckBox, CompoundButton compoundButton, boolean z) {
        if (z) {
            Calendar calendar = Calendar.getInstance();
            String strCheckImmunisationStockAvailable = "0".equals(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.IS_OUT_OFF_SESSION)) ? SharedStructureData.routineImmunisationService.checkImmunisationStockAvailable(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SESSION_ID), str) : null;
            if (strCheckImmunisationStockAvailable == null) {
                strCheckImmunisationStockAvailable = SharedStructureData.immunisationService.vaccinationValidationForChild(this.dob, calendar.getTime(), str, SharedStructureData.getVaccineGivenDateMap(Integer.valueOf(this.queFormBean.getLoopCounter())));
            }
            if (strCheckImmunisationStockAvailable != null) {
                SharedStructureData.getVaccineGivenDateMap(Integer.valueOf(this.queFormBean.getLoopCounter())).remove(str);
                this.newImmDateMap.remove(str);
                materialCheckBox.setChecked(false);
                SewaUtil.generateToast(this.context, UtilBean.getMyLabel(strCheckImmunisationStockAvailable));
            } else {
                SharedStructureData.getVaccineGivenDateMap(Integer.valueOf(this.queFormBean.getLoopCounter())).put(str, calendar.getTime());
                this.newImmDateMap.put(str, calendar.getTime());
                SharedStructureData.routineImmunisationService.addImmunisationToInventory(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SESSION_ID), str);
            }
        } else {
            SharedStructureData.getVaccineGivenDateMap(Integer.valueOf(this.queFormBean.getLoopCounter())).remove(str);
            this.newImmDateMap.remove(str);
            SharedStructureData.routineImmunisationService.removeImmunisationFromInventory(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SESSION_ID), str);
        }
        setAnswer(str);
    }

    private LinearLayout getVaccineNameView(String str) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 0, new LinearLayout.LayoutParams(0, -1, 4.0f));
        linearLayout.setGravity(17);
        MaterialTextView materialTextViewGenerateLabelView = MyStaticComponents.generateLabelView(this.context, UtilBean.getMyLabel(FullFormConstants.getFullFormOfVaccines(str)));
        materialTextViewGenerateLabelView.setTextAlignment(4);
        materialTextViewGenerateLabelView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(materialTextViewGenerateLabelView);
        return linearLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00f2 A[Catch: ParseException -> 0x00ee, TRY_LEAVE, TryCatch #1 {ParseException -> 0x00ee, blocks: (B:7:0x0081, B:9:0x0089, B:11:0x0097, B:13:0x00a2, B:15:0x00a8, B:17:0x00b3, B:18:0x00c6, B:19:0x00d9, B:23:0x00f2), top: B:55:0x0081 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.widget.LinearLayout getVaccineDateView(java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.component.ImmunisationSelectionComponent.getVaccineDateView(java.lang.String):android.widget.LinearLayout");
    }

    private LinearLayout getDateSelectorLayout(String str) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 0, null);
        linearLayout.setGravity(16);
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, "Select date");
        materialTextViewGenerateAnswerView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 200.0f));
        linearLayout.addView(materialTextViewGenerateAnswerView);
        this.immDateTextViewMap.put(str, materialTextViewGenerateAnswerView);
        ImageView imageView = MyStaticComponents.getImageView(this.context, 2, R.drawable.ic_calender, null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        layoutParams.setMargins(0, 10, 0, 10);
        imageView.setLayoutParams(layoutParams);
        linearLayout.addView(imageView);
        ImageView imageView2 = MyStaticComponents.getImageView(this.context, 2, R.drawable.cross, null);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        layoutParams2.setMargins(10, 10, 10, 10);
        imageView2.setLayoutParams(layoutParams2);
        linearLayout.addView(imageView2);
        imageView2.setVisibility(8);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            linearLayout.setBackground(ContextCompat.getDrawable(this.context, R.drawable.training_custom_datepicker));
        } else {
            linearLayout.setBackground(ContextCompat.getDrawable(this.context, R.drawable.custom_datepicker));
        }
        linearLayout.setOnClickListener(getDateSelectorClickListener(str, materialTextViewGenerateAnswerView, imageView2));
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        return linearLayout;
    }

    private View.OnClickListener getDateSelectorClickListener(String str, final MaterialTextView materialTextView, ImageView imageView) {
        final DatePickerDialog.OnDateSetListener dateSetListener = getDateSetListener(str, materialTextView, imageView);
        return new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.ImmunisationSelectionComponent$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m559x28b2092e(materialTextView, dateSetListener, view);
            }
        };
    }

    /* renamed from: lambda$getDateSelectorClickListener$1$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent, reason: not valid java name */
    /* synthetic */ void m559x28b2092e(MaterialTextView materialTextView, DatePickerDialog.OnDateSetListener onDateSetListener, View view) {
        DatePickerDialog datePickerDialog;
        if (materialTextView.getText() != null) {
            String[] strArrSplit = UtilBean.split(materialTextView.getText().toString(), "/");
            if (strArrSplit.length == 3) {
                datePickerDialog = new DatePickerDialog(this.context, onDateSetListener, Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[1]) - 1, Integer.parseInt(strArrSplit[0]));
            } else {
                Calendar calendar = Calendar.getInstance();
                datePickerDialog = new DatePickerDialog(this.context, onDateSetListener, calendar.get(1), calendar.get(2), calendar.get(5));
            }
        } else {
            Calendar calendar2 = Calendar.getInstance();
            datePickerDialog = new DatePickerDialog(this.context, onDateSetListener, calendar2.get(1), calendar2.get(2), calendar2.get(5));
        }
        Calendar calendar3 = Calendar.getInstance();
        calendar3.set(10, 0);
        calendar3.set(12, 0);
        calendar3.set(13, 0);
        calendar3.set(14, 0);
        if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase("Asha")) {
            calendar3.add(5, -1);
        }
        datePickerDialog.getDatePicker().setMaxDate(calendar3.getTimeInMillis());
        datePickerDialog.show();
    }

    private DatePickerDialog.OnDateSetListener getDateSetListener(final String str, final MaterialTextView materialTextView, final ImageView imageView) {
        return new DatePickerDialog.OnDateSetListener() { // from class: com.argusoft.sewa.android.app.component.ImmunisationSelectionComponent$$ExternalSyntheticLambda0
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                this.f$0.m561x6cab6953(str, materialTextView, imageView, datePicker, i, i2, i3);
            }
        };
    }

    /* renamed from: lambda$getDateSetListener$3$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent, reason: not valid java name */
    /* synthetic */ void m561x6cab6953(final String str, final MaterialTextView materialTextView, final ImageView imageView, DatePicker datePicker, int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(i, i2, i3, 0, 0, 0);
        String strVaccinationValidationForChild = SharedStructureData.immunisationService.vaccinationValidationForChild(this.dob, calendar.getTime(), str, this.allImmDateMap);
        if (strVaccinationValidationForChild != null) {
            materialTextView.setText(UtilBean.getMyLabel("Select date"));
            this.allImmDateMap.remove(str);
            this.newImmDateMap.remove(str);
            imageView.setVisibility(8);
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(strVaccinationValidationForChild));
        } else {
            this.allImmDateMap.put(str, calendar.getTime());
            this.newImmDateMap.put(str, calendar.getTime());
            materialTextView.setText(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(calendar.getTime()));
            imageView.setVisibility(0);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.ImmunisationSelectionComponent$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m560xea60b474(materialTextView, str, imageView, view);
                }
            });
        }
        setAnswer(str);
    }

    /* renamed from: lambda$getDateSetListener$2$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent, reason: not valid java name */
    /* synthetic */ void m560xea60b474(MaterialTextView materialTextView, String str, ImageView imageView, View view) {
        materialTextView.setText(UtilBean.getMyLabel("Select date"));
        this.allImmDateMap.remove(str);
        this.newImmDateMap.remove(str);
        imageView.setVisibility(8);
    }

    private void setAnswer(String str) {
        for (String str2 : this.dueImmunisations) {
            Date date = this.newImmDateMap.get(str2);
            if (date != null && SharedStructureData.immunisationService.vaccinationValidationForChild(this.dob, date, str2, this.allImmDateMap) != null) {
                SewaUtil.generateToast(this.context, "Selected date for " + FullFormConstants.getFullFormOfVaccines(str2) + " has been removed because it was dependent on " + FullFormConstants.getFullFormOfVaccines(str));
                MaterialTextView materialTextView = this.immDateTextViewMap.get(str2);
                if (materialTextView != null) {
                    materialTextView.setText(UtilBean.getMyLabel("Select date"));
                }
                MaterialCheckBox materialCheckBox = this.immDateCheckBoxMap.get(str2);
                if (materialCheckBox != null) {
                    materialCheckBox.setChecked(false);
                }
                this.allImmDateMap.remove(str2);
                this.newImmDateMap.remove(str2);
            }
        }
        if (this.queFormBean != null) {
            SharedStructureData.vaccineGivenDateMap = this.allImmDateMap;
            if (this.newImmDateMap.isEmpty()) {
                this.queFormBean.setAnswer(null);
            } else {
                HashMap map = new HashMap();
                for (Map.Entry<String, Date> entry : this.newImmDateMap.entrySet()) {
                    map.put(entry.getKey(), String.valueOf(entry.getValue().getTime()));
                }
                this.queFormBean.setAnswer(new Gson().toJson(map));
            }
            Log.i(getClass().getSimpleName(), "Immunisation Component Answer : " + this.queFormBean.getAnswer());
        }
    }

    public Map<String, Date> getAnswer() {
        return this.newImmDateMap;
    }

    private List<String> vitaminAVaccines() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(RchConstants.VITAMIN_A);
        return arrayList;
    }
}
