package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable
/* loaded from: classes.dex */
public class LmsBookMarkBean extends BaseEntity implements Serializable {

    @DatabaseField
    private String bookmarkNote;

    @DatabaseField
    private String bookmarkText;

    @DatabaseField
    private String fileName;

    @DatabaseField
    private Integer lessonId;

    @DatabaseField
    private int position;

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

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public Integer getLessonId() {
        return this.lessonId;
    }

    public void setLessonId(Integer num) {
        this.lessonId = num;
    }

    public String toString() {
        return "LmsBookMarkBean{bookmarkText='" + this.bookmarkText + "', bookmarkNote='" + this.bookmarkNote + "', position=" + this.position + ", fileName='" + this.fileName + "', lessonId=" + this.lessonId + '}';
    }
}
