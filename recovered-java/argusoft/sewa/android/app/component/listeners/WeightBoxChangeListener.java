package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.datepicker.MaterialDatePicker;
import com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* loaded from: classes.dex */
public class WeightBoxChangeListener implements View.OnFocusChangeListener, CompoundButton.OnCheckedChangeListener, AdapterView.OnItemSelectedListener, View.OnClickListener, MaterialPickerOnPositiveButtonClickListener<Long> {
    private Spinner comboGram;
    private Spinner comboKilo;
    private final Context context;
    private final boolean isShowDate;
    private View mainLayout;
    private final QueFormBean queFormBean;
    private TextView txtDate;
    private EditText txtKg;
    private String weightMandatoryMessage;
    private final String dateMandatoryMessage = LabelConstants.WHEN_WAS_WEIGHT_TAKEN;
    private int gm = -1;
    private int kg = -1;
    private Long date = 0L;
    private boolean isChecked = false;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public WeightBoxChangeListener(Context context, QueFormBean queFormBean, boolean z) {
        this.context = context;
        this.queFormBean = queFormBean;
        this.isShowDate = z;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.isChecked = z;
        if (this.mainLayout == null) {
            this.mainLayout = ((View) this.queFormBean.getQuestionTypeView()).findViewById(IdConstants.WEIGHT_BOX_INPUT_LAYOUT_ID);
        }
        if (this.isChecked) {
            this.mainLayout.setVisibility(8);
            resetComponent();
        } else {
            this.mainLayout.setVisibility(0);
        }
        setAnswer();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            return;
        }
        EditText editText = (EditText) view;
        this.txtKg = editText;
        try {
            try {
                this.kg = Integer.parseInt(editText.getText().toString());
            } catch (Exception unused) {
                this.kg = -1;
            }
        } finally {
            setAnswer();
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        try {
            if (adapterView.getId() == 10020) {
                this.gm = i - 1;
                this.comboGram = (Spinner) adapterView;
            } else if (adapterView.getId() == 10019) {
                this.kg = i - 1;
                this.comboKilo = (Spinner) adapterView;
            }
        } catch (Exception e) {
            this.gm = i - 1;
            Log.e(getClass().getSimpleName(), null, e);
        }
        setAnswer();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.txtDate = (TextView) view.findViewById(IdConstants.DATE_PICKER_TEXT_DATE_ID);
        MaterialDatePicker.Builder<Long> builderDatePicker = MaterialDatePicker.Builder.datePicker();
        Long l = this.date;
        if (l != null && l.longValue() != 0) {
            builderDatePicker.setSelection(this.date);
        }
        MaterialDatePicker<Long> materialDatePickerBuild = builderDatePicker.build();
        materialDatePickerBuild.addOnPositiveButtonClickListener(this);
        materialDatePickerBuild.show(((AppCompatActivity) this.context).getSupportFragmentManager(), LabelConstants.MY_DATE_PICKER);
    }

    @Override // com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener
    public void onPositiveButtonClick(Long l) {
        TextView textView = this.txtDate;
        if (textView != null) {
            textView.setText(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(l));
        }
        this.date = l;
        setAnswer();
    }

    private void setAnswer() {
        String str;
        if (this.isChecked) {
            str = "T";
        } else if (this.isShowDate) {
            if (this.date.longValue() > 0) {
                if (this.kg != -1) {
                    if (this.gm != -1) {
                        str = this.kg + GlobalTypes.DOT_SEPARATOR + this.gm + "/" + this.date;
                    } else {
                        str = this.kg + ".0/" + this.date;
                    }
                } else if (this.gm != -1) {
                    str = "0." + this.gm + "/" + this.date;
                } else {
                    String str2 = this.weightMandatoryMessage;
                    if (str2 != null) {
                        this.queFormBean.setMandatorymessage(str2);
                    }
                }
            } else {
                String mandatorymessage = this.queFormBean.getMandatorymessage();
                this.weightMandatoryMessage = mandatorymessage;
                if (mandatorymessage != null && this.kg == -1 && this.gm == -1) {
                    this.queFormBean.setMandatorymessage(mandatorymessage);
                } else {
                    this.queFormBean.setMandatorymessage(this.dateMandatoryMessage);
                }
            }
            str = null;
        } else if (this.kg != -1) {
            if (this.gm != -1) {
                str = this.kg + GlobalTypes.DOT_SEPARATOR + this.gm;
            } else {
                str = this.kg + ".0";
            }
        } else if (this.gm != -1) {
            str = "0." + this.gm;
        } else {
            str = null;
        }
        this.queFormBean.setAnswer(str);
        Log.i(getClass().getSimpleName(), this.queFormBean.getQuestion() + SimpleComparison.EQUAL_TO_OPERATION + this.queFormBean.getAnswer());
        DynamicUtils.applyFormula(this.queFormBean, true);
    }

    private void resetComponent() {
        EditText editText = this.txtKg;
        if (editText != null) {
            editText.setText("");
            this.kg = -1;
        } else {
            Spinner spinner = this.comboKilo;
            if (spinner != null) {
                try {
                    spinner.setSelection(0);
                    this.kg = -1;
                } catch (Exception e) {
                    Log.e(getClass().getSimpleName(), null, e);
                    this.kg = -1;
                }
            }
        }
        Spinner spinner2 = this.comboGram;
        if (spinner2 != null) {
            try {
                spinner2.setSelection(0);
                this.gm = -1;
            } catch (Exception e2) {
                Log.e(getClass().getSimpleName(), null, e2);
                this.gm = -1;
            }
        }
        TextView textView = this.txtDate;
        if (textView != null) {
            textView.setText(UtilBean.getMyLabel("Select date"));
            this.date = 0L;
        }
    }
}
