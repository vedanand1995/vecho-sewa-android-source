package com.argusoft.sewa.android.app.util;

import android.text.Spannable;
import android.text.SpannableString;
import android.util.Base64;
import android.util.Log;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.exception.DataException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

/* loaded from: classes.dex */
public class AadharScanUtil {
    public static final String CO = "co";
    public static final String DIST = "dist";
    public static final String DOB = "dob";
    public static final String DOB_DATE_FORMAT_1 = "dd-MM-yyyy";
    public static final String DOB_DATE_FORMAT_2 = "dd/MM/yyyy";
    public static final String DOB_DATE_FORMAT_3 = "yyyy/MM/dd";
    public static final String DOB_DATE_FORMAT_4 = "yyyy-MM-dd";
    public static final String EMAIL_HEX = "email";
    public static final String GENDER = "gender";
    public static final String HOUSE = "house";
    public static final String IMAGE = "image";
    public static final String LM = "lm";
    public static final String LOC = "loc";
    public static final String MOBILE_HEX = "mobile";
    public static final String NAME = "name";
    private static final int NUMBER_OF_PARAMS_IN_SECURE_QR_CODE = 15;
    public static final String PC = "pc";
    public static final String PO = "po";
    private static final byte SEPARATOR_BYTE = -1;
    public static final String SIGNATURE = "signature";
    public static final String STATE = "state";
    public static final String STREET = "street";
    public static final String SUBDIST = "subdist";
    private static final String TAG = "AadharScanUtil";
    public static final String UID = "uid";
    public static final String VTC = "vtc";
    public static final String YOB = "yob";
    protected static int emailMobilePresent;
    protected static int imageEndIndex;
    protected static int imageStartIndex;

    private AadharScanUtil() {
        throw new IllegalStateException("Utility Class");
    }

    public static Map<String, String> getAadharScanDataMap(String str) throws ParserConfigurationException {
        Document documentFromXml = getDocumentFromXml(str);
        if (documentFromXml != null) {
            return getDataFromQrXml(documentFromXml);
        }
        if (str.matches("\\d{12}")) {
            return getDataFromQrUid(str);
        }
        if (str.matches("[0-9]*")) {
            return getDataFromSecureQr(str);
        }
        throw new DataException("Not an aadhar card", 100);
    }

    private static Document getDocumentFromXml(String str) throws ParserConfigurationException {
        try {
            DocumentBuilder documentBuilderNewDocumentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            if (str.startsWith("</?")) {
                str = str.replaceFirst("</\\?", "<?");
            }
            return documentBuilderNewDocumentBuilder.parse(new ByteArrayInputStream(str.replaceFirst("^<\\?xml ([^>]+)\\?\">", "<?xml $1\"?>").getBytes(StandardCharsets.UTF_8)));
        } catch (IOException | ParserConfigurationException | SAXException unused) {
            return null;
        }
    }

    private static Map<String, String> getDataFromQrXml(Document document) {
        NamedNodeMap attributes = document.getChildNodes().item(0).getAttributes();
        HashMap map = new HashMap();
        map.put(UID, getAttributeOrEmptyString(attributes, UID));
        map.put("name", getAttributeOrEmptyString(attributes, "name"));
        map.put("gender", getAttributeOrEmptyString(attributes, "gender"));
        map.put(YOB, getAttributeOrEmptyString(attributes, YOB));
        map.put(CO, getAttributeOrEmptyString(attributes, CO));
        map.put(HOUSE, getAttributeOrEmptyString(attributes, HOUSE));
        map.put(STREET, getAttributeOrEmptyString(attributes, STREET));
        map.put(LM, getAttributeOrEmptyString(attributes, LM));
        map.put(LOC, getAttributeOrEmptyString(attributes, LOC));
        map.put(VTC, getAttributeOrEmptyString(attributes, VTC));
        map.put(PO, getAttributeOrEmptyString(attributes, PO));
        map.put(DIST, getAttributeOrEmptyString(attributes, DIST));
        map.put(SUBDIST, getAttributeOrEmptyString(attributes, SUBDIST));
        map.put("state", getAttributeOrEmptyString(attributes, "state"));
        map.put(PC, getAttributeOrEmptyString(attributes, PC));
        map.put("dob", getAttributeOrEmptyString(attributes, "dob"));
        map.values().removeAll(Collections.singleton(null));
        map.values().removeAll(Collections.singleton(""));
        return map;
    }

    private static Map<String, String> getDataFromQrUid(String str) {
        HashMap map = new HashMap();
        map.put(UID, str);
        return map;
    }

    private static Map<String, String> getDataFromSecureQr(String str) throws DataException {
        byte[] bArrDecompressByteArray;
        HashMap map = new HashMap();
        try {
            bArrDecompressByteArray = decompressByteArray(new BigInteger(str, 10).toByteArray());
        } catch (IOException e) {
            Log.e(TAG, e.getMessage(), e);
            bArrDecompressByteArray = null;
        }
        if (bArrDecompressByteArray == null) {
            return map;
        }
        List<byte[]> listSeparateData = separateData(bArrDecompressByteArray);
        if (listSeparateData.size() == 0) {
            throw new DataException("Invalid QR Code Data, no parts found after splitting by delimiter", 400);
        }
        decodeData(listSeparateData, map);
        decodeSignature(bArrDecompressByteArray, map);
        decodeMobileEmail(bArrDecompressByteArray, map);
        decodeImage(bArrDecompressByteArray, map);
        map.values().removeAll(Collections.singleton(null));
        map.values().removeAll(Collections.singleton(""));
        return map;
    }

