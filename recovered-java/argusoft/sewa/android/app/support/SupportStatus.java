package com.argusoft.sewa.android.app.support;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public final class SupportStatus {
    public final int color;
    public final String detail;
    public final Group group;
    public final int icon;
    public final int ink;
    public final String label;
    public final int step;

    public enum Group {
        NEEDS_ANSWER,
        TO_CHECK,
        IN_PROGRESS,
        DONE
    }

    private SupportStatus(String str, String str2, int i, int i2, Group group, int i3) {
        this.label = SupportLabels.get(str);
        this.detail = SupportLabels.get(str2);
        this.color = i;
        this.ink = inkOf(i);
        this.icon = i2;
        this.group = group;
        this.step = i3;
    }

    public static SupportStatus notSent() {
        return new SupportStatus(SupportLabels.ST_NOT_SENT, SupportLabels.SUB_NOT_SENT, R.color.support_tone_warning, R.drawable.ic_support_sync_arrows, Group.IN_PROGRESS, 0);
    }

    public static SupportStatus of(String str) {
        String str2 = str == null ? "NEW" : str;
        str2.hashCode();
        switch (str2) {
            case "CANCELLED":
            case "REJECTED":
                return new SupportStatus(SupportLabels.ST_NOT_TAKEN, SupportLabels.SUB_NOT_TAKEN, R.color.support_tone_error, R.drawable.ic_support_close, Group.DONE, 0);
            case "IN_PROGRESS":
            case "REOPENED":
            case "ASSIGNED":
                return new SupportStatus(SupportLabels.ST_FIXING, SupportLabels.SUB_FIXING, R.color.support_tone_info, R.drawable.ic_support_clock, Group.IN_PROGRESS, 2);
            case "AWAITING_INFORMATION":
                return new SupportStatus(SupportLabels.ST_ANSWER, SupportLabels.SUB_ANSWER, R.color.support_tone_warning, R.drawable.ic_support_question, Group.NEEDS_ANSWER, 2);
            case "RESOLVED":
                return new SupportStatus(SupportLabels.ST_CHECK, SupportLabels.SUB_CHECK, R.color.support_tone_success, R.drawable.ic_support_check, Group.TO_CHECK, 3);
            case "CLOSED":
                return new SupportStatus(SupportLabels.ST_FIXED, SupportLabels.SUB_FIXED, R.color.support_tone_default, R.drawable.ic_support_check, Group.DONE, 3);
            default:
                return new SupportStatus(SupportLabels.ST_GOT_IT, SupportLabels.SUB_GOT_IT, R.color.support_tone_info, R.drawable.ic_support_inbox, Group.IN_PROGRESS, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int inkOf(int i) {
        if (i == R.color.support_tone_warning) {
            return R.color.support_tone_warning_ink;
        }
        if (i == R.color.support_tone_success) {
            return R.color.support_tone_success_ink;
        }
        if (i == R.color.support_tone_error) {
            return R.color.support_tone_error_ink;
        }
        if (i == R.color.support_tone_default) {
            return R.color.support_tone_default_ink;
        }
        return R.color.support_tone_info_ink;
    }

    public View tag(Context context) {
        return new Tag(this.label, this.color).view(context);
    }

    public static class Tag {
        private final int color;
        private final String label;

        public Tag(String str, int i) {
            this.label = str;
            this.color = i;
        }

        public View view(Context context) {
            int iInkOf = SupportStatus.inkOf(this.color);
            float f = context.getResources().getDisplayMetrics().density;
            int color = ContextCompat.getColor(context, this.color);
            int color2 = ContextCompat.getColor(context, iInkOf);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            int i = (int) (4.0f * f);
            linearLayout.setPadding((int) (10.0f * f), i, (int) (12.0f * f), i);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(999.0f * f);
            int i2 = 16777215 & color;
            gradientDrawable.setColor(436207616 | i2);
            gradientDrawable.setStroke(Math.max(1, (int) f), i2 | 939524096);
            linearLayout.setBackground(gradientDrawable);
            View view = new View(context);
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setShape(1);
            gradientDrawable2.setColor(color);
            view.setBackground(gradientDrawable2);
            int i3 = (int) (f * 7.0f);
            linearLayout.addView(view, new LinearLayout.LayoutParams(i3, i3));
            TextView textView = new TextView(context);
            textView.setText(this.label);
            textView.setTextSize(13.0f);
            textView.setTypeface(textView.getTypeface(), 1);
            textView.setTextColor(color2);
            textView.setPadding(i3, 0, 0, 0);
            textView.setSingleLine(false);
            linearLayout.addView(textView);
            return linearLayout;
        }
    }

    public static String title(String str) {
        String str2 = SupportLabels.get(SupportLabels.VOICE_REPORT);
        if (str == null || str.trim().isEmpty()) {
            return str2;
        }
        int iIndexOf = str.toLowerCase(Locale.ROOT).indexOf("voice note from");
        if (iIndexOf < 0) {
            return str.trim();
        }
        int iIndexOf2 = str.indexOf(58);
        String strTrim = (iIndexOf2 <= 0 || iIndexOf2 >= iIndexOf) ? "" : str.substring(0, iIndexOf2).trim();
        if (strTrim.isEmpty()) {
            return str2;
        }
        return strTrim + "  ·  " + str2;
    }

    public static long millis(String str) {
        if (str == null || str.length() < 19) {
            return 0L;
        }
        try {
            String strSubstring = str.substring(0, 19);
            String strReplace = "+0000";
            int iMax = Math.max(str.lastIndexOf(43), str.lastIndexOf(45));
            if (iMax > 18) {
                strReplace = str.substring(iMax).replace(":", "");
            }
            Date date = new SimpleDateFormat(GlobalTypes.ISO_8601_DATE_TIME_FORMAT, Locale.ROOT).parse(strSubstring + strReplace);
            if (date == null) {
                return 0L;
            }
            return date.getTime();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static String day(String str) {
        long jMillis = millis(str);
        return jMillis == 0 ? "" : day(jMillis);
    }

    public static String day(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        Calendar calendar2 = Calendar.getInstance();
        if (sameDay(calendar, calendar2)) {
            return SupportLabels.get(SupportLabels.TODAY);
        }
        calendar2.add(6, -1);
        if (sameDay(calendar, calendar2)) {
            return SupportLabels.get(SupportLabels.YESTERDAY);
        }
        return new SimpleDateFormat("d MMM", Locale.ENGLISH).format(new Date(j));
    }

    public static String dayAndTime(String str) {
        long jMillis = millis(str);
        if (jMillis == 0) {
            return "";
        }
        return day(jMillis) + ", " + new SimpleDateFormat("h:mm a", Locale.ENGLISH).format(new Date(jMillis)).toLowerCase(Locale.ENGLISH);
    }

    private static boolean sameDay(Calendar calendar, Calendar calendar2) {
        return calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }
}
