package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class BookmarkDataBean {
    private String bookmarkNote;
    private String bookmarkText;
    private String fileName;
    private int position;

    public BookmarkDataBean(int i, String str, String str2, String str3) {
        this.position = i;
        this.bookmarkText = str;
        this.bookmarkNote = str2;
        this.fileName = str3;
    }

    public int getPosition() {
        return this.position;
    }

    public void setPosition(int i) {
        this.position = i;
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

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public String toString() {
        return "BookmarkDataBean{position=" + this.position + ", bookmarkText='" + this.bookmarkText + "', bookmarkNote='" + this.bookmarkNote + "', fileName='" + this.fileName + "'}";
    }
}
