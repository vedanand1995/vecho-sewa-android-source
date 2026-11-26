package com.argusoft.sewa.android.app.restclient;

import com.argusoft.sewa.android.app.util.AadharScanUtil;

/* loaded from: classes.dex */
public class RestFileMultipart {
    private byte[] data;
    private String description;
    private String fileName;
    private FILE_TYPE type;

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public FILE_TYPE getType() {
        return this.type;
    }

    public void setType(FILE_TYPE file_type) {
        this.type = file_type;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String toString() {
        return "RestFileMultipart{type=" + this.type + ", fileName=" + this.fileName + ", description=" + this.description + '}';
    }

    public enum FILE_TYPE {
        IMAGE(AadharScanUtil.IMAGE),
        AUDIO("audio"),
        VIDEO("video"),
        DOCUMENT("document");

        private final String value;

        FILE_TYPE(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "FILE_TYPE{value=" + this.value + '}';
        }
    }
}
