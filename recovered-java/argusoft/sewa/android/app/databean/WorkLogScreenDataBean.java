package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import java.util.List;

/* loaded from: classes.dex */
public class WorkLogScreenDataBean {
    private String date;
    private int image;
    private String message;
    private String name;
    private String task;
    private List<UploadFileDataBean> uploadFileDataBean;

    public WorkLogScreenDataBean(String str, int i, String str2, String str3, String str4, List<UploadFileDataBean> list) {
        this.date = str;
        this.image = i;
        this.name = str2;
        this.task = str3;
        this.message = str4;
        this.uploadFileDataBean = list;
    }

    public WorkLogScreenDataBean(String str, int i, String str2, String str3, String str4) {
        this.date = str;
        this.image = i;
        this.name = str2;
        this.task = str3;
        this.message = str4;
    }

    public String getDate() {
        return this.date;
    }

    public int getImage() {
        return this.image;
    }

    public String getName() {
        return this.name;
    }

    public String getTask() {
        return this.task;
    }

    public String getMessage() {
        return this.message;
    }

    public List<UploadFileDataBean> getUploadFileDataBean() {
        return this.uploadFileDataBean;
    }

    public String toString() {
        return "WorkLogScreenDataBean{date=" + this.date + ", image=" + this.image + ", name=" + this.name + ", task=" + this.task + '}';
    }
}
