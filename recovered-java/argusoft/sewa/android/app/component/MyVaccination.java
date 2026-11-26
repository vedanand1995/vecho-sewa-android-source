package com.argusoft.sewa.android.app.component;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import com.argusoft.sewa.android.app.activity.DynamicFormActivity;
import com.argusoft.sewa.android.app.component.MyVaccinationStatus;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class MyVaccination implements View.OnClickListener, RadioGroup.OnCheckedChangeListener, DatePickerDialog.OnDateSetListener {
    private final LinearLayout body;
    private final Context context;
    private int counter;
    private QueFormBean queFormBean;
    private int totalVaccinations;
    private final LinearLayout vaccinationView;
    private List<String> vaccinations;
    private Map<String, MyVaccinationStatus> vaccinationsDoz;

    public MyVaccination(Context context, QueFormBean queFormBean) {
        String strTrim;
        this.context = context;
        this.queFormBean = queFormBean;
        if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
            strTrim = queFormBean.getRelatedpropertyname().trim();
        } else {
            strTrim = "";
        }
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            strTrim = strTrim + queFormBean.getLoopCounter();
        }
        List<String> listFromStringBySeparator = UtilBean.getListFromStringBySeparator(SharedStructureData.relatedPropertyHashTable.get(strTrim), GlobalTypes.COMMA);
        this.vaccinations = listFromStringBySeparator;
        if (listFromStringBySeparator != null && listFromStringBySeparator.size() > 1) {
            Collections.sort(this.vaccinations, UtilBean.VACCINATION_COMPARATOR);
        }
        this.queFormBean.setAnswer(null);
        LinearLayout linearLayoutGenerateDynamicVaccinations = DynamicUtils.generateDynamicVaccinations(context);
        this.vaccinationView = linearLayoutGenerateDynamicVaccinations;
        linearLayoutGenerateDynamicVaccinations.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout = (LinearLayout) linearLayoutGenerateDynamicVaccinations.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.body = linearLayout;
        List<String> list = this.vaccinations;
        if (list != null && !list.isEmpty()) {
            queFormBean.setIsmandatory("T");
            this.totalVaccinations = this.vaccinations.size();
            this.counter = 0;
            this.vaccinationsDoz = new HashMap();
            for (String str : this.vaccinations) {
                MyVaccinationStatus myVaccinationStatus = new MyVaccinationStatus(context, this, str, MyVaccinationStatus.GivenStatus.NULL, 0L, null);
                this.body.addView(myVaccinationStatus.getVaccinationView());
                this.vaccinationsDoz.put(str, myVaccinationStatus);
            }
            MyVaccinationStatus statusByCounter = getStatusByCounter(this.counter);
            if (statusByCounter != null) {
                statusByCounter.setVisibility(true);
                return;
            }
            return;
        }
        this.totalVaccinations = 0;
        this.counter = -1;
        linearLayout.addView(MyStaticComponents.generateAnswerView(context, "No vaccines are due"));
        if (DynamicFormActivity.formEngine != null) {
            DynamicFormActivity.formEngine.setBackListener(null);
            DynamicFormActivity.formEngine.setNextListener(null);
        }
        queFormBean.setIsmandatory("F");
    }

    public void reSet(List<String> list) {
        if (list != null && list.size() > 1) {
            Collections.sort(list, UtilBean.VACCINATION_COMPARATOR);
        }
        this.vaccinations = list;
        this.queFormBean.setAnswer(null);
        this.counter = 0;
        LinearLayout linearLayout = this.body;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
            if (list != null && !list.isEmpty()) {
                this.queFormBean.setIsmandatory("T");
                this.totalVaccinations = list.size();
                this.counter = 0;
                Map<String, MyVaccinationStatus> map = this.vaccinationsDoz;
                if (map != null) {
                    map.clear();
                } else {
                    this.vaccinationsDoz = new HashMap();
                }
                for (String str : list) {
                    MyVaccinationStatus myVaccinationStatus = new MyVaccinationStatus(this.context, this, str, MyVaccinationStatus.GivenStatus.NULL, 0L, null);
                    this.body.addView(myVaccinationStatus.getVaccinationView());
                    this.vaccinationsDoz.put(str, myVaccinationStatus);
                }
                MyVaccinationStatus statusByCounter = getStatusByCounter(this.counter);
                if (statusByCounter != null) {
                    statusByCounter.setVisibility(true);
                    return;
                }
                return;
            }
            this.totalVaccinations = 0;
            this.counter = -1;
            this.body.addView(MyStaticComponents.generateAnswerView(this.context, "No vaccines are due"));
            if (DynamicFormActivity.formEngine != null) {
                DynamicFormActivity.formEngine.setBackListener(null);
                DynamicFormActivity.formEngine.setNextListener(null);
            }
            this.queFormBean.setIsmandatory("F");
        }
    }

    public void showFirst() {
        MyVaccinationStatus statusByCounter = getStatusByCounter(this.counter);
        if (statusByCounter != null) {
            statusByCounter.setVisibility(false);
            this.counter = 0;
            MyVaccinationStatus statusByCounter2 = getStatusByCounter(0);
            if (statusByCounter2 != null) {
                statusByCounter2.setVisibility(true);
            }
        }
    }

    private MyVaccinationStatus getStatusByCounter(int i) {
        Map<String, MyVaccinationStatus> map = this.vaccinationsDoz;
        if (map == null || this.vaccinations == null || map.isEmpty() || this.vaccinations.isEmpty() || i <= -1 || i >= this.totalVaccinations) {
            return null;
        }
        return this.vaccinationsDoz.get(this.vaccinations.get(i));
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        MyVaccinationStatus statusByCounter = getStatusByCounter(this.counter);
        if (statusByCounter != null) {
            if (i == 0) {
                if (DynamicFormActivity.formEngine != null) {
                    DynamicFormActivity.formEngine.setNextListener(this);
                }
                statusByCounter.setIsTaken(MyVaccinationStatus.GivenStatus.YES);
                statusByCounter.setDateOfTaken(0L);
                statusByCounter.showDatePicker(true);
            } else if (i == 1) {
                statusByCounter.setIsTaken(MyVaccinationStatus.GivenStatus.NO);
                statusByCounter.setDateOfTaken(0L);
                statusByCounter.showDatePicker(false);
                SharedStructureData.vaccineGivenDateMap.remove(statusByCounter.getName().trim());
            }
        }
        setAnswer();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DatePickerDialog datePickerDialog;
        int id = view.getId();
        MyVaccinationStatus statusByCounter = getStatusByCounter(this.counter);
        if (statusByCounter != null) {
            if (id == DynamicUtils.ID_NEXT_BUTTON) {
                int i = this.counter;
                while (true) {
                    String strIsValid = statusByCounter.isValid();
                    if (strIsValid == null) {
                        if (this.counter < this.totalVaccinations - 1) {
                            if (DynamicFormActivity.formEngine != null) {
                                DynamicFormActivity.formEngine.setBackListener(this);
                            }
                            int i2 = this.counter + 1;
                            this.counter = i2;
                            MyVaccinationStatus statusByCounter2 = getStatusByCounter(i2);
                            if (statusByCounter2 != null) {
                                if (!statusByCounter2.getIsTaken().equals(MyVaccinationStatus.GivenStatus.SKIP)) {
                                    statusByCounter.setVisibility(false);
                                    statusByCounter2.setVisibility(true);
                                    break;
                                }
                            } else {
                                break;
                            }
                        } else {
                            this.counter = i;
                            if (DynamicFormActivity.formEngine != null) {
                                DynamicFormActivity.formEngine.setNextListener(null);
                            }
                        }
                    } else {
                        SewaUtil.generateToast(this.context, strIsValid);
                        break;
                    }
                }
                setAnswer();
                return;
            }
            if (id != 15004) {
                if (id == 2152) {
                    if (statusByCounter.getTxtDate() != null) {
                        String[] strArrSplit = UtilBean.split(statusByCounter.getTxtDate().trim(), "/");
                        if (strArrSplit.length == 3) {
                            datePickerDialog = new DatePickerDialog(this.context, this, Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[1]) - 1, Integer.parseInt(strArrSplit[0]));
                        } else {
                            Calendar calendar = Calendar.getInstance();
                            datePickerDialog = new DatePickerDialog(this.context, this, calendar.get(1), calendar.get(2), calendar.get(5));
                        }
                    } else {
                        Calendar calendar2 = Calendar.getInstance();
                        datePickerDialog = new DatePickerDialog(this.context, this, calendar2.get(1), calendar2.get(2), calendar2.get(5));
                    }
                    datePickerDialog.show();
                    return;
                }
                return;
            }
            while (this.counter > 0) {
                if (DynamicFormActivity.formEngine != null) {
                    DynamicFormActivity.formEngine.setNextListener(this);
                }
                int i3 = this.counter - 1;
                this.counter = i3;
                if (i3 == 0 && DynamicFormActivity.formEngine != null) {
                    DynamicFormActivity.formEngine.setBackListener(null);
                }
                MyVaccinationStatus statusByCounter3 = getStatusByCounter(this.counter);
                if (statusByCounter3 == null || !statusByCounter3.getIsTaken().equals(MyVaccinationStatus.GivenStatus.SKIP)) {
                    statusByCounter.setVisibility(false);
                    if (statusByCounter3 != null) {
                        statusByCounter3.setVisibility(true);
                    }
                    setAnswer();
                    return;
                }
            }
            if (DynamicFormActivity.formEngine != null) {
                DynamicFormActivity.formEngine.setBackListener(null);
            }
            setAnswer();
            return;
        }
        if (DynamicFormActivity.formEngine != null) {
            DynamicFormActivity.formEngine.setBackListener(null);
            DynamicFormActivity.formEngine.setNextListener(null);
        }
    }

    public int getTotalVaccinations() {
        return this.totalVaccinations;
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
        MyVaccinationStatus statusByCounter = getStatusByCounter(this.counter);
        if (statusByCounter != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(i, i2, i3);
            UtilBean.clearTimeFromDate(calendar);
            statusByCounter.setDateOfTaken(calendar.getTimeInMillis());
            int loopCounter = !this.queFormBean.isIgnoreLoop() ? this.queFormBean.getLoopCounter() : 0;
            SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this.context).edit();
            editorEdit.putString("currentVaccine", statusByCounter.getName());
            editorEdit.apply();
            String strCheckValidation = DynamicUtils.checkValidation(String.valueOf(statusByCounter.getDateOfTaken()), loopCounter, this.queFormBean.getValidations());
            if (strCheckValidation != null) {
                statusByCounter.setDateOfTaken(0L);
                SewaUtil.generateToast(this.context, strCheckValidation);
                if (DynamicFormActivity.formEngine != null) {
                    DynamicFormActivity.formEngine.setNextListener(this);
                }
            } else {
                SharedStructureData.vaccineGivenDateMap.put(statusByCounter.getName().trim(), calendar.getTime());
                statusByCounter.setTextDate(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(calendar.getTime()));
            }
            setAnswer();
        }
    }

    public LinearLayout getVaccinationView() {
        return this.vaccinationView;
    }

    private void setAnswer() {
        boolean z;
        String str;
        Map map;
        List<String> list;
        StringBuilder sb = new StringBuilder();
        Map<String, MyVaccinationStatus> map2 = this.vaccinationsDoz;
        if (map2 == null || map2.isEmpty() || (list = this.vaccinations) == null || list.isEmpty()) {
            z = true;
        } else {
            Iterator<String> it = this.vaccinations.iterator();
            while (it.hasNext()) {
                MyVaccinationStatus myVaccinationStatus = this.vaccinationsDoz.get(it.next());
                if (myVaccinationStatus == null || myVaccinationStatus.isValid() != null) {
                    z = false;
                    break;
                } else if (myVaccinationStatus.getAnswerString() != null) {
                    sb.append(myVaccinationStatus.getAnswerString());
                    sb.append(GlobalTypes.KEY_VALUE_SEPARATOR);
                }
            }
            z = true;
        }
        if (z) {
            this.queFormBean.setAnswer(sb.toString());
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
            if (this.queFormBean.getLoopCounter() == 0) {
                str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.UNIQUE_HEALTH_ID_CHILD);
            } else {
                str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.UNIQUE_HEALTH_ID_CHILD + this.queFormBean.getLoopCounter());
            }
            if (str != null) {
                Gson gson = new Gson();
                String string = defaultSharedPreferences.getString("vaccinationMapWithUniqueHealthId", null);
                if (string != null) {
                    map = (Map) gson.fromJson(string, new TypeToken<HashMap<String, String>>() { // from class: com.argusoft.sewa.android.app.component.MyVaccination.1
                    }.getType());
                } else {
                    map = new HashMap();
                }
                map.put(str, sb.toString());
                editorEdit.putString("vaccinationMapWithUniqueHealthId", gson.toJson(map));
            } else {
                editorEdit.putString("vaccinationGiven", sb.toString());
            }
            editorEdit.apply();
            for (int i = this.counter + 1; i < this.totalVaccinations; i++) {
                MyVaccinationStatus statusByCounter = getStatusByCounter(i);
                if (statusByCounter != null && !statusByCounter.getIsTaken().equals(MyVaccinationStatus.GivenStatus.SKIP)) {
                    z = false;
                }
            }
            if (z) {
                if (DynamicFormActivity.formEngine != null) {
                    DynamicFormActivity.formEngine.setNextListener(null);
                    return;
                }
                return;
            } else {
                if (DynamicFormActivity.formEngine != null) {
                    DynamicFormActivity.formEngine.setNextListener(this);
                    return;
                }
                return;
            }
        }
        this.queFormBean.setAnswer(null);
        if (DynamicFormActivity.formEngine != null) {
            DynamicFormActivity.formEngine.setNextListener(this);
        }
    }
}
