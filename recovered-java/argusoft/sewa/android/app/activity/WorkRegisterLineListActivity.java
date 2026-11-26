package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.pdf.PdfDocument;
import android.os.Bundle;
import android.os.Environment;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.textview.MaterialTextView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class WorkRegisterLineListActivity extends MenuActivity {
    private LinearLayout bodyLayoutContainer;
    private LinearLayout globalPanel;
    private MyAlertDialog myAlertDialog;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private String visitId = null;
    private String serviceType = null;
    private List<LinkedHashMap<String, Object>> resultList1 = new ArrayList();

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.visitId = extras.getString("visitId");
            this.serviceType = extras.getString("serviceType");
        }
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.WORK_REGISTER_TITLE));
        setSubTitle(null);
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, null);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.globalPanel.removeView((LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER));
        setBodyDetail();
    }

    private void setBodyDetail() {
        showNotOnlineMessage();
        retrieveData();
    }

    public void showNotOnlineMessage() {
        if (this.sewaService.isOnline()) {
            return;
        }
        hideProcessDialog();
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterLineListActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WorkRegisterLineListActivity.this.myAlertDialog.dismiss();
                WorkRegisterLineListActivity.this.navigateToHomeScreen(false);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
        this.myAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterLineListActivity.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                WorkRegisterLineListActivity.this.myAlertDialog.dismiss();
                WorkRegisterLineListActivity.this.navigateToHomeScreen(false);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void retrieveData() {
        /*
            Method dump skipped, instructions count: 958
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.WorkRegisterLineListActivity.retrieveData():void");
    }

    public void addFloatingActionButton(final List<LinkedHashMap<String, Object>> list, final List<String> list2) {
        FloatingActionButton floatingActionButton = new FloatingActionButton(this);
        floatingActionButton.setImageResource(R.drawable.ic_print);
        floatingActionButton.setBackgroundTintList(ContextCompat.getColorStateList(this.context, R.color.colorPrimary));
        floatingActionButton.setImageTintList(ContextCompat.getColorStateList(this.context, R.color.buttonTextColor));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = BadgeDrawable.BOTTOM_END;
        layoutParams.setMargins(0, 0, 120, 150);
        this.globalPanel.addView(floatingActionButton, layoutParams);
        floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterLineListActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws IOException {
                WorkRegisterLineListActivity.this.printIncentiveDetails(view, list, list2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void printIncentiveDetails(View view, List<LinkedHashMap<String, Object>> list, List<String> list2) throws IOException {
        createPdf(list, list2);
    }

    public void createPdf(List<LinkedHashMap<String, Object>> list, List<String> list2) throws IOException {
        PdfDocument pdfDocument = new PdfDocument();
        Paint paint = new Paint();
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint.setTextSize(18.0f);
        int i = 1;
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        Iterator<LinkedHashMap<String, Object>> it = list.iterator();
        while (it.hasNext()) {
            LinkedHashMap<String, Object> next = it.next();
            PdfDocument.Page pageStartPage = pdfDocument.startPage(new PdfDocument.PageInfo.Builder(595, 842, list.indexOf(next) + i).create());
            Canvas canvas = pageStartPage.getCanvas();
            float f = 40;
            canvas.drawText(UtilBean.getMyLabel(list2.get(0).toString()), f, f, paint);
            paint.setStrokeWidth(2.0f);
            float f2 = 50;
            float f3 = 555;
            canvas.drawLine(f, f2, f3, f2, paint);
            paint.setTextSize(16.0f);
            float f4 = 80;
            canvas.drawText(UtilBean.getMyLabel("Question"), f, f4, paint);
            float f5 = 395;
            canvas.drawText(UtilBean.getMyLabel("Answer "), f5, f4, paint);
            paint.setStrokeWidth(1.0f);
            float f6 = 95;
            Iterator<LinkedHashMap<String, Object>> it2 = it;
            canvas.drawLine(f, f6, f3, f6, paint);
            paint.setTextSize(14.0f);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            int i2 = 115;
            for (Map.Entry<String, Object> entry : next.entrySet()) {
                float f7 = i2;
                canvas.drawText(entry.getKey(), f, f7, paint);
                if (entry.getValue() != null) {
                    canvas.drawText(entry.getValue().toString(), f5, f7, paint);
                } else {
                    canvas.drawText(LabelConstants.N_A, f5, f7, paint);
                }
                float f8 = i2 + 25;
                canvas.drawLine(f, f8, f3, f8, paint);
                i2 += 40;
            }
            pdfDocument.finishPage(pageStartPage);
            it = it2;
            i = 1;
        }
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).toString(), list2.get(0) + ".pdf");
        try {
            pdfDocument.writeTo(new FileOutputStream(file));
            SewaUtil.generateToast(this, "PDF saved to " + file.getAbsolutePath());
        } catch (IOException e) {
            e.printStackTrace();
            SewaUtil.generateToast(this, "Error saving PDF: " + e.getMessage());
        }
        pdfDocument.close();
    }

    public void addLineListDetails(List<LinkedHashMap<String, Object>> list, String str, String str2) {
        if (str != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, str));
        }
        if (str2 != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, str2));
        }
        Iterator<LinkedHashMap<String, Object>> it = list.iterator();
        while (it.hasNext()) {
            for (Map.Entry<String, Object> entry : it.next().entrySet()) {
                if (entry.getKey() != null && !entry.getKey().isEmpty() && entry.getValue() != null && !entry.getValue().toString().isEmpty()) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(entry.getKey())));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMyLabel(entry.getValue().toString())));
                }
            }
        }
    }

    public void addTable(List<LinkedHashMap<String, Object>> list) {
        TableLayout tableLayout = new TableLayout(this);
        tableLayout.setPadding(10, 10, 10, 10);
        tableLayout.setLayoutParams(new TableLayout.LayoutParams(-1, -2));
        int i = 1;
        tableLayout.addView(createTableRow(UtilBean.getMyLabel(LabelConstants.FIELD), UtilBean.getMyLabel(LabelConstants.VALUE), true), 0);
        Iterator<LinkedHashMap<String, Object>> it = list.iterator();
        while (it.hasNext()) {
            for (Map.Entry<String, Object> entry : it.next().entrySet()) {
                tableLayout.addView(createTableRow(entry.getKey(), entry.getValue(), false), i);
                i++;
            }
        }
        this.bodyLayoutContainer.addView(tableLayout);
        hideProcessDialog();
    }

    private TableRow createTableRow(String str, Object obj, boolean z) {
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(-1);
        TableRow tableRow = new TableRow(this);
        tableRow.setPadding(10, 15, 10, 15);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            tableRow.setBackgroundResource(R.drawable.table_row_selector);
        } else {
            tableRow.setBackgroundResource(R.drawable.spinner_item_border);
        }
        tableRow.setLayoutParams(layoutParams);
        MaterialTextView materialTextView = new MaterialTextView(this.context);
        materialTextView.setGravity(17);
        materialTextView.setPadding(10, 10, 10, 10);
        materialTextView.setText(str);
        if (z) {
            materialTextView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        tableRow.addView(materialTextView, new TableRow.LayoutParams(-2, -2, 2.0f));
        MaterialTextView materialTextView2 = new MaterialTextView(this.context);
        materialTextView2.setGravity(17);
        materialTextView2.setPadding(10, 10, 10, 10);
        if (obj != null) {
            materialTextView2.setText(obj.toString());
        } else {
            materialTextView2.setText(LabelConstants.N_A);
        }
        if (z) {
            materialTextView2.setTypeface(Typeface.DEFAULT_BOLD);
        }
        tableRow.addView(materialTextView2, new TableRow.LayoutParams(-2, -2, 1.0f));
        return tableRow;
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }
}
