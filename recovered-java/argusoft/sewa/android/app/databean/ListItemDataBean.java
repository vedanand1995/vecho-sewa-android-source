package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class ListItemDataBean {
    private boolean active;
    private String boldText;
    private String boldText2;
    private String boldText3;
    private String bookmarkNote;
    private String bookmarkText;
    private String date;
    private String familyId;
    private String healthIdNumber;
    private String info;
    private boolean isAudio;
    private boolean isCrossRefBookmark;
    private boolean isHealthId;
    private boolean isHighRisk;
    private boolean isTaskOverDue;
    private List<Integer> leadingIconResIds;
    private Integer leadingIconTintColor;
    private List<Integer> leadingIconTintColors;
    int locationId;
    private String memberId;
    private String memberName;
    private String notificationCount;
    private int notificationImageId;
    private String notificationText;
    private int pendingAbhaCount;
    private int position;
    private String regularText;
    private String regularText2;
    private String regularText3;
    private String text;
    String userFullName;
    String userName;
    private String vaccines;
    private String vaccinesTitle;
    private boolean verified;
    private String visit;

    public ListItemDataBean() {
    }

    public ListItemDataBean(String str) {
        this.text = str;
    }

    public ListItemDataBean(String str, Boolean bool, Boolean bool2) {
        this.verified = bool.booleanValue();
        this.text = str;
        Boolean.valueOf(false);
    }

    public ListItemDataBean(String str, String str2) {
        this.boldText = str;
        this.regularText = str2;
        this.verified = false;
    }

    public ListItemDataBean(String str, String str2, boolean z, boolean z2, String str3) {
        this.memberId = str;
        this.regularText = str2;
        this.verified = z;
        this.isHealthId = z2;
        this.healthIdNumber = str3;
    }

    public ListItemDataBean(String str, String str2, boolean z) {
        this.boldText = str;
        this.regularText = str2;
        this.verified = z;
    }

    public ListItemDataBean(String str, boolean z, String str2, String str3) {
        this.boldText = str;
        this.active = z;
        this.date = str2;
        this.info = str3;
    }

    public ListItemDataBean(int i, String str, String str2) {
        this.notificationImageId = i;
        this.notificationText = str;
        this.notificationCount = str2;
    }

    public ListItemDataBean(String str, String str2, String str3) {
        this.boldText = str;
        this.regularText = str2;
        this.info = str3;
    }

    public ListItemDataBean(String str, String str2, String str3, String str4, boolean z) {
        this.date = str;
        this.boldText = str2;
        this.regularText = str3;
        this.visit = str4;
        this.isTaskOverDue = z;
    }

    public ListItemDataBean(String str, String str2, String str3, String str4, String str5) {
        this.familyId = str;
        this.memberId = str2;
        this.memberName = str3;
        this.boldText = str4;
        this.regularText = str5;
    }

    public ListItemDataBean(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
        this.date = str;
        this.boldText = str2;
        this.regularText = str3;
        this.vaccinesTitle = str5;
        this.visit = str4;
        this.vaccines = str6;
        this.isTaskOverDue = z;
    }

    public ListItemDataBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z) {
        this.date = str;
        this.boldText = str2;
        this.regularText = str3;
        this.boldText2 = str4;
        this.regularText2 = str5;
        this.boldText3 = str6;
        this.regularText3 = str7;
        this.vaccinesTitle = str9;
        this.visit = str8;
        this.vaccines = str10;
        this.isTaskOverDue = z;
    }

    public ListItemDataBean(String str, String str2, String str3, String str4, String str5, boolean z) {
        this.familyId = str;
        this.memberId = str2;
        this.memberName = str3;
        this.boldText = str4;
        this.regularText = str5;
        this.verified = z;
    }

    public ListItemDataBean(String str, String str2, String str3, String str4, String str5, boolean z, int i) {
        this.familyId = str;
        this.memberId = str2;
        this.memberName = str3;
        this.boldText = str4;
        this.regularText = str5;
        this.verified = z;
        this.pendingAbhaCount = i;
    }

    public ListItemDataBean(String str, int i, String str2, boolean z, boolean z2) {
        this.bookmarkText = str;
        this.position = i;
        this.bookmarkNote = str2;
        this.isCrossRefBookmark = z;
        this.isAudio = z2;
    }

    public ListItemDataBean(String str, int i, String str2) {
        this.userName = str;
        this.locationId = i;
        this.userFullName = str2;
    }

    public ListItemDataBean(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        this.familyId = str;
        this.memberId = str2;
        this.memberName = str3;
        this.boldText = str4;
        this.regularText = str5;
        this.verified = z;
        this.isHighRisk = z2;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public boolean isVerified() {
        return this.verified;
    }

    public void setVerified(boolean z) {
        this.verified = z;
    }

    public String getBoldText() {
        return this.boldText;
    }

    public void setBoldText(String str) {
        this.boldText = str;
    }

    public String getRegularText() {
        return this.regularText;
    }

    public void setRegularText(String str) {
        this.regularText = str;
    }

    public int getNotificationImageId() {
        return this.notificationImageId;
    }

    public void setNotificationImageId(int i) {
        this.notificationImageId = i;
    }

    public String getNotificationText() {
        return this.notificationText;
    }

    public void setNotificationText(String str) {
        this.notificationText = str;
    }

    public String getNotificationCount() {
        return this.notificationCount;
    }

    public void setNotificationCount(String str) {
        this.notificationCount = str;
    }

    public String getDate() {
        return this.date;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public String getVisit() {
        return this.visit;
    }

    public void setVisit(String str) {
        this.visit = str;
    }

    public String getVaccines() {
        return this.vaccines;
    }

    public void setVaccines(String str) {
        this.vaccines = str;
    }

    public boolean isTaskOverDue() {
        return this.isTaskOverDue;
    }

    public void setTaskOverDue(boolean z) {
        this.isTaskOverDue = z;
    }

    public String getVaccinesTitle() {
        return this.vaccinesTitle;
    }

    public void setVaccinesTitle(String str) {
        this.vaccinesTitle = str;
    }

    public String getInfo() {
        return this.info;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public String getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(String str) {
        this.familyId = str;
    }

    public String getMemberId() {
        return this.memberId;
    }

    public void setMemberId(String str) {
        this.memberId = str;
    }

    public String getMemberName() {
        return this.memberName;
    }

    public void setMemberName(String str) {
        this.memberName = str;
    }

    public String getBookmarkText() {
        return this.bookmarkText;
    }

    public void setBookmarkText(String str) {
        this.bookmarkText = str;
    }

    public String getBookmarkNote() {
        return this.bookmarkNote;
    }

    public void setBookmarkNote(String str) {
        this.bookmarkNote = str;
    }

    public int getPosition() {
        return this.position;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public boolean isCrossRefBookmark() {
        return this.isCrossRefBookmark;
    }

    public void setCrossRefBookmark(boolean z) {
        this.isCrossRefBookmark = z;
    }

    public boolean isAudio() {
        return this.isAudio;
    }

    public void setAudio(boolean z) {
        this.isAudio = z;
    }

    public boolean isHealthId() {
        return this.isHealthId;
    }

    public void setHealthId(boolean z) {
        this.isHealthId = z;
    }

    public int getPendingAbhaCount() {
        return this.pendingAbhaCount;
    }

    public void setPendingAbhaCount(int i) {
        this.pendingAbhaCount = i;
    }

    public int getLocationId() {
        return this.locationId;
    }

    public void setLocationId(int i) {
        this.locationId = i;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String getUserFullName() {
        return this.userFullName;
    }

    public void setUserFullName(String str) {
        this.userFullName = str;
    }

    public String getHealthIdNumber() {
        return this.healthIdNumber;
    }

    public void setHealthIdNumber(String str) {
        this.healthIdNumber = str;
    }

    public boolean isActive() {
        return this.active;
    }

    public void setActive(boolean z) {
        this.active = z;
    }

    public String getBoldText2() {
        return this.boldText2;
    }

    public void setBoldText2(String str) {
        this.boldText2 = str;
    }

    public String getRegularText2() {
        return this.regularText2;
    }

    public void setRegularText2(String str) {
        this.regularText2 = str;
    }

    public String getBoldText3() {
        return this.boldText3;
    }

    public void setBoldText3(String str) {
        this.boldText3 = str;
    }

    public List<Integer> getLeadingIconResIds() {
        return this.leadingIconResIds;
    }

    public void setLeadingIconResIds(List<Integer> list) {
        this.leadingIconResIds = list;
    }

    public List<Integer> getLeadingIconTintColors() {
        return this.leadingIconTintColors;
    }

    public void setLeadingIconTintColors(List<Integer> list) {
        this.leadingIconTintColors = list;
    }

    public Integer getLeadingIconTintColor() {
        return this.leadingIconTintColor;
    }

    public void setLeadingIconTintColor(Integer num) {
        this.leadingIconTintColor = num;
    }

    public String getRegularText3() {
        return this.regularText3;
    }

    public void setRegularText3(String str) {
        this.regularText3 = str;
    }

    public String toString() {
        return "ListItemDataBean{bookmarkText='" + this.bookmarkText + "', bookmarkNote='" + this.bookmarkNote + "', position=" + this.position + ", isCrossRefBookmark=" + this.isCrossRefBookmark + ", isAudio=" + this.isAudio + '}';
    }
}
