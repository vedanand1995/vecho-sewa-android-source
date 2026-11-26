package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.pdf.PdfRenderer;
import android.os.ParcelFileDescriptor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.databean.WorkLogScreenDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class MyWorkLogAdapter extends BaseAdapter {
    private final Map<Integer, View> adapterView = new HashMap();
    private final Context context;
    private final List<WorkLogScreenDataBean> myLogs;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public abstract void retryUploading(UploadFileDataBean uploadFileDataBean);

    public MyWorkLogAdapter(Context context, List<WorkLogScreenDataBean> list) {
        this.context = context;
        this.myLogs = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<WorkLogScreenDataBean> list = this.myLogs;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        List<WorkLogScreenDataBean> list = this.myLogs;
        if (list != null) {
            return list.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        List<WorkLogScreenDataBean> list;
        View view2 = this.adapterView.get(Integer.valueOf(i));
        if (view2 != null || (list = this.myLogs) == null || list.isEmpty()) {
            return view2;
        }
        final WorkLogScreenDataBean workLogScreenDataBean = this.myLogs.get(i);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.worklog_list_view, (ViewGroup) null);
        LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(R.id.llChild);
        ImageView imageView = (ImageView) linearLayout.findViewById(R.id.work_log_status_image);
        if (workLogScreenDataBean.getUploadFileDataBean() != null && !workLogScreenDataBean.getUploadFileDataBean().isEmpty()) {
            Iterator<UploadFileDataBean> it = workLogScreenDataBean.getUploadFileDataBean().iterator();
            while (it.hasNext()) {
                linearLayout2.addView(addChildView(it.next()));
            }
        }
        if (workLogScreenDataBean.getImage() != -1) {
            imageView.setImageResource(workLogScreenDataBean.getImage());
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        TextView textView = (TextView) linearLayout.findViewById(R.id.work_log_date);
        if (workLogScreenDataBean.getDate() != null) {
            textView.setText(workLogScreenDataBean.getDate());
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
        }
        TextView textView2 = (TextView) linearLayout.findViewById(R.id.work_log_name);
        if (workLogScreenDataBean.getName() != null) {
            textView2.setText(UtilBean.getMyLabel(workLogScreenDataBean.getName()));
            textView2.setVisibility(0);
        } else {
            textView2.setVisibility(8);
        }
        TextView textView3 = (TextView) linearLayout.findViewById(R.id.work_log_task);
        if (workLogScreenDataBean.getTask() != null) {
            textView3.setText(UtilBean.getMyLabel(workLogScreenDataBean.getTask()));
            textView3.setVisibility(0);
        } else {
            textView3.setVisibility(8);
        }
        final View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyWorkLogAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                MyWorkLogAdapter.lambda$getView$0(view3);
            }
        };
        ImageView imageView2 = (ImageView) linearLayout.findViewById(R.id.work_log_info);
        if (workLogScreenDataBean.getMessage() != null) {
            imageView2.setVisibility(0);
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyWorkLogAdapter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.m571xc7085a74(workLogScreenDataBean, onClickListener, view3);
                }
            });
        } else {
            imageView2.setVisibility(8);
        }
        this.adapterView.put(Integer.valueOf(i), linearLayout);
        return linearLayout;
    }

    static /* synthetic */ void lambda$getView$0(View view) {
        if (SharedStructureData.workLogAlert != null) {
            SharedStructureData.workLogAlert.dismiss();
        }
    }

    /* renamed from: lambda$getView$1$com-argusoft-sewa-android-app-component-MyWorkLogAdapter, reason: not valid java name */
    /* synthetic */ void m571xc7085a74(WorkLogScreenDataBean workLogScreenDataBean, View.OnClickListener onClickListener, View view) {
        SharedStructureData.workLogAlert = new MyAlertDialog(this.context, workLogScreenDataBean.getMessage(), onClickListener, DynamicUtils.BUTTON_OK);
        SharedStructureData.workLogAlert.show();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00f0 -> B:67:0x00f3). Please report as a decompilation issue!!! */
    private CardView addChildView(final UploadFileDataBean uploadFileDataBean) throws IOException {
        CardView cardView = (CardView) LayoutInflater.from(this.context).inflate(R.layout.worklog_list_child_view, (ViewGroup) null);
        ImageView imageView = (ImageView) cardView.findViewById(R.id.work_log_file_status_image);
        final TextView textView = (TextView) cardView.findViewById(R.id.work_log_status);
        if (uploadFileDataBean.getFileType() != null && uploadFileDataBean.getFileType().contains(AadharScanUtil.IMAGE)) {
            imageView.setImageResource(R.drawable.ic_image);
        } else if (uploadFileDataBean.getFileType() == null || uploadFileDataBean.getFileType().contains("pdf")) {
            imageView.setImageResource(R.drawable.ic_pdf);
        } else {
            imageView.setImageResource(R.drawable.ic_pdf);
        }
        imageView.setImageTintList(ContextCompat.getColorStateList(this.context, R.color.colorPrimary));
        if (uploadFileDataBean.getStatus().equalsIgnoreCase("P") || uploadFileDataBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_ERROR)) {
            try {
                File file = new File(uploadFileDataBean.getFilePath());
                if (file.exists()) {
                    if (uploadFileDataBean.getFileType() != null && uploadFileDataBean.getFileType().contains(AadharScanUtil.IMAGE)) {
                        imageView.setImageBitmap(BitmapFactory.decodeFile(file.getAbsolutePath()));
                        imageView.setImageTintList(null);
                    } else if (uploadFileDataBean.getFileType() != null && uploadFileDataBean.getFileType().contains("pdf")) {
                        ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, 268435456);
                        PdfRenderer pdfRenderer = new PdfRenderer(parcelFileDescriptorOpen);
                        PdfRenderer.Page pageOpenPage = pdfRenderer.openPage(0);
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(pageOpenPage.getWidth(), pageOpenPage.getHeight(), Bitmap.Config.ARGB_8888);
                        pageOpenPage.render(bitmapCreateBitmap, null, null, 1);
                        pageOpenPage.close();
                        pdfRenderer.close();
                        parcelFileDescriptorOpen.close();
                        imageView.setImageBitmap(bitmapCreateBitmap);
                        imageView.setImageTintList(null);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (uploadFileDataBean.getStatus().equalsIgnoreCase("S")) {
            textView.setText("Synced");
            textView.setBackgroundColor(ContextCompat.getColor(this.context, R.color.colorAccent));
            textView.setOnClickListener(null);
        } else if (uploadFileDataBean.getStatus().equalsIgnoreCase("U")) {
            textView.setText("Uploading...");
            textView.setBackgroundColor(ContextCompat.getColor(this.context, R.color.yellow));
            textView.setOnClickListener(null);
        } else if ((uploadFileDataBean.getStatus().equalsIgnoreCase("P") || uploadFileDataBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_ERROR)) && uploadFileDataBean.getParentStatus().equalsIgnoreCase("S")) {
            textView.setText(LabelConstants.RETRY);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyWorkLogAdapter$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m570xbade8974(textView, uploadFileDataBean, view);
                }
            });
            textView.setBackgroundColor(ContextCompat.getColor(this.context, R.color.colorPrimary));
        } else {
            textView.setText("Pending");
            textView.setOnClickListener(null);
            textView.setBackgroundColor(ContextCompat.getColor(this.context, R.color.colorPrimary));
        }
        TextView textView2 = (TextView) cardView.findViewById(R.id.work_log_file_date);
        if (uploadFileDataBean.getFileName() != null) {
            if (uploadFileDataBean.getFileType() != null) {
                if (uploadFileDataBean.getFileType().equalsIgnoreCase("image/png")) {
                    textView2.setText(uploadFileDataBean.getFileName().concat(".png"));
                } else if (uploadFileDataBean.getFileType().equalsIgnoreCase("image/jpeg")) {
                    textView2.setText(uploadFileDataBean.getFileName().concat(".jpeg"));
                } else if (uploadFileDataBean.getFileType().equalsIgnoreCase("image/jpg")) {
                    textView2.setText(uploadFileDataBean.getFileName().concat(GlobalTypes.IMAGE_CAPTURE_FORMAT));
                } else if (uploadFileDataBean.getFileType().equalsIgnoreCase("application/pdf")) {
                    textView2.setText(uploadFileDataBean.getFileName().concat(".pdf"));
                } else {
                    textView2.setText(uploadFileDataBean.getFileName());
                }
            } else {
                textView2.setText(uploadFileDataBean.getFileName());
            }
            textView2.setVisibility(0);
        } else {
            textView2.setVisibility(8);
        }
        return cardView;
    }

    /* renamed from: lambda$addChildView$2$com-argusoft-sewa-android-app-component-MyWorkLogAdapter, reason: not valid java name */
    /* synthetic */ void m570xbade8974(TextView textView, UploadFileDataBean uploadFileDataBean, View view) {
        textView.setText("Uploading...");
        textView.setBackgroundColor(ContextCompat.getColor(this.context, R.color.yellow));
        retryUploading(uploadFileDataBean);
        if (uploadFileDataBean.getStatus().equalsIgnoreCase("S")) {
            textView.setText("Synced");
            textView.setBackgroundColor(ContextCompat.getColor(this.context, R.color.colorAccent));
        }
        notifyDataSetChanged();
    }
}
