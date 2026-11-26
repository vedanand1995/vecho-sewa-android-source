package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaPlayer;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.content.FileProvider;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.CustomImageViewerActivity_;
import com.argusoft.sewa.android.app.activity.CustomPDFViewerActivity_;
import com.argusoft.sewa.android.app.activity.CustomVideoPlayerActivity;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.model.AnnouncementBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import com.google.firebase.messaging.ServiceStarter;
import com.j256.ormlite.dao.Dao;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class AnnouncementArrayAdaptor extends ArrayAdapter<AnnouncementBean> {
    private Dao<AnnouncementBean, Integer> announcementBeansDao;
    private Map<Integer, Bitmap> bitmapMap;
    private Context context;
    private List<AnnouncementBean> list;
    private MyAudioPlayer myAudioPlayer;
    private Map<Integer, View.OnClickListener> onClickMap;
    private MediaPlayer player;

    public AnnouncementArrayAdaptor(Context context, List<AnnouncementBean> list, Dao<AnnouncementBean, Integer> dao) {
        super(context, 0, list);
        this.context = context;
        this.list = list;
        this.announcementBeansDao = dao;
        this.onClickMap = new HashMap();
        this.bitmapMap = new HashMap();
    }

    private Bitmap getScaledBitmap(Bitmap bitmap) {
        int i;
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width == 0 || height == 0) {
            return bitmap;
        }
        float f = width / height;
        int i2 = ServiceStarter.ERROR_UNKNOWN;
        if (f < 1.0f) {
            i2 = (int) (ServiceStarter.ERROR_UNKNOWN * f);
            i = ServiceStarter.ERROR_UNKNOWN;
        } else {
            i = (int) (ServiceStarter.ERROR_UNKNOWN / f);
        }
        return Bitmap.createScaledBitmap(bitmap, i2, i, true);
    }

    private void manageAnnouncementImageData(int i, final AnnouncementBean announcementBean, LinearLayout linearLayout) {
        String str = SewaConstants.DIR_DOWNLOADED + announcementBean.getFileName();
        ImageView imageView = (ImageView) linearLayout.findViewById(R.id.image);
        Bitmap scaledBitmap = this.bitmapMap.get(Integer.valueOf(i));
        if (this.bitmapMap.get(Integer.valueOf(i)) == null) {
            scaledBitmap = getScaledBitmap(BitmapFactory.decodeFile(str));
        }
        if (scaledBitmap != null) {
            imageView.setImageBitmap(scaledBitmap);
            imageView.setVisibility(0);
            this.bitmapMap.put(Integer.valueOf(i), scaledBitmap);
        }
        View.OnClickListener onClickListener = this.onClickMap.get(Integer.valueOf(i));
        if (onClickListener == null) {
            onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.AnnouncementArrayAdaptor.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        AnnouncementBean announcementBean2 = announcementBean;
                        announcementBean2.setIsPlayedAnnouncement(announcementBean2.getIsPlayedAnnouncement() + 1);
                        AnnouncementArrayAdaptor.this.announcementBeansDao.update((Dao) announcementBean);
                    } catch (Exception unused) {
                        Log.d(getClass().getSimpleName(), "Playing the announcement");
                    }
                    String str2 = SewaConstants.DIR_DOWNLOADED + announcementBean.getFileName();
                    if (!UtilBean.isFileExists(str2)) {
                        SewaUtil.generateToast(AnnouncementArrayAdaptor.this.context, LabelConstants.FILE_DOES_NOT_EXIST);
                        return;
                    }
                    Intent intent = new Intent(AnnouncementArrayAdaptor.this.context, (Class<?>) CustomImageViewerActivity_.class);
                    intent.putExtra("path", str2);
                    intent.putExtra(FieldNameConstants.FILE_NAME, announcementBean.getFileName());
                    AnnouncementArrayAdaptor.this.context.startActivity(intent);
                }
            };
        }
        imageView.setOnClickListener(onClickListener);
    }

    private void manageAnnouncementPdfData(int i, final AnnouncementBean announcementBean, LinearLayout linearLayout) {
        ImageView imageView = (ImageView) linearLayout.findViewById(R.id.document);
        imageView.setVisibility(0);
        View.OnClickListener onClickListener = this.onClickMap.get(Integer.valueOf(i));
        if (onClickListener == null) {
            onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.AnnouncementArrayAdaptor.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        AnnouncementBean announcementBean2 = announcementBean;
                        announcementBean2.setIsPlayedAnnouncement(announcementBean2.getIsPlayedAnnouncement() + 1);
                        AnnouncementArrayAdaptor.this.announcementBeansDao.update((Dao) announcementBean);
                    } catch (Exception unused) {
                        Log.d(getClass().getSimpleName(), "Playing the announcement");
                    }
                    String str = SewaConstants.DIR_DOWNLOADED + announcementBean.getFileName();
                    if (!UtilBean.isFileExists(str)) {
                        SewaUtil.generateToast(AnnouncementArrayAdaptor.this.context, LabelConstants.FILE_DOES_NOT_EXIST);
                        return;
                    }
                    Intent intent = new Intent(AnnouncementArrayAdaptor.this.context, (Class<?>) CustomPDFViewerActivity_.class);
                    intent.putExtra("path", str);
                    intent.putExtra(FieldNameConstants.FILE_NAME, announcementBean.getFileName());
                    AnnouncementArrayAdaptor.this.context.startActivity(intent);
                }
            };
        }
        imageView.setOnClickListener(onClickListener);
    }

    private void manageAnnouncementVideoData(int i, final AnnouncementBean announcementBean, LinearLayout linearLayout) {
        ImageView imageView = (ImageView) linearLayout.findViewById(R.id.video_play);
        ImageView imageView2 = (ImageView) linearLayout.findViewById(R.id.video);
        Bitmap bitmapCreateVideoThumbnail = this.bitmapMap.get(Integer.valueOf(i));
        if (bitmapCreateVideoThumbnail == null) {
            bitmapCreateVideoThumbnail = ThumbnailUtils.createVideoThumbnail(SewaConstants.DIR_DOWNLOADED + announcementBean.getFileName(), 1);
            this.bitmapMap.put(Integer.valueOf(i), bitmapCreateVideoThumbnail);
        }
        imageView2.setVisibility(0);
        imageView2.setImageBitmap(bitmapCreateVideoThumbnail);
        imageView.setVisibility(0);
        View.OnClickListener onClickListener = this.onClickMap.get(Integer.valueOf(i));
        if (onClickListener == null) {
            onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.AnnouncementArrayAdaptor.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        AnnouncementBean announcementBean2 = announcementBean;
                        announcementBean2.setIsPlayedAnnouncement(announcementBean2.getIsPlayedAnnouncement() + 1);
                        AnnouncementArrayAdaptor.this.announcementBeansDao.update((Dao) announcementBean);
                    } catch (Exception unused) {
                        Log.d(getClass().getSimpleName(), "Playing the announcement");
                    }
                    String strSubstring = announcementBean.getFileName().substring(announcementBean.getFileName().lastIndexOf(GlobalTypes.DOT_SEPARATOR) + 1);
                    String str = SewaConstants.DIR_DOWNLOADED + announcementBean.getFileName();
                    if (UtilBean.isFileExists(str)) {
                        Uri uriForFile = FileProvider.getUriForFile(AnnouncementArrayAdaptor.this.context, AnnouncementArrayAdaptor.this.context.getApplicationContext().getPackageName() + ".provider", new File(str));
                        AnnouncementArrayAdaptor announcementArrayAdaptor = AnnouncementArrayAdaptor.this;
                        announcementArrayAdaptor.player = MediaPlayer.create(announcementArrayAdaptor.context, uriForFile);
                        if (AnnouncementArrayAdaptor.this.player != null) {
                            Intent intent = new Intent(AnnouncementArrayAdaptor.this.context, (Class<?>) CustomVideoPlayerActivity.class);
                            intent.putExtra(GlobalTypes.DATA_MAP, announcementBean.getFileName());
                            intent.putExtra("isFromAnnouncement", Boolean.TRUE);
                            AnnouncementArrayAdaptor.this.context.startActivity(intent);
                            return;
                        }
                        if (!GlobalTypes.SUPPORTED_EXTENSIONS.contains(strSubstring)) {
                            SewaUtil.generateToast(AnnouncementArrayAdaptor.this.context, LabelConstants.FILE_IS_NOT_SUPPORTED);
                            return;
                        } else {
                            SewaUtil.generateToast(AnnouncementArrayAdaptor.this.context, LabelConstants.FILE_CORRUPTED);
                            return;
                        }
                    }
                    SewaUtil.generateToast(AnnouncementArrayAdaptor.this.context, LabelConstants.FILE_DOES_NOT_EXIST);
                }
            };
        }
        imageView.setOnClickListener(onClickListener);
    }

    private void manageAnnouncementAudioData(int i, final AnnouncementBean announcementBean, LinearLayout linearLayout) {
        ImageView imageView = (ImageView) linearLayout.findViewById(R.id.audio);
        imageView.setVisibility(0);
        View.OnClickListener onClickListener = this.onClickMap.get(Integer.valueOf(i));
        if (onClickListener == null) {
            onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.AnnouncementArrayAdaptor.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        AnnouncementBean announcementBean2 = announcementBean;
                        announcementBean2.setIsPlayedAnnouncement(announcementBean2.getIsPlayedAnnouncement() + 1);
                        AnnouncementArrayAdaptor.this.announcementBeansDao.update((Dao) announcementBean);
                    } catch (Exception unused) {
                        Log.d(getClass().getSimpleName(), "Playing the announcement");
                    }
                    String strSubstring = announcementBean.getFileName().substring(announcementBean.getFileName().lastIndexOf(GlobalTypes.DOT_SEPARATOR) + 1);
                    String str = SewaConstants.DIR_DOWNLOADED + announcementBean.getFileName();
                    if (UtilBean.isFileExists(str)) {
                        Uri uriForFile = FileProvider.getUriForFile(AnnouncementArrayAdaptor.this.context, AnnouncementArrayAdaptor.this.context.getApplicationContext().getPackageName() + ".provider", new File(str));
                        AnnouncementArrayAdaptor announcementArrayAdaptor = AnnouncementArrayAdaptor.this;
                        announcementArrayAdaptor.player = MediaPlayer.create(announcementArrayAdaptor.context, uriForFile);
                        if (AnnouncementArrayAdaptor.this.player != null) {
                            AnnouncementArrayAdaptor.this.myAudioPlayer = new MyAudioPlayer(AnnouncementArrayAdaptor.this.context, announcementBean.getSubject(), AnnouncementArrayAdaptor.this.player);
                            AnnouncementArrayAdaptor.this.myAudioPlayer.show();
                            return;
                        } else if (!GlobalTypes.SUPPORTED_EXTENSIONS.contains(strSubstring)) {
                            SewaUtil.generateToast(AnnouncementArrayAdaptor.this.context, LabelConstants.FILE_IS_NOT_SUPPORTED);
                            return;
                        } else {
                            SewaUtil.generateToast(AnnouncementArrayAdaptor.this.context, LabelConstants.FILE_CORRUPTED);
                            return;
                        }
                    }
                    SewaUtil.generateToast(AnnouncementArrayAdaptor.this.context, LabelConstants.FILE_DOES_NOT_EXIST);
                }
            };
        }
        imageView.setOnClickListener(onClickListener);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        AnnouncementBean announcementBean = this.list.get(i);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.announcement_card, (ViewGroup) null);
        if (announcementBean.getFileName() != null) {
            String strSubstring = announcementBean.getFileName().substring(announcementBean.getFileName().lastIndexOf(GlobalTypes.DOT_SEPARATOR) + 1);
            if (strSubstring.equalsIgnoreCase("jpg") || strSubstring.equalsIgnoreCase("jpeg") || strSubstring.equalsIgnoreCase("png")) {
                manageAnnouncementImageData(i, announcementBean, linearLayout);
            } else if (strSubstring.equalsIgnoreCase("pdf")) {
                manageAnnouncementPdfData(i, announcementBean, linearLayout);
            } else if (strSubstring.equalsIgnoreCase("3gp") || strSubstring.equalsIgnoreCase("mp4")) {
                manageAnnouncementVideoData(i, announcementBean, linearLayout);
            } else {
                manageAnnouncementAudioData(i, announcementBean, linearLayout);
            }
        }
        ((MaterialTextView) linearLayout.findViewById(R.id.description)).setText(announcementBean.getSubject());
        ((MaterialTextView) linearLayout.findViewById(R.id.published_on)).setText(UtilBean.convertDateToString(announcementBean.getPublishedOn().longValue(), false, true, true));
        return linearLayout;
    }
}
