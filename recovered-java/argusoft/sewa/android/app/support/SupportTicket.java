package com.argusoft.sewa.android.app.support;

import java.util.List;

/* loaded from: classes.dex */
public class SupportTicket {
    public List<String> allowedActions;
    public String createdAt;
    public String description;
    public Long id;
    public String resolutionSummary;
    public String status;
    public String statusChangedAt;
    public String ticketNumber;
    public String title;
    public String topic;

    public boolean may(String str) {
        List<String> list = this.allowedActions;
        return list != null && list.contains(str);
    }
}
