package com.argusoft.sewa.android.app.component.listeners;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.google.gson.Gson;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public class ORDTTestStartListner implements View.OnClickListener {
    private ImageView actionBtn;
    private Activity activity;
    private Boolean flag = false;
    private Boolean isTrainingMode;
    private QueFormBean queFormBean;

    public ORDTTestStartListner(Activity activity, QueFormBean queFormBean, ImageView imageView) {
        this.activity = activity;
        this.queFormBean = queFormBean;
        this.actionBtn = imageView;
    }

    public void resetClick() {
        this.flag = false;
        this.actionBtn.setAlpha(1.0f);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (Boolean.TRUE.equals(this.flag)) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.addFlags(65536);
            for (ResolveInfo resolveInfo : this.activity.getPackageManager().queryIntentActivities(intent, 0)) {
                if (resolveInfo.activityInfo.packageName.equals("org.auderenow.openrdt.reader")) {
                    this.actionBtn.setAlpha(0.6f);
                    Intent intent2 = new Intent("android.intent.action.MAIN");
                    intent2.addCategory("android.intent.category.LAUNCHER");
                    intent2.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
                    intent2.setFlags(0);
                    SharedStructureData.currentQuestion = DynamicUtils.getLoopId(this.queFormBean);
                    String string = UUID.randomUUID().toString();
                    String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_NAME);
                    intent2.putExtra("requestId", string);
                    if (this.queFormBean.getDatamap() != null) {
                        for (Map.Entry entry : ((Map) new Gson().fromJson(this.queFormBean.getDatamap(), Map.class)).entrySet()) {
                            if (((String) entry.getKey()).equals("trainingMode")) {
                                Boolean boolValueOf = Boolean.valueOf(String.valueOf(entry.getValue()).equalsIgnoreCase("true"));
                                this.isTrainingMode = boolValueOf;
                                intent2.putExtra("trainingMode", boolValueOf);
                            } else {
                                intent2.putExtra((String) entry.getKey(), (String) entry.getValue());
                            }
                        }
                    }
                    LoginBean currentLoggedInUser = SharedStructureData.sewaService.getCurrentLoggedInUser();
                    if (currentLoggedInUser != null) {
                        intent2.putExtra("practitionerId", currentLoggedInUser.getUsername());
                    }
                    intent2.putExtra("partnerId", "Techo+");
                    intent2.putExtra("patientName", str);
                    intent2.putExtra("includeCapturedImageUri", true);
                    this.flag = true;
                    if (Boolean.TRUE.equals(this.isTrainingMode)) {
                        SharedStructureData.ordtIntent = intent2;
                        intent2.putExtra("testProcessingStartTime", new Date());
                        this.activity.startActivityForResult(intent2, 1015);
                        return;
                    }
                    this.activity.startActivityForResult(intent2, 1014);
                    return;
                }
            }
            SewaUtil.generateToast(this.activity, LabelConstants.ORDT_READER_APPLICATION_NOT_FOUND_ALERT);
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }
}
