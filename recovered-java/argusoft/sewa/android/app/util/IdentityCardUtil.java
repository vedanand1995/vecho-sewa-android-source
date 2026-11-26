package com.argusoft.sewa.android.app.util;

import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class IdentityCardUtil {
    private IdentityCardUtil() {
        throw new IllegalStateException("Utility Class");
    }

    public static boolean validateIdNumber(String str, String str2) {
        str.hashCode();
        switch (str) {
            case "DRIVING_LICENSE":
                return validateDrivingLicense(str2);
            case "VOTER_ID":
                return validateVoterIdNumber(str2);
            case "STUDENT_ID":
                return validateStudentId(str2);
            case "PENSION_PASSBOOK":
                return validatePensionPassbookNumber(str2);
            case "UNIQUE_DISABILITY_ID":
                return validateUniqueDisabilityId(str2);
            case "NPR_SCARD":
                return validateNprCardNumber(str2);
            case "RATION_CARD_WITH_PHOTO":
                return validateRationNumber(str2);
            case "PAN_CARD":
                return validatePanNumber(str2);
            case "AADHAR":
                return validateAadharNumber(str2);
            case "PASSPORT":
                return validatePassportNumber(str2);
            default:
                return false;
        }
    }

    private static boolean validateAadharNumber(String str) {
        String strTrim = str.trim();
        if (!Pattern.compile("^[0-9]{12}$").matcher(strTrim).matches()) {
            return false;
        }
        int[][] iArr = {new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, new int[]{1, 2, 3, 4, 0, 6, 7, 8, 9, 5}, new int[]{2, 3, 4, 0, 1, 7, 8, 9, 5, 6}, new int[]{3, 4, 0, 1, 2, 8, 9, 5, 6, 7}, new int[]{4, 0, 1, 2, 3, 9, 5, 6, 7, 8}, new int[]{5, 9, 8, 7, 6, 0, 4, 3, 2, 1}, new int[]{6, 5, 9, 8, 7, 1, 0, 4, 3, 2}, new int[]{7, 6, 5, 9, 8, 2, 1, 0, 4, 3}, new int[]{8, 7, 6, 5, 9, 3, 2, 1, 0, 4}, new int[]{9, 8, 7, 6, 5, 4, 3, 2, 1, 0}};
        int[][] iArr2 = {new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, new int[]{1, 5, 7, 6, 2, 8, 3, 0, 9, 4}, new int[]{5, 8, 0, 3, 7, 9, 6, 1, 4, 2}, new int[]{8, 9, 1, 6, 0, 4, 3, 5, 2, 7}, new int[]{9, 4, 5, 3, 1, 2, 6, 8, 7, 0}, new int[]{4, 2, 8, 6, 5, 7, 3, 9, 0, 1}, new int[]{2, 7, 9, 3, 8, 0, 6, 4, 1, 5}, new int[]{7, 0, 4, 6, 9, 1, 3, 2, 5, 8}};
        int length = strTrim.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = iArr[i][iArr2[i2 % 8][Integer.parseInt(strTrim.charAt((length - i2) - 1) + "")]];
        }
        return i == 0;
    }

    private static boolean validatePensionPassbookNumber(String str) {
        return Pattern.compile("[A-Z]{3}\\d{7}").matcher(str).matches();
    }

    private static boolean validateNprCardNumber(String str) {
        return Pattern.compile("\\d{12}").matcher(str).matches();
    }

    private static boolean validateVoterIdNumber(String str) {
        return Pattern.compile("[A-Z]{3}[0-9]{7}").matcher(str).matches();
    }

    private static boolean validateUniqueDisabilityId(String str) {
        return Pattern.compile("[A-Z]{3}\\d{9}").matcher(str).matches();
    }

    private static boolean validateRationNumber(String str) {
        return Pattern.compile("[0-9]{15}").matcher(str).matches();
    }

    private static boolean validateStudentId(String str) {
        return str.length() <= 20;
    }

    private static boolean validateDrivingLicense(String str) {
        return Pattern.compile("[A-Z]{2}[0-9]{13}").matcher(str).matches();
    }

    private static boolean validatePanNumber(String str) {
        return Pattern.compile("[A-Z]{5}[0-9]{4}[A-Z]{1}").matcher(str).matches();
    }

    private static boolean validatePassportNumber(String str) {
        return Pattern.compile("[A-Z]{1}[0-9]{7}").matcher(str).matches();
    }
}
