package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Spinner;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class VisionComponentListener implements AdapterView.OnItemSelectedListener, View.OnFocusChangeListener, TextWatcher {
    private final EditText axisEditText;
    private final Context context;
    private final Spinner cylSignSpinner;
    private final Spinner cylValuesSpinner;
    private final QueFormBean queFormBean;
    private final Spinner sphSignSpinner;
    private final Spinner sphValuesSpinner;
    private final Spinner visionSpinner;
    private boolean isSphValid = false;
    private boolean isCylValid = false;
    private boolean isAxisValid = false;
    private boolean isVisionValid = false;
    private boolean validateOnFocusLost = true;

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public VisionComponentListener(Context context, QueFormBean queFormBean, Spinner spinner, Spinner spinner2, Spinner spinner3, Spinner spinner4, EditText editText, Spinner spinner5) throws JSONException, NumberFormatException {
        this.context = context;
        this.queFormBean = queFormBean;
        this.sphSignSpinner = spinner;
        this.sphValuesSpinner = spinner2;
        this.cylSignSpinner = spinner3;
        this.cylValuesSpinner = spinner4;
        this.axisEditText = editText;
        this.visionSpinner = spinner5;
        setupListeners();
        prefillData();
        validateAll();
    }

    private void prefillData() throws JSONException {
        if (this.queFormBean.getAnswer() == null || this.queFormBean.getAnswer().toString().isEmpty()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.queFormBean.getAnswer().toString());
            String str = "+ve";
            if (jSONObject.has("sph")) {
                String string = jSONObject.getString("sph");
                if (string.length() >= 2) {
                    String str2 = string.substring(0, 1).equals(GlobalTypes.ADD_SEPARATOR) ? "+ve" : "-ve";
                    String strSubstring = string.substring(1);
                    setSpinnerSelection(this.sphSignSpinner, str2);
                    setSpinnerSelection(this.sphValuesSpinner, strSubstring);
                }
            }
            if (jSONObject.has("cyl")) {
                String string2 = jSONObject.getString("cyl");
                if (string2.length() >= 2) {
                    if (!string2.substring(0, 1).equals(GlobalTypes.ADD_SEPARATOR)) {
                        str = "-ve";
                    }
                    String strSubstring2 = string2.substring(1);
                    setSpinnerSelection(this.cylSignSpinner, str);
                    setSpinnerSelection(this.cylValuesSpinner, strSubstring2);
                }
            }
            if (jSONObject.has("axis")) {
                this.axisEditText.setText(String.valueOf(jSONObject.getInt("axis")));
            }
            if (jSONObject.has("vision")) {
                setSpinnerSelection(this.visionSpinner, jSONObject.getString("vision"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setSpinnerSelection(Spinner spinner, String str) {
        for (int i = 0; i < spinner.getCount(); i++) {
            if (spinner.getItemAtPosition(i).toString().equals(str)) {
                spinner.setSelection(i);
                return;
            }
        }
    }

    private void setupListeners() {
        this.sphSignSpinner.setOnItemSelectedListener(this);
        this.sphValuesSpinner.setOnItemSelectedListener(this);
        this.cylSignSpinner.setOnItemSelectedListener(this);
        this.cylValuesSpinner.setOnItemSelectedListener(this);
        this.axisEditText.setOnFocusChangeListener(this);
        this.axisEditText.addTextChangedListener(this);
        this.visionSpinner.setOnItemSelectedListener(this);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) throws JSONException {
        if (adapterView == this.sphSignSpinner || adapterView == this.sphValuesSpinner) {
            validateSph();
        } else if (adapterView == this.cylSignSpinner || adapterView == this.cylValuesSpinner) {
            validateCyl();
        } else if (adapterView == this.visionSpinner) {
            validateVision();
        }
        setAnswer();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) throws JSONException, NumberFormatException {
        if (view != this.axisEditText || z) {
            return;
        }
        validateAxis();
        setAnswer();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) throws JSONException, NumberFormatException {
        if (this.validateOnFocusLost) {
            return;
        }
        validateAxis();
        setAnswer();
    }

    private void validateSph() {
        this.isSphValid = this.sphSignSpinner.getSelectedItemPosition() > 0 && this.sphValuesSpinner.getSelectedItemPosition() > 0;
    }

    private void validateCyl() {
        this.isCylValid = this.cylSignSpinner.getSelectedItemPosition() > 0 && this.cylValuesSpinner.getSelectedItemPosition() > 0;
    }

    private void validateAxis() throws NumberFormatException {
        try {
            String strTrim = this.axisEditText.getText().toString().trim();
            if (!strTrim.isEmpty()) {
                int i = Integer.parseInt(strTrim);
                this.isAxisValid = i >= 0 && i <= 180;
            } else {
                this.isAxisValid = false;
            }
        } catch (NumberFormatException unused) {
            this.isAxisValid = false;
        }
    }

    private void validateVision() {
        this.isVisionValid = this.visionSpinner.getSelectedItemPosition() > 0;
    }

    public void validateAll() throws JSONException, NumberFormatException {
        this.validateOnFocusLost = false;
        validateSph();
        validateCyl();
        validateAxis();
        validateVision();
        setAnswer();
        this.validateOnFocusLost = true;
    }

    private void setAnswer() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            boolean z = this.isSphValid;
            String str = GlobalTypes.ADD_SEPARATOR;
            if (z) {
                String str2 = this.sphSignSpinner.getSelectedItem().toString().equals("+ve") ? GlobalTypes.ADD_SEPARATOR : GlobalTypes.KEY_VALUE_SEPARATOR;
                jSONObject.put("sph", str2 + this.sphValuesSpinner.getSelectedItem().toString());
            }
            if (this.isCylValid) {
                if (!this.cylSignSpinner.getSelectedItem().toString().equals("+ve")) {
                    str = GlobalTypes.KEY_VALUE_SEPARATOR;
                }
                jSONObject.put("cyl", str + this.cylValuesSpinner.getSelectedItem().toString());
            }
            if (this.isAxisValid) {
                jSONObject.put("axis", Integer.parseInt(this.axisEditText.getText().toString()));
            }
            if (this.isVisionValid) {
                jSONObject.put("vision", this.visionSpinner.getSelectedItem().toString());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if (this.isSphValid && this.isCylValid && this.isAxisValid && this.isVisionValid) {
            this.queFormBean.setAnswer(jSONObject.length() > 0 ? jSONObject.toString() : null);
            this.queFormBean.setMandatorymessage(null);
        } else {
            this.queFormBean.setAnswer(null);
            StringBuilder sb = new StringBuilder();
            if (!this.isSphValid) {
                sb.append("SPH, ");
            }
            if (!this.isCylValid) {
                sb.append("CYL, ");
            }
            if (!this.isAxisValid) {
                sb.append("AXIS, ");
            }
            if (!this.isVisionValid) {
                sb.append("VISION, ");
            }
            if (sb.length() > 0) {
                sb.setLength(sb.length() - 2);
                this.queFormBean.setMandatorymessage("Please enter missing value for: " + sb.toString());
            }
        }
        DynamicUtils.applyFormula(this.queFormBean, true);
    }
}