    private static List<byte[]> separateData(byte[] bArr) {
        LinkedList linkedList = new LinkedList();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= bArr.length) {
                break;
            }
            if (bArr[i] == -1) {
                if (i != 0 && i != bArr.length - 1) {
                    linkedList.add(Arrays.copyOfRange(bArr, i2, i));
                }
                i2 = i + 1;
                if (linkedList.size() == 16) {
                    imageStartIndex = i2;
                    break;
                }
            }
            i++;
        }
        return linkedList;
    }

    private static void decodeData(List<byte[]> list, Map<String, String> map) throws DataException {
        Iterator<byte[]> it = list.iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            arrayList.add(new String(it.next(), StandardCharsets.ISO_8859_1));
        }
        if (arrayList.isEmpty() || arrayList.size() <= 15) {
            return;
        }
        int i = 1;
        if (isValueForNewQRCode((String) arrayList.get(0))) {
            emailMobilePresent = Integer.parseInt((String) arrayList.get(0));
        } else if (isValueForNewQRCode((String) arrayList.get(1))) {
            emailMobilePresent = Integer.parseInt((String) arrayList.get(1));
            i = 2;
        }
        try {
            map.put(UID, ((String) arrayList.get(i)).substring(0, 4));
            map.put("name", (String) arrayList.get(i + 1));
            map.put("dob", (String) arrayList.get(i + 2));
            map.put("gender", (String) arrayList.get(i + 3));
            map.put(CO, (String) arrayList.get(i + 4));
            map.put(DIST, (String) arrayList.get(i + 5));
            map.put(LM, (String) arrayList.get(i + 6));
            map.put(HOUSE, (String) arrayList.get(i + 7));
            map.put(LOC, (String) arrayList.get(i + 8));
            map.put(PC, (String) arrayList.get(i + 9));
            map.put(PO, (String) arrayList.get(i + 10));
            map.put("state", (String) arrayList.get(i + 11));
            map.put(STREET, (String) arrayList.get(i + 12));
            map.put(SUBDIST, (String) arrayList.get(i + 13));
            map.put(VTC, (String) arrayList.get(i + 14));
        } catch (IndexOutOfBoundsException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    private static void decodeSignature(byte[] bArr, Map<String, String> map) {
        map.put(SIGNATURE, new String(bArr, bArr.length - 257, 256, StandardCharsets.ISO_8859_1));
    }

    private static void decodeMobileEmail(byte[] bArr, Map<String, String> map) {
        int length;
        int length2;
        int length3;
        int i = emailMobilePresent;
        int length4 = 0;
        if (i != 1) {
            if (i == 2) {
                int length5 = bArr.length - 289;
                int length6 = bArr.length - 257;
                imageEndIndex = bArr.length - 290;
                length4 = length5;
                length3 = length6;
            } else if (i == 3) {
                length4 = bArr.length - 289;
                length3 = bArr.length - 257;
                length2 = bArr.length - 321;
                length = bArr.length - 289;
                imageEndIndex = bArr.length - 323;
            } else {
                imageEndIndex = bArr.length - 257;
                length3 = 0;
            }
            length2 = 0;
            length = 0;
        } else {
            int length7 = bArr.length - 289;
            int length8 = bArr.length - 257;
            imageEndIndex = bArr.length - 290;
            length = length8;
            length2 = length7;
            length3 = 0;
        }
        String strBytesToHex = null;
        String strBytesToHex2 = (length4 <= 0 || length3 <= 0) ? null : bytesToHex(Arrays.copyOfRange(bArr, length4, length3 + 1));
        if (length2 > 0 && length > 0) {
            strBytesToHex = bytesToHex(Arrays.copyOfRange(bArr, length2, length + 1));
        }
        map.put("email", strBytesToHex);
        map.put(MOBILE_HEX, strBytesToHex2);
    }

    private static void decodeImage(byte[] bArr, Map<String, String> map) {
        map.put(IMAGE, Base64.encodeToString(Arrays.copyOfRange(bArr, imageStartIndex, imageEndIndex + 1), 0));
    }

    private static boolean isValueForNewQRCode(String str) {
        return str.matches("[0123]");
    }

    public static String bytesToHex(byte[] bArr) {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            cArr[i2] = charArray[(b & 255) >>> 4];
            cArr[i2 + 1] = charArray[b & 15];
        }
        return new String(cArr);
    }

    private static Map<String, String> getDataFromSecureQrOld(String str) {
        byte[] bArrDecompressByteArray;
        HashMap map = new HashMap();
        try {
            bArrDecompressByteArray = decompressByteArray(new BigInteger(str).toByteArray());
        } catch (IOException e) {
            e.printStackTrace();
            bArrDecompressByteArray = null;
        }
        if (bArrDecompressByteArray == null) {
            return map;
        }
        int[] iArrLocateDelimiters = locateDelimiters(bArrDecompressByteArray);
        map.put(UID, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[0] + 1, iArrLocateDelimiters[1]).substring(0, 4));
        map.put("name", getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[1] + 1, iArrLocateDelimiters[2]));
        map.put("dob", getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[2] + 1, iArrLocateDelimiters[3]));
        map.put("gender", getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[3] + 1, iArrLocateDelimiters[4]));
        map.put(CO, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[4] + 1, iArrLocateDelimiters[5]));
        map.put(DIST, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[5] + 1, iArrLocateDelimiters[6]));
        map.put(LM, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[6] + 1, iArrLocateDelimiters[7]));
        map.put(HOUSE, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[7] + 1, iArrLocateDelimiters[8]));
        map.put(LOC, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[8] + 1, iArrLocateDelimiters[9]));
        map.put(PC, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[9] + 1, iArrLocateDelimiters[10]));
        map.put(PO, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[10] + 1, iArrLocateDelimiters[11]));
        map.put("state", getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[11] + 1, iArrLocateDelimiters[12]));
        map.put(STREET, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[12] + 1, iArrLocateDelimiters[13]));
        map.put(SUBDIST, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[13] + 1, iArrLocateDelimiters[14]));
        map.put(VTC, getValueInRange(bArrDecompressByteArray, iArrLocateDelimiters[14] + 1, iArrLocateDelimiters[15]));
        map.values().removeAll(Collections.singleton(null));
        map.values().removeAll(Collections.singleton(""));
        return map;
    }

    private static String getAttributeOrEmptyString(NamedNodeMap namedNodeMap, String str) {
        Node namedItem = namedNodeMap.getNamedItem(str);
        if (namedItem != null) {
            return namedItem.getTextContent();
        }
        return "";
    }

    private static int[] locateDelimiters(byte[] bArr) {
        int[] iArr = new int[16];
        int i = 0;
        for (int i2 = 0; i2 <= 15; i2++) {
            int nextDelimiterIndex = getNextDelimiterIndex(bArr, i);
            iArr[i2] = nextDelimiterIndex;
            i = nextDelimiterIndex + 1;
        }
        return iArr;
    }

    private static String getValueInRange(byte[] bArr, int i, int i2) {
        return new String(Arrays.copyOfRange(bArr, i, i2), StandardCharsets.ISO_8859_1);
    }

    private static int getNextDelimiterIndex(byte[] bArr, int i) {
        while (i < bArr.length && bArr[i] != -1) {
            i++;
        }
        return i;
    }

    private static byte[] decompressByteArray(byte[] bArr) throws IOException {
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[1024];
        int i = 0;
        while (i >= 0) {
            i = gZIPInputStream.read(bArr2, 0, 1024);
            if (i > 0) {
                byteArrayOutputStream.write(bArr2, 0, i);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static Date formatDate(String str) {
        if (str != null && !str.equals("")) {
            String[] strArr = {DOB_DATE_FORMAT_1, "dd/MM/yyyy", DOB_DATE_FORMAT_3, DOB_DATE_FORMAT_4};
            for (int i = 0; i < 4; i++) {
                try {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(strArr[i]);
                    simpleDateFormat.setLenient(false);
                    return simpleDateFormat.parse(str);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            }
            Log.e(TAG, "Expected dob to be in dd/mm/yyyy or yyyy-mm-dd format, got " + str);
        }
        return null;
    }

    public static String formatGender(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase) {
            case "transgender":
            case "o":
            case "t":
            case "other":
                return "T";
            case "female":
            case "f":
                return "F";
            case "m":
            case "male":
                return "M";
            default:
                return str;
        }
    }

    public static Spannable getAadharTextToBeDisplayedAfterScan(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            key.hashCode();
            switch (key) {
                case "pc":
                    sb.append(UtilBean.getMyLabel(LabelConstants.PINCODE));
                    sb.append(" : ");
                    sb.append(entry.getValue());
                    sb.append(LabelConstants.NEW_LINE);
                    break;
                case "dob":
                    sb.append(UtilBean.getMyLabel("Date Of Birth"));
                    sb.append(" : ");
                    sb.append(entry.getValue());
                    sb.append(LabelConstants.NEW_LINE);
                    break;
                case "uid":
                    sb.append(UtilBean.getMyLabel("Aadhar Number"));
                    sb.append(" : ");
                    sb.append(entry.getValue());
                    sb.append(LabelConstants.NEW_LINE);
                    break;
                case "yob":
                    sb.append(UtilBean.getMyLabel("Year Of Birth"));
                    sb.append(" : ");
                    sb.append(entry.getValue());
                    sb.append(LabelConstants.NEW_LINE);
                    break;
                case "name":
                    sb.append(UtilBean.getMyLabel("Name"));
                    sb.append(" : ");
                    sb.append(entry.getValue());
                    sb.append(LabelConstants.NEW_LINE);
                    break;
            }
        }
        return new SpannableString(sb.toString());
    }
}
