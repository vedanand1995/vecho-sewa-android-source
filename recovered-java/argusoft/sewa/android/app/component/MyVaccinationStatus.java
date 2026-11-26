package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import com.argusoft.sewa.android.app.constants.FullFormConstants;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class MyVaccinationStatus {
    private final Context context;
    private LinearLayout customDatePicker;
    private long dateOfTaken;
    private GivenStatus isTaken;
    private LinearLayout mainLayout;
    private String name;
    private final MyVaccination parent;
    private MaterialTextView txtDate;
    private List<ValidationTagBean> validation;
    private static final Integer RADIO_BUTTON_ID_YES = 0;
    private static final Integer RADIO_BUTTON_ID_NO = 1;

    public MyVaccinationStatus(Context context, MyVaccination myVaccination, String str, GivenStatus givenStatus, long j, List<ValidationTagBean> list) {
        this.context = context;
        this.parent = myVaccination;
        this.name = str;
        this.isTaken = givenStatus;
        this.dateOfTaken = j;
        this.validation = list;
        setLayout();
    }

    private void setLayout() {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, this.name.hashCode(), 1, new LinearLayout.LayoutParams(-1, -2));
        this.mainLayout = linearLayout;
        linearLayout.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(FullFormConstants.getFullFormOfVaccines(this.name.trim()))));
        if (this.name.trim().equals(RchConstants.VITAMIN_A)) {
            this.mainLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.IS_IT_GIVEN));
        } else {
            this.mainLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.IS_VACCINATION_GIVEN));
        }
        HashMap map = new HashMap();
        map.put(RADIO_BUTTON_ID_YES, "Yes");
        map.put(RADIO_BUTTON_ID_NO, "No");
        RadioGroup radioGroup = MyStaticComponents.getRadioGroup(this.context, map, true);
        radioGroup.setOnCheckedChangeListener(this.parent);
        this.mainLayout.addView(radioGroup);
        this.customDatePicker = MyStaticComponents.getLinearLayout(this.context, this.name.hashCode(), 1, new LinearLayout.LayoutParams(-1, -2));
        if (this.name.trim().equals(RchConstants.VITAMIN_A)) {
            this.customDatePicker.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.DATE));
        } else {
            this.customDatePicker.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.DATE_OF_VACCINATION));
        }
        LinearLayout customDatePickerForStatic = MyStaticComponents.getCustomDatePickerForStatic(this.context, this.parent, DynamicUtils.ID_OF_CUSTOM_DATE_PICKER);
        this.txtDate = (MaterialTextView) customDatePickerForStatic.findViewById(IdConstants.DATE_PICKER_TEXT_DATE_ID);
        this.customDatePicker.addView(customDatePickerForStatic);
        this.customDatePicker.setVisibility(8);
        this.mainLayout.addView(this.customDatePicker);
        setVisibility(false);
    }

    public LinearLayout getVaccinationView() {
        if (this.mainLayout == null) {
            setLayout();
        }
        return this.mainLayout;
    }

    public void setVisibility(boolean z) {
        LinearLayout linearLayout = this.mainLayout;
        if (linearLayout != null) {
            if (z) {
                linearLayout.setVisibility(0);
            } else {
                linearLayout.setVisibility(8);
            }
        }
    }

    public String isValid() {
        if (this.isTaken.equals(GivenStatus.NULL)) {
            return LabelConstants.IS_VACCINATION_GIVEN;
        }
        if (this.isTaken.equals(GivenStatus.YES) && this.dateOfTaken == 0) {
            return LabelConstants.DATE_OF_VACCINATION_REQUIRED_ALERT;
        }
        return null;
    }

    public String getAnswerString() {
        if (isValid() != null) {
            return null;
        }
        if (this.isTaken.equals(GivenStatus.YES)) {
            return this.name + "/" + this.isTaken.getValue() + "/" + this.dateOfTaken;
        }
        if (!this.isTaken.equals(GivenStatus.NO)) {
            return null;
        }
        return this.name + "/" + this.isTaken.getValue();
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public GivenStatus getIsTaken() {
        return this.isTaken;
    }

    public void setIsTaken(GivenStatus givenStatus) {
        this.isTaken = givenStatus;
    }

    public long getDateOfTaken() {
        return this.dateOfTaken;
    }

    public void setDateOfTaken(long j) {
        this.dateOfTaken = j;
        MaterialTextView materialTextView = this.txtDate;
        if (materialTextView == null || j != 0) {
            return;
        }
        materialTextView.setText(UtilBean.getMyLabel("Select date"));
    }

    public String getTxtDate() {
        MaterialTextView materialTextView = this.txtDate;
        if (materialTextView != null) {
            return materialTextView.getText().toString();
        }
        return UtilBean.getMyLabel("Select date");
    }

    public void setTextDate(String str) {
        MaterialTextView materialTextView = this.txtDate;
        if (materialTextView != null) {
            materialTextView.setText(UtilBean.getMyLabel(str));
        }
    }

    public void showDatePicker(boolean z) {
        LinearLayout linearLayout = this.customDatePicker;
        if (linearLayout != null) {
            if (z) {
                linearLayout.setVisibility(0);
            } else {
                linearLayout.setVisibility(8);
            }
        }
    }

    public List<ValidationTagBean> getValidation() {
        return this.validation;
    }

    public void setValidation(List<ValidationTagBean> list) {
        this.validation = list;
    }

    public String toString() {
        return "VaccinationStatus{name=" + this.name + ", isTaken=" + this.isTaken + ", dateOfTaken=" + this.dateOfTaken + ", validation=" + this.validation + '}';
    }

    public enum GivenStatus {
        YES('T'),
        NO('F'),
        SKIP('S'),
        NULL(' ');

        private char status;

        GivenStatus(char c) {
            this.status = c;
        }

        public char getValue() {
            return this.status;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "GivenStatus{status=" + this.status + '}';
        }
    }
}
