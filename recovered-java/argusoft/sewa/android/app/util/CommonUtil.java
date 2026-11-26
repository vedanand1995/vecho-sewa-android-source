package com.argusoft.sewa.android.app.util;

import android.text.InputFilter;
import android.text.Spanned;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class CommonUtil {
    public static final Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", 2);

    private CommonUtil() {
        throw new IllegalStateException("Utility Class");
    }

    public static boolean isEmailValid(String str) {
        return VALID_EMAIL_ADDRESS_REGEX.matcher(str).matches();
    }

    public static InputFilter getLengthInputFilter(int i) {
        return new InputFilter.LengthFilter(i);
    }

    public static InputFilter getOnlyNumberInputFilter() {
        return new InputFilter() { // from class: com.argusoft.sewa.android.app.util.CommonUtil$$ExternalSyntheticLambda3
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                return CommonUtil.lambda$getOnlyNumberInputFilter$0(charSequence, i, i2, spanned, i3, i4);
            }
        };
    }

    static /* synthetic */ CharSequence lambda$getOnlyNumberInputFilter$0(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        for (int i5 = i; i5 < i2; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if ("1234567890".contains(Character.toString(cCharAt))) {
                sb.append(cCharAt);
            }
        }
        if (sb.length() == i2 - i) {
            return null;
        }
        return sb.toString();
    }

    public static InputFilter getAlphanumericInputFilter() {
        return new InputFilter() { // from class: com.argusoft.sewa.android.app.util.CommonUtil$$ExternalSyntheticLambda1
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                return CommonUtil.lambda$getAlphanumericInputFilter$1(charSequence, i, i2, spanned, i3, i4);
            }
        };
    }

    static /* synthetic */ CharSequence lambda$getAlphanumericInputFilter$1(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        for (int i5 = i; i5 < i2; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if (Character.isLetterOrDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        if (sb.length() == i2 - i) {
            return null;
        }
        return sb.toString();
    }

    public static InputFilter getAlphanumericWithSpaceInputFilter() {
        return new InputFilter() { // from class: com.argusoft.sewa.android.app.util.CommonUtil$$ExternalSyntheticLambda5
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                return CommonUtil.lambda$getAlphanumericWithSpaceInputFilter$2(charSequence, i, i2, spanned, i3, i4);
            }
        };
    }

    static /* synthetic */ CharSequence lambda$getAlphanumericWithSpaceInputFilter$2(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        for (int i5 = i; i5 < i2; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if (String.valueOf(cCharAt).matches("[\\p{L}\\p{M}\\p{N}\\s]+")) {
                sb.append(cCharAt);
            }
        }
        if (sb.length() == i2 - i) {
            return null;
        }
        return sb.toString();
    }

    public static InputFilter getMemberIdInputFilter() {
        return new InputFilter() { // from class: com.argusoft.sewa.android.app.util.CommonUtil$$ExternalSyntheticLambda0
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                return CommonUtil.lambda$getMemberIdInputFilter$3(charSequence, i, i2, spanned, i3, i4);
            }
        };
    }

    static /* synthetic */ CharSequence lambda$getMemberIdInputFilter$3(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        for (int i5 = i; i5 < i2; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if ("ANan1234567890".contains(Character.toString(cCharAt))) {
                sb.append(cCharAt);
            }
        }
        if (sb.length() == i2 - i) {
            return null;
        }
        return sb.toString();
    }

    public static InputFilter getFamilyIdInputFilter() {
        return new InputFilter() { // from class: com.argusoft.sewa.android.app.util.CommonUtil$$ExternalSyntheticLambda4
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                return CommonUtil.lambda$getFamilyIdInputFilter$4(charSequence, i, i2, spanned, i3, i4);
            }
        };
    }

    static /* synthetic */ CharSequence lambda$getFamilyIdInputFilter$4(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        for (int i5 = i; i5 < i2; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if ("FMNfmn/1234567890".contains(Character.toString(cCharAt))) {
                sb.append(cCharAt);
            }
        }
        if (sb.length() == i2 - i) {
            return null;
        }
        return sb.toString();
    }

    public static InputFilter getEmailIdInputFilter() {
        return new InputFilter() { // from class: com.argusoft.sewa.android.app.util.CommonUtil$$ExternalSyntheticLambda2
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                return CommonUtil.lambda$getEmailIdInputFilter$5(charSequence, i, i2, spanned, i3, i4);
            }
        };
    }

    static /* synthetic */ CharSequence lambda$getEmailIdInputFilter$5(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        for (int i5 = i; i5 < i2; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if ("@!#$%&'*+-/=?^_`{|}~.".contains(Character.toString(cCharAt)) || Character.isLetterOrDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        if (sb.length() == i2 - i) {
            return null;
        }
        return sb.toString();
    }

    public static String getGenderValueFromAnswer(String str) {
        str.hashCode();
        switch (str) {
            case "Transgender":
            case "3":
            case "T":
            case "TRANSGENDER":
                return "T";
            case "1":
            case "M":
            case "MALE":
            case "Male":
                return "M";
            case "2":
            case "F":
            case "FEMALE":
            case "Female":
                return "F";
            default:
                return "";
        }
    }

    public static Boolean returnTrueFalseFromInitials(String str) {
        str.hashCode();
        switch (str) {
            case "1":
            case "T":
            case "TRUE":
            case "True":
            case "true":
                return true;
            case "2":
            case "F":
            case "FALSE":
            case "False":
            case "false":
                return false;
            default:
                return null;
        }
    }
}
