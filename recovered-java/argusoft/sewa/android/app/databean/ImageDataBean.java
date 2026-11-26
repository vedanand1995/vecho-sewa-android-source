package com.argusoft.sewa.android.app.databean;

import android.net.Uri;

/* loaded from: classes.dex */
public class ImageDataBean {
    String filePath;
    Uri fileUri;
    Boolean isFromGallery;
    String uniqueId;

    public ImageDataBean(String str, String str2, Uri uri, Boolean bool) {
        this.uniqueId = str;
        this.filePath = str2;
        this.fileUri = uri;
        this.isFromGallery = bool;
    }

    public String getUniqueId() {
        return this.uniqueId;
    }

    public void setUniqueId(String str) {
        this.uniqueId = str;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public Uri getFileUri() {
        return this.fileUri;
    }

    public void setFileUri(Uri uri) {
        this.fileUri = uri;
    }

    public Boolean getFromGallery() {
        return this.isFromGallery;
    }

    public void setFromGallery(Boolean bool) {
        this.isFromGallery = bool;
    }
}
