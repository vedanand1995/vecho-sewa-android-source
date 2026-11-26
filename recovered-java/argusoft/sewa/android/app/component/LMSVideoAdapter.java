package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LibraryConstants;
import com.argusoft.sewa.android.app.databean.LmsScreenDataBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LMSVideoAdapter extends BaseAdapter {
    private Map<Integer, View> adapterView = new HashMap();
    private int colCount;
    private Context context;
    private String fileType;
    private List<LmsScreenDataBean> libraryList;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public LMSVideoAdapter(Context context, List<LmsScreenDataBean> list, String str) {
        this.context = context;
        this.libraryList = list;
        this.fileType = str;
        setColCountAccordingToFileType();
    }

    private void setColCountAccordingToFileType() {
        String str = this.fileType;
        str.hashCode();
        if (str.equals(LibraryConstants.IMAGES) || str.equals(LibraryConstants.VIDEOS)) {
            this.colCount = 2;
        } else {
            this.colCount = 3;
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<LmsScreenDataBean> list = this.libraryList;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        List<LmsScreenDataBean> list = this.libraryList;
        if (list != null) {
            return list.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        List<LmsScreenDataBean> list;
        View view2 = this.adapterView.get(Integer.valueOf(i));
        if (view2 != null || (list = this.libraryList) == null || list.isEmpty()) {
            return view2;
        }
        LmsScreenDataBean lmsScreenDataBean = this.libraryList.get(i);
        View viewAccordingToFileType = getViewAccordingToFileType();
        setRightBorderBackground(viewAccordingToFileType.findViewById(R.id.card_view), i);
        if (lmsScreenDataBean.image != null) {
            ((ImageView) viewAccordingToFileType.findViewById(R.id.card_imageView)).setImageBitmap(lmsScreenDataBean.image);
        }
        ((TextView) viewAccordingToFileType.findViewById(R.id.card_textView)).setText(lmsScreenDataBean.name);
        this.adapterView.put(Integer.valueOf(i), viewAccordingToFileType);
        return viewAccordingToFileType;
    }

    private void setRightBorderBackground(View view, int i) {
        String str = this.fileType;
        str.hashCode();
        switch (str) {
            case "UNSUPPORTED FILES":
            case "PDFS":
            case "FOLDERS":
                if (i % this.colCount != 0) {
                    view.setBackground(this.context.getDrawable(R.drawable.line_background_left));
                    break;
                }
                break;
        }
    }

    private View getViewAccordingToFileType() {
        String str = this.fileType;
        str.hashCode();
        if (str.equals(LibraryConstants.IMAGES) || str.equals(LibraryConstants.VIDEOS)) {
            View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.library_video_cards, (ViewGroup) null);
            viewInflate.setPadding(-20, 0, 0, 0);
            return viewInflate;
        }
        View viewInflate2 = LayoutInflater.from(this.context).inflate(R.layout.library_folder_cards, (ViewGroup) null);
        viewInflate2.setPadding(-20, 0, 0, 0);
        return viewInflate2;
    }
}
