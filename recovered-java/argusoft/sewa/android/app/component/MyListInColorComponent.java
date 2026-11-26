package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.widget.LinearLayout;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class MyListInColorComponent {
    private final Context context;
    private final LinearLayout mainLayout;
    private Map<String, List<String>> mapReasons;

    public MyListInColorComponent(Context context, Map<String, List<String>> map) {
        this.context = context;
        this.mapReasons = map;
        this.mainLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        generateList();
    }

    public void resetList(Map<String, List<String>> map) {
        this.mapReasons = map;
        generateList();
    }

    public LinearLayout getListView() {
        return this.mainLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0072 A[LOOP:1: B:23:0x006c->B:25:0x0072, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void generateList() {
        /*
            r10 = this;
            android.widget.LinearLayout r0 = r10.mainLayout
            r0.removeAllViews()
            java.util.Map<java.lang.String, java.util.List<java.lang.String>> r0 = r10.mapReasons
            r1 = 0
            if (r0 == 0) goto Lb2
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto Lb2
            java.util.Map<java.lang.String, java.util.List<java.lang.String>> r0 = r10.mapReasons
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r2 = 0
        L1b:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto Lb1
            java.lang.Object r3 = r0.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r3.getKey()
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r3 = r3.getValue()
            java.util.List r3 = (java.util.List) r3
            if (r3 == 0) goto L1b
            boolean r5 = r3.isEmpty()
            if (r5 != 0) goto L1b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = "-"
            java.lang.String[] r4 = com.argusoft.sewa.android.app.util.UtilBean.split(r4, r5)
            int r5 = r4.length
            r6 = 2
            java.lang.String r7 = "\n"
            r8 = 1
            if (r5 != r6) goto L66
            r5 = r4[r8]
            if (r5 == 0) goto L5a
            int r5 = r5.length()
            if (r5 != r8) goto L5a
            r4 = r4[r8]
            goto L67
        L5a:
            r4 = r4[r8]
            java.lang.String r4 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r4)
            r2.append(r4)
            r2.append(r7)
        L66:
            r4 = 0
        L67:
            java.util.Iterator r3 = r3.iterator()
            r5 = 1
        L6c:
            boolean r6 = r3.hasNext()
            if (r6 == 0) goto L8c
            java.lang.Object r6 = r3.next()
            java.lang.String r6 = (java.lang.String) r6
            r2.append(r5)
            java.lang.String r9 = ") "
            r2.append(r9)
            java.lang.String r6 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r6)
            r2.append(r6)
            r2.append(r7)
            int r5 = r5 + r8
            goto L6c
        L8c:
            int r3 = r2.length()
            int r3 = r3 - r8
            r5 = 32
            r2.setCharAt(r3, r5)
            android.content.Context r3 = r10.context
            java.lang.String r2 = r2.toString()
            com.google.android.material.textview.MaterialTextView r2 = com.argusoft.sewa.android.app.component.MyStaticComponents.generateAnswerView(r3, r2)
            if (r4 == 0) goto La6
            com.argusoft.sewa.android.app.util.SewaUtil.setColor(r2, r4)
            goto La9
        La6:
            r2.setPadding(r1, r1, r1, r1)
        La9:
            android.widget.LinearLayout r3 = r10.mainLayout
            r3.addView(r2)
            r2 = 1
            goto L1b
        Lb1:
            r1 = r2
        Lb2:
            if (r1 != 0) goto Lc1
            android.widget.LinearLayout r0 = r10.mainLayout
            android.content.Context r1 = r10.context
            java.lang.String r2 = "No issues found"
            com.google.android.material.textview.MaterialTextView r1 = com.argusoft.sewa.android.app.component.MyStaticComponents.generateInstructionView(r1, r2)
            r0.addView(r1)
        Lc1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.component.MyListInColorComponent.generateList():void");
    }
}
