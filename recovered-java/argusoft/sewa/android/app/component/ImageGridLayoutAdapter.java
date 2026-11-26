package com.argusoft.sewa.android.app.component;

import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.databean.ImageDataBean;
import com.argusoft.sewa.android.app.util.FileUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ImageGridLayoutAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final List<ImageDataBean> imageDataBeans;
    private int imageLength;
    private final View.OnClickListener onClickListener;
    private final List<String> uniqueIdList;

    public ImageGridLayoutAdapter(int i, View.OnClickListener onClickListener) {
        ArrayList arrayList = new ArrayList();
        this.imageDataBeans = arrayList;
        arrayList.add(null);
        this.uniqueIdList = new ArrayList();
        this.onClickListener = onClickListener;
        this.imageLength = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_image_view, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        ImageDataBean imageDataBean = this.imageDataBeans.get(i);
        if (imageDataBean != null && imageDataBean.getFilePath() != null) {
            viewHolder.imageView.setTag(imageDataBean.getFilePath());
            if (imageDataBean.getFromGallery().booleanValue()) {
                viewHolder.imageView.setImageURI(imageDataBean.getFileUri());
            } else {
                viewHolder.imageView.setImageBitmap(BitmapFactory.decodeFile(SewaConstants.DIR_IMAGE + imageDataBean.getFilePath()));
            }
            viewHolder.closeImageView.setVisibility(0);
            return;
        }
        viewHolder.imageView.setImageResource(R.drawable.camera);
        viewHolder.imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        viewHolder.closeImageView.setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.imageDataBeans.size();
    }

    public void addImage(String str, String str2, Uri uri, boolean z) {
        this.uniqueIdList.add(str);
        this.imageDataBeans.add(getItemCount() - 1, new ImageDataBean(str, str2, uri, Boolean.valueOf(z)));
        if (this.imageDataBeans.size() > this.imageLength) {
            this.imageDataBeans.remove((Object) null);
        }
        notifyDataSetChanged();
    }

    public String getUniqueIdList() {
        return TextUtils.join(GlobalTypes.COMMA, this.uniqueIdList);
    }

    public class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        ImageView closeImageView;
        ImageView imageView;

        public ViewHolder(View view) {
            super(view);
            this.imageView = (ImageView) view.findViewById(R.id.imageView);
            this.closeImageView = (ImageView) view.findViewById(R.id.closeImageView);
            this.imageView.setOnClickListener(this);
            this.closeImageView.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == R.id.imageView) {
                if (((String) view.getTag()) != null || ImageGridLayoutAdapter.this.imageDataBeans.size() > ImageGridLayoutAdapter.this.imageLength) {
                    return;
                }
                ImageGridLayoutAdapter.this.onClickListener.onClick(view);
                return;
            }
            if (view.getId() == R.id.closeImageView) {
                if (Boolean.FALSE.equals(((ImageDataBean) ImageGridLayoutAdapter.this.imageDataBeans.get(getAdapterPosition())).getFromGallery())) {
                    FileUtils.getInstance().removeFile(((ImageDataBean) ImageGridLayoutAdapter.this.imageDataBeans.get(getAdapterPosition())).getFilePath());
                }
                ImageGridLayoutAdapter.this.imageDataBeans.remove(getAdapterPosition());
                ImageGridLayoutAdapter.this.uniqueIdList.remove(getAdapterPosition());
                if (ImageGridLayoutAdapter.this.imageDataBeans.size() <= ImageGridLayoutAdapter.this.imageLength && ImageGridLayoutAdapter.this.imageDataBeans.get(ImageGridLayoutAdapter.this.imageDataBeans.size() - 1) != null) {
                    ImageGridLayoutAdapter.this.imageDataBeans.add(null);
                }
                view.setTag(ImageGridLayoutAdapter.this.getUniqueIdList());
                ImageGridLayoutAdapter.this.onClickListener.onClick(view);
                ImageGridLayoutAdapter.this.notifyDataSetChanged();
            }
        }
    }
}
