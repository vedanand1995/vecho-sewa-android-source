package com.argusoft.sewa.android.app.support;

import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.argusoft.sewa.android.app.util.GlobalTypes;

/* loaded from: classes.dex */
public class SupportAttachment {
    public String attachmentType;
    public String contentType;
    public String createdAt;
    public Integer durationSeconds;
    public String fileName;
    public Long id;
    public long sizeBytes;

    public boolean isVoice() {
        return "VOICE_NOTE".equals(this.attachmentType);
    }

    public boolean isImage() {
        return LmsConstants.MEDIA_TYPE_IMAGE.equals(this.attachmentType);
    }

    public String localName() {
        String strSubstring = isVoice() ? ".m4a" : GlobalTypes.IMAGE_CAPTURE_FORMAT;
        String str = this.fileName;
        if (str != null && str.lastIndexOf(46) > 0) {
            String str2 = this.fileName;
            strSubstring = str2.substring(str2.lastIndexOf(46));
        }
        return "att_" + this.id + strSubstring;
    }
}
