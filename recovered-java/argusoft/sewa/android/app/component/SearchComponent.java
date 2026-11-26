package com.argusoft.sewa.android.app.component;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.qrscanner.QRScannerActivity;
import com.argusoft.sewa.android.app.util.CommonUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.zxing.integration.android.IntentIntegrator;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class SearchComponent extends LinearLayout {
    LinearLayout buttonListLayout;
    private final Context context;
    private DateComponent dateComponent;
    private EditText editText;
    private final String hint;
    private final String label;
    private LocationComponent locationComponent;
    private final LocationMasterServiceImpl locationMasterService;
    private final LocationSelection locationSelection;
    private View.OnClickListener onDateSetListener;
    LinearLayout parentLayout;
    private LinearLayout searchBox;
    private ImageButton searchButton;
    private final SearchClick searchClick;
    private final List<String> searchTypes;
    private Long selectedLocationId;
    private String selectedType;
    private TextWatcher textWatcher;

    public interface LocationSelection {
        void onLocationSelection(String str, String str2, Long l);
    }

    public interface SearchClick {
        void onSearchClick(String str, String str2, Date date);
    }

    public SearchComponent(Context context, String str, String str2, List<String> list, SearchClick searchClick, LocationSelection locationSelection, LocationMasterServiceImpl locationMasterServiceImpl) {
        super(context);
        this.context = context;
        this.label = str;
        this.searchTypes = list;
        this.searchClick = searchClick;
        this.locationSelection = locationSelection;
        this.hint = str2;
        this.locationMasterService = locationMasterServiceImpl;
        initView();
    }

    private void initView() {
        removeAllViews();
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        String str = this.label;
        if (str != null) {
            linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, str));
        }
        LinearLayout linearLayout2 = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.search_component_layout, (ViewGroup) null);
        linearLayout.addView(linearLayout2);
        addView(linearLayout);
        ((ImageButton) linearLayout2.findViewById(R.id.abha_qr_button)).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.SearchComponent$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m575x5c691d3c(view);
            }
        });
        TextView textView = (TextView) linearLayout2.findViewById(R.id.searchType);
        textView.setText(UtilBean.getMyLabel("CLICK HERE to choose search type"));
        textView.setOnClickListener(getSearchTypeClickListener());
        this.searchBox = (LinearLayout) linearLayout2.findViewById(R.id.searchBox);
        AppCompatEditText appCompatEditText = new AppCompatEditText(this.context);
        this.editText = appCompatEditText;
        appCompatEditText.setBackground(ContextCompat.getDrawable(this.context, R.drawable.line_background_bottom));
        this.dateComponent = new DateComponent(this.context, "Select date here");
        this.locationComponent = new LocationComponent(this.context, "Select location");
        ImageButton imageButton = (ImageButton) linearLayout2.findViewById(R.id.searchButton);
        this.searchButton = imageButton;
        imageButton.setOnClickListener(getSearchButtonOnClickListener());
        List<String> list = this.searchTypes;
        if (list != null && !list.isEmpty()) {
            this.selectedType = this.searchTypes.get(0);
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
        }
        setSearchBoxAccordingToType();
    }

    /* renamed from: lambda$initView$0$com-argusoft-sewa-android-app-component-SearchComponent, reason: not valid java name */
    /* synthetic */ void m575x5c691d3c(View view) {
        IntentIntegrator intentIntegrator = new IntentIntegrator((Activity) this.context);
        intentIntegrator.setCaptureActivity(QRScannerActivity.class);
        intentIntegrator.initiateScan();
    }

    private View.OnClickListener getSearchTypeClickListener() {
        return new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.SearchComponent$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m574x217521ad(view);
            }
        };
    }

    /* renamed from: lambda$getSearchTypeClickListener$2$com-argusoft-sewa-android-app-component-SearchComponent, reason: not valid java name */
    /* synthetic */ void m574x217521ad(View view) {
        List<String> list = this.searchTypes;
        if (list != null && !list.isEmpty()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
            builder.setTitle(UtilBean.getMyLabel("Choose a type of search"));
            String[] strArr = new String[this.searchTypes.size()];
            int i = 0;
            int i2 = 0;
            for (String str : this.searchTypes) {
                strArr[i2] = SearchTypes.getFullNameForSearchType(str);
                if (str.equalsIgnoreCase(this.selectedType)) {
                    i = i2;
                }
                i2++;
            }
            builder.setSingleChoiceItems(strArr, i, new DialogInterface.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.SearchComponent$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    this.f$0.m573xfbe118ac(dialogInterface, i3);
                }
            });
            builder.create().show();
            return;
        }
        SewaUtil.generateToast(this.context, "Sorry nothing to do here");
    }

    /* renamed from: lambda$getSearchTypeClickListener$1$com-argusoft-sewa-android-app-component-SearchComponent, reason: not valid java name */
    /* synthetic */ void m573xfbe118ac(DialogInterface dialogInterface, int i) {
        this.selectedType = this.searchTypes.get(i);
        setSearchBoxAccordingToType();
        dialogInterface.dismiss();
    }

    private void setSearchBoxAccordingToType() {
        if (SearchTypes.getSearchTypeText().contains(this.selectedType)) {
            this.searchBox.removeAllViews();
            this.searchBox.addView(this.editText);
            this.editText.getText().clear();
            this.editText.setHint(UtilBean.getMyLabel(getHintInEditTextAccordingToType()));
            setKeyBoardValidationsAccordingToType();
            TextWatcher textWatcher = this.textWatcher;
            if (textWatcher != null) {
                this.editText.addTextChangedListener(textWatcher);
                return;
            }
            return;
        }
        if (SearchTypes.getSearchTypeDate().contains(this.selectedType)) {
            this.searchBox.removeAllViews();
            this.searchBox.addView(this.dateComponent);
            this.dateComponent.setHint(UtilBean.getMyLabel(getHintInEditTextAccordingToType()));
            return;
        }
        this.searchBox.removeAllViews();
        this.searchBox.addView(this.editText);
        String str = this.hint;
        if (str != null) {
            this.editText.setHint(UtilBean.getMyLabel(str));
        } else {
            this.editText.setHint(UtilBean.getMyLabel("Enter your text here"));
        }
    }

    private void setKeyBoardValidationsAccordingToType() {
        this.editText.setInputType(1);
        this.editText.setFilters(new InputFilter[0]);
        if (SearchTypes.MOBILE_NUMBER.equalsIgnoreCase(this.selectedType)) {
            this.editText.setInputType(3);
            this.editText.setFilters(new InputFilter[]{CommonUtil.getLengthInputFilter(10), CommonUtil.getOnlyNumberInputFilter()});
            return;
        }
        if ("ABHA_NUMBER".equalsIgnoreCase(this.selectedType) || SearchTypes.ABHA_ADDRESS.equalsIgnoreCase(this.selectedType)) {
            this.editText.setInputType(3);
            this.editText.setFilters(new InputFilter[]{CommonUtil.getLengthInputFilter(14), CommonUtil.getOnlyNumberInputFilter()});
            return;
        }
        if (SearchTypes.NAME.equalsIgnoreCase(this.selectedType)) {
            this.editText.setInputType(1);
            this.editText.setFilters(new InputFilter[]{CommonUtil.getAlphanumericWithSpaceInputFilter(), CommonUtil.getLengthInputFilter(50)});
            return;
        }
        if (SearchTypes.FAMILY_ID.equalsIgnoreCase(this.selectedType)) {
            this.editText.setInputType(1);
            this.editText.setFilters(new InputFilter[]{CommonUtil.getLengthInputFilter(20), CommonUtil.getFamilyIdInputFilter()});
            return;
        }
        if (SearchTypes.MEMBER_ID.equalsIgnoreCase(this.selectedType)) {
            this.editText.setInputType(1);
            this.editText.setFilters(new InputFilter[]{CommonUtil.getLengthInputFilter(20), CommonUtil.getMemberIdInputFilter()});
        } else if (SearchTypes.UWIN_ID.equalsIgnoreCase(this.selectedType)) {
            this.editText.setInputType(3);
            this.editText.setFilters(new InputFilter[]{CommonUtil.getLengthInputFilter(14), CommonUtil.getOnlyNumberInputFilter()});
        } else if (SearchTypes.AADHAAR.equalsIgnoreCase(this.selectedType)) {
            this.editText.setInputType(3);
            this.editText.setFilters(new InputFilter[]{CommonUtil.getLengthInputFilter(12), CommonUtil.getOnlyNumberInputFilter()});
        }
    }

    private String getHintInEditTextAccordingToType() {
        if (this.selectedType.equalsIgnoreCase(SearchTypes.MEMBER_ID)) {
            return "Enter member id";
        }
        if (this.selectedType.equalsIgnoreCase(SearchTypes.FAMILY_ID)) {
            return "Enter family id";
        }
        if (this.selectedType.equalsIgnoreCase(SearchTypes.MOBILE_NUMBER)) {
            return "Enter mobile number";
        }
        if (this.selectedType.equalsIgnoreCase(SearchTypes.NAME)) {
            return "Enter member name";
        }
        if (this.selectedType.equalsIgnoreCase("ABHA_NUMBER")) {
            return "Enter ABHA number";
        }
        if (this.selectedType.equalsIgnoreCase(SearchTypes.ABHA_ADDRESS)) {
            return "Enter ABHA address";
        }
        if (this.selectedType.equalsIgnoreCase(SearchTypes.DOB)) {
            return "Select date of birth";
        }
        if (this.selectedType.equalsIgnoreCase("LMP")) {
            return "Select last menstruation period date";
        }
        if (this.selectedType.equalsIgnoreCase("EDD")) {
            return "Select estimated delivery date";
        }
        if (this.selectedType.equalsIgnoreCase(SearchTypes.DELIVERY_DATE)) {
            return "Select delivery date";
        }
        if (this.selectedType.equalsIgnoreCase("LOCATION") || this.selectedType.equalsIgnoreCase(SearchTypes.LOCATION_USER)) {
            return "Select location";
        }
        if (this.selectedType.equalsIgnoreCase(SearchTypes.UWIN_ID)) {
            return "Enter uwin id";
        }
        if (this.selectedType.equalsIgnoreCase(SearchTypes.AADHAAR)) {
            return "Enter Aadhaar number";
        }
        return "Enter your text here";
    }

    private View.OnClickListener getSearchButtonOnClickListener() {
        return new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.SearchComponent$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m572xfef349d7(view);
            }
        };
    }

    /* renamed from: lambda$getSearchButtonOnClickListener$3$com-argusoft-sewa-android-app-component-SearchComponent, reason: not valid java name */
    /* synthetic */ void m572xfef349d7(View view) {
        if (this.selectedType == null || SearchTypes.getSearchTypeText().contains(this.selectedType)) {
            if (this.editText.getText().toString().isEmpty()) {
                SewaUtil.generateToast(this.context, "Please enter text to search");
                return;
            }
            if (this.searchClick != null) {
                String upperCase = this.editText.getText().toString().trim().toUpperCase(Locale.ROOT);
                Integer requiredLengthForSearchType = SearchTypes.getRequiredLengthForSearchType(this.selectedType);
                if (requiredLengthForSearchType != null && upperCase.length() != requiredLengthForSearchType.intValue()) {
                    SewaUtil.generateToast(this.context, "Please enter all " + requiredLengthForSearchType + " digits");
                    return;
                }
                if ("ABHA_NUMBER".equalsIgnoreCase(this.selectedType) && upperCase.length() == 14) {
                    upperCase = new StringBuilder(new StringBuilder(new StringBuilder(upperCase).insert(2, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(7, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(12, GlobalTypes.KEY_VALUE_SEPARATOR).toString();
                }
                this.searchClick.onSearchClick(this.selectedType, upperCase, null);
                return;
            }
            SewaUtil.generateToast(this.context, "Nothing to do here.");
            return;
        }
        if (SearchTypes.getSearchTypeDate().contains(this.selectedType)) {
            if (this.dateComponent.getSelectedDate() == null) {
                SewaUtil.generateToast(this.context, "Please select a date to search");
                return;
            }
            SearchClick searchClick = this.searchClick;
            if (searchClick != null) {
                searchClick.onSearchClick(this.selectedType, null, this.dateComponent.getSelectedDate());
                return;
            } else {
                SewaUtil.generateToast(this.context, "Nothing to do here.");
                return;
            }
        }
        SewaUtil.generateToast(this.context, "Please click the button to search");
    }

    public void hideSearchIcon() {
        this.searchButton.setVisibility(8);
    }

    public void addTextWatcherInEditText(TextWatcher textWatcher) {
        this.textWatcher = textWatcher;
        EditText editText = this.editText;
        if (editText == null || textWatcher == null) {
            return;
        }
        editText.addTextChangedListener(textWatcher);
    }

    public void addOnDateSetListener(View.OnClickListener onClickListener) {
        this.onDateSetListener = onClickListener;
    }

    public Date getSelectedDate() {
        DateComponent dateComponent = this.dateComponent;
        if (dateComponent == null) {
            return null;
        }
        return dateComponent.getSelectedDate();
    }

    public String getSelectedSearchType() {
        return this.selectedType;
    }

    public static class SearchTypes {
        public static final String AADHAAR = "AADHAAR";
        public static final String ABHA_ADDRESS = "ABHA_ADDRESS";
        public static final String ABHA_NUMBER = "ABHA_NUMBER";
        public static final String DELIVERY_DATE = "DELIVERY_DATE";
        public static final String DOB = "DOB";
        public static final String EDD = "EDD";
        public static final String FAMILY_ID = "FAMILY_ID";
        public static final String LMP = "LMP";
        public static final String LOCATION = "LOCATION";
        public static final String LOCATION_USER = "LOCATION_USER";
        public static final String MEMBER_ID = "MEMBER_ID";
        public static final String MOBILE_NUMBER = "MOBILE_NUMBER";
        public static final String NAME = "NAME";
        public static final String UWIN_ID = "UWIN_ID";
        protected static final List<String> SEARCH_TYPE_TEXT = new ArrayList();
        protected static final List<String> SEARCH_TYPE_DATE = new ArrayList();
        protected static final List<String> SEARCH_TYPE_LOCATION = new ArrayList();
        protected static final List<String> SEARCH_TYPE_BUTTON = new ArrayList();
        protected static final Map<String, String> FULL_NAMES = new HashMap();
        protected static final Map<String, Integer> ICONS = new HashMap();
        protected static final Map<String, Integer> REQUIRED_LENGTHS = new HashMap();

        private SearchTypes() {
            throw new IllegalStateException("Utility Class");
        }

        public static Integer getRequiredLengthForSearchType(String str) {
            Map<String, Integer> map = REQUIRED_LENGTHS;
            if (map.isEmpty()) {
                map.put(AADHAAR, 12);
            }
            return map.get(str);
        }

        public static String getFullNameForSearchType(String str) {
            Map<String, String> map = FULL_NAMES;
            if (map.isEmpty()) {
                map.put(MEMBER_ID, "Member ID");
                map.put(FAMILY_ID, LabelConstants.FAMILY_ID);
                map.put(MOBILE_NUMBER, LabelConstants.MOBILE_NUMBER);
                map.put(NAME, "Name");
                map.put(DOB, LabelConstants.DATE_OF_BIRTH);
                map.put("LMP", "Date of Last Menstrual Period");
                map.put("EDD", "Estimated Delivery Date");
                map.put(DELIVERY_DATE, "Delivery Date");
                map.put("ABHA_NUMBER", LabelConstants.HEALTH_ID_NUMBER);
                map.put(ABHA_ADDRESS, "ABHA Address");
                map.put("LOCATION", "Location");
                map.put(LOCATION_USER, "Location");
                map.put(UWIN_ID, "UWIN Id");
                map.put(AADHAAR, LabelConstants.AADHAAR_NUMBER);
            }
            String str2 = map.get(str);
            return str2 == null ? str : str2;
        }

        public static Integer getIconsForSearchType(String str) {
            Map<String, Integer> map = ICONS;
            if (map.isEmpty()) {
                map.put(MEMBER_ID, Integer.valueOf(R.drawable.ic_tab_member_id));
                map.put(FAMILY_ID, Integer.valueOf(R.drawable.ic_tab_family_id));
                map.put(MOBILE_NUMBER, Integer.valueOf(R.drawable.ic_tab_smartphone));
                map.put(NAME, Integer.valueOf(R.drawable.ic_tab_member_name));
                map.put(DOB, Integer.valueOf(R.drawable.ic_tab_dob));
                map.put("LMP", Integer.valueOf(R.drawable.ic_tab_lmp_date));
                map.put("EDD", Integer.valueOf(R.drawable.ic_tab_edd));
                map.put(DELIVERY_DATE, Integer.valueOf(R.drawable.ic_tab_edd));
                map.put("ABHA_NUMBER", Integer.valueOf(R.drawable.ic_tab_abha_card));
                map.put(ABHA_ADDRESS, Integer.valueOf(R.drawable.ic_tab_abha_card));
                map.put(AADHAAR, Integer.valueOf(R.drawable.menu_aadhar));
            }
            Integer num = map.get(str);
            return num == null ? Integer.valueOf(R.drawable.ic_tab_member_id) : num;
        }

        public static List<String> getSearchTypeText() {
            List<String> list = SEARCH_TYPE_TEXT;
            if (list.isEmpty()) {
                list.add(MEMBER_ID);
                list.add(FAMILY_ID);
                list.add(MOBILE_NUMBER);
                list.add("ABHA_NUMBER");
                list.add(ABHA_ADDRESS);
                list.add(NAME);
                list.add(UWIN_ID);
                list.add(AADHAAR);
            }
            return list;
        }

        public static List<String> getSearchTypeDate() {
            List<String> list = SEARCH_TYPE_DATE;
            if (list.isEmpty()) {
                list.add(DOB);
                list.add("LMP");
                list.add("EDD");
                list.add(DELIVERY_DATE);
            }
            return list;
        }

        public static List<String> getSearchTypeLocation() {
            List<String> list = SEARCH_TYPE_LOCATION;
            if (list.isEmpty()) {
                list.add("LOCATION");
                list.add(LOCATION_USER);
            }
            return list;
        }
    }

    class DateComponent extends AppCompatEditText {
        private final Calendar calendar;
        private final Context context;
        private final String hint;
        private Date selectedDate;

        public DateComponent(Context context, String str) {
            super(context);
            this.calendar = Calendar.getInstance();
            this.selectedDate = null;
            this.context = context;
            this.hint = str;
            initView();
        }

        private void initView() {
            String str = this.hint;
            if (str != null) {
                setHint(str);
            }
            setFocusable(false);
            setEnabled(true);
            setInputType(4);
            setBackground(ContextCompat.getDrawable(this.context, R.drawable.line_background_bottom));
            this.calendar.set(11, 0);
            this.calendar.set(12, 0);
            this.calendar.set(13, 0);
            this.calendar.set(14, 0);
            setOnClickListener(getDateComponentClickListener());
        }

        private View.OnClickListener getDateComponentClickListener() {
            return new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.SearchComponent$DateComponent$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m577xff65c81c(view);
                }
            };
        }

        /* renamed from: lambda$getDateComponentClickListener$1$com-argusoft-sewa-android-app-component-SearchComponent$DateComponent, reason: not valid java name */
        /* synthetic */ void m577xff65c81c(View view) {
            DatePickerDialog datePickerDialog = new DatePickerDialog(this.context, new DatePickerDialog.OnDateSetListener() { // from class: com.argusoft.sewa.android.app.component.SearchComponent$DateComponent$$ExternalSyntheticLambda0
                @Override // android.app.DatePickerDialog.OnDateSetListener
                public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                    this.f$0.m576x1c3a14db(datePicker, i, i2, i3);
                }
            }, this.calendar.get(1), this.calendar.get(2), this.calendar.get(5));
            datePickerDialog.getDatePicker().setMaxDate(new Date().getTime());
            datePickerDialog.show();
        }

        /* renamed from: lambda$getDateComponentClickListener$0$com-argusoft-sewa-android-app-component-SearchComponent$DateComponent, reason: not valid java name */
        /* synthetic */ void m576x1c3a14db(DatePicker datePicker, int i, int i2, int i3) {
            this.calendar.set(1, i);
            this.calendar.set(2, i2);
            this.calendar.set(5, i3);
            this.selectedDate = this.calendar.getTime();
            updateDate();
            if (SearchComponent.this.onDateSetListener != null) {
                SearchComponent.this.onDateSetListener.onClick(null);
            }
        }

        private void updateDate() {
            setText(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(this.calendar.getTime()));
        }

        public Date getSelectedDate() {
            return this.selectedDate;
        }

        public void clearData() {
            this.selectedDate = null;
            setText("");
            String str = this.hint;
            if (str != null) {
                setHint(str);
            }
            this.calendar.set(1, Calendar.getInstance().get(1));
            this.calendar.set(2, Calendar.getInstance().get(2));
            this.calendar.set(5, Calendar.getInstance().get(5));
        }
    }

    class LocationComponent extends AppCompatEditText {
        private final Context context;
        private final String hint;

        public LocationComponent(Context context, String str) {
            super(context);
            this.context = context;
            this.hint = str;
            initView();
        }

        private void initView() {
            String str = this.hint;
            if (str != null) {
                setHint(str);
            }
            setFocusable(false);
            setEnabled(false);
            setInputType(4);
            setBackground(ContextCompat.getDrawable(this.context, R.drawable.line_background_bottom));
        }

        public void updateLocation(String str) {
            if (str != null) {
                setText(str);
            } else {
                getText().clear();
            }
        }
    }
}
