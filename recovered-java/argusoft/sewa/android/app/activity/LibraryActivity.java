package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.media.ThumbnailUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAudioPlayer;
import com.argusoft.sewa.android.app.component.MyLibraryAdapter;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.listeners.MyExpandedGridView;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LibraryConstants;
import com.argusoft.sewa.android.app.core.impl.LibraryDownloadServiceImpl;
import com.argusoft.sewa.android.app.databean.LibraryDataBean;
import com.argusoft.sewa.android.app.databean.LibraryScreenDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class LibraryActivity extends MenuActivity implements AdapterView.OnItemClickListener {
    private LinearLayout layout;
    LibraryDownloadServiceImpl libraryDownloadService;
    private int currentLevel = 0;
    private String category = "";
    private Set<String> distinctCategory = new HashSet();
    private List<String> foldersInCurrentLevel = new ArrayList();
    private List<LibraryDataBean> libBeansInCurrentLevel = new LinkedList();
    private List<LibraryScreenDataBean> folders = new LinkedList();
    private List<LibraryScreenDataBean> videos = new LinkedList();
    private List<LibraryScreenDataBean> images = new LinkedList();
    private List<LibraryScreenDataBean> audios = new LinkedList();
    private List<LibraryScreenDataBean> pdfs = new LinkedList();
    private List<LibraryScreenDataBean> unsupported = new LinkedList();
    private boolean nothingToShow = false;

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        setContentView(R.layout.activity_library);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        this.layout = (LinearLayout) findViewById(R.id.lib_icons);
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.LIBRARY_TITLE));
        try {
            this.layout.removeAllViews();
            retrieveLibraryBeans();
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
        }
    }

    public void retrieveLibraryBeans() {
        showProcessDialog();
        this.libBeansInCurrentLevel.clear();
        this.distinctCategory.clear();
        this.foldersInCurrentLevel.clear();
        this.nothingToShow = false;
        for (LibraryDataBean libraryDataBean : this.libraryDownloadService.retrieveLibraryBeansByCategory(this.category)) {
            if (this.category.equals(libraryDataBean.getCategory())) {
                this.libBeansInCurrentLevel.add(libraryDataBean);
            } else {
                this.distinctCategory.add(libraryDataBean.getCategory());
            }
        }
        sortLibraryDataBeans();
        setLibraryBeansStatic();
    }

    private void sortLibraryDataBeans() {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        LinkedList linkedList3 = new LinkedList();
        LinkedList linkedList4 = new LinkedList();
        LinkedList linkedList5 = new LinkedList();
        for (LibraryDataBean libraryDataBean : this.libBeansInCurrentLevel) {
            String fileType = libraryDataBean.getFileType();
            fileType.hashCode();
            switch (fileType) {
                case "3gp":
                case "mp4":
                    linkedList.add(libraryDataBean);
                    break;
                case "jpg":
                case "png":
                    linkedList2.add(libraryDataBean);
                    break;
                case "mp3":
                    linkedList3.add(libraryDataBean);
                    break;
                case "pdf":
                    linkedList4.add(libraryDataBean);
                    break;
                default:
                    linkedList5.add(libraryDataBean);
                    break;
            }
        }
        this.libBeansInCurrentLevel.clear();
        this.libBeansInCurrentLevel.addAll(linkedList);
        this.libBeansInCurrentLevel.addAll(linkedList2);
        this.libBeansInCurrentLevel.addAll(linkedList3);
        this.libBeansInCurrentLevel.addAll(linkedList4);
        this.libBeansInCurrentLevel.addAll(linkedList5);
    }

    public void setLibraryBeansStatic() {
        String description;
        String str;
        this.folders.clear();
        this.videos.clear();
        this.audios.clear();
        this.images.clear();
        this.pdfs.clear();
        this.unsupported.clear();
        Set<String> set = this.distinctCategory;
        if (set != null && !set.isEmpty()) {
            for (String str2 : this.distinctCategory) {
                if (!this.foldersInCurrentLevel.contains(str2.split("/")[this.currentLevel])) {
                    this.foldersInCurrentLevel.add(str2.split("/")[this.currentLevel]);
                }
            }
        }
        if (!this.foldersInCurrentLevel.isEmpty()) {
            for (String str3 : this.foldersInCurrentLevel) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) this.context.getDrawable(R.drawable.menu_library);
                if (bitmapDrawable != null) {
                    this.folders.add(new LibraryScreenDataBean(bitmapDrawable.getBitmap(), str3));
                }
            }
        }
        if (!this.libBeansInCurrentLevel.isEmpty()) {
            BitmapDrawable bitmapDrawable2 = (BitmapDrawable) this.context.getDrawable(R.drawable.play_audio);
            BitmapDrawable bitmapDrawable3 = (BitmapDrawable) this.context.getDrawable(R.drawable.pdf);
            BitmapDrawable bitmapDrawable4 = (BitmapDrawable) this.context.getDrawable(R.drawable.ic_unsupported_file);
            for (LibraryDataBean libraryDataBean : this.libBeansInCurrentLevel) {
                String fileType = libraryDataBean.getFileType();
                description = libraryDataBean.getDescription();
                str = SewaConstants.DIR_LIBRARY + libraryDataBean.getActualId() + GlobalTypes.DOT_SEPARATOR + libraryDataBean.getFileType();
                File file = new File(str);
                if (!file.exists()) {
                    File file2 = new File(SewaConstants.DIR_LIBRARY + libraryDataBean.getFileName());
                    if (file2.exists()) {
                        file2.renameTo(file);
                    }
                }
                fileType.hashCode();
                switch (fileType) {
                    case "3gp":
                    case "mp4":
                        this.videos.add(new LibraryScreenDataBean(ThumbnailUtils.createVideoThumbnail(str, 1), description));
                        break;
                    case "jpg":
                    case "png":
                        this.images.add(new LibraryScreenDataBean(ThumbnailUtils.extractThumbnail(BitmapFactory.decodeFile(str), 320, 320), description));
                        break;
                    case "mp3":
                        if (bitmapDrawable2 != null) {
                            this.audios.add(new LibraryScreenDataBean(bitmapDrawable2.getBitmap(), description));
                            break;
                        } else {
                            break;
                        }
                    case "pdf":
                        if (bitmapDrawable3 != null) {
                            this.pdfs.add(new LibraryScreenDataBean(bitmapDrawable3.getBitmap(), description));
                            break;
                        } else {
                            break;
                        }
                    default:
                        if (bitmapDrawable4 != null) {
                            bitmapDrawable4.setTint(ContextCompat.getColor(this.context, R.color.colorPrimary));
                            this.unsupported.add(new LibraryScreenDataBean(bitmapDrawable4.getBitmap(), description));
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        if (this.folders.isEmpty() && this.videos.isEmpty() && this.audios.isEmpty() && this.images.isEmpty() && this.pdfs.isEmpty() && this.unsupported.isEmpty()) {
            this.layout.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.NOTHING_TO_DISPLAY));
            this.nothingToShow = true;
        }
        if (!this.folders.isEmpty()) {
            addFolderView(this.folders, LibraryConstants.FOLDERS, 3);
        }
        if (!this.videos.isEmpty()) {
            addFolderView(this.videos, LibraryConstants.VIDEOS, 2);
        }
        if (!this.audios.isEmpty()) {
            addFolderView(this.audios, "AUDIO", 1);
        }
        if (!this.images.isEmpty()) {
            addFolderView(this.images, LibraryConstants.IMAGES, 2);
        }
        if (!this.pdfs.isEmpty()) {
            addFolderView(this.pdfs, LibraryConstants.PDFS, 3);
        }
        if (!this.unsupported.isEmpty()) {
            addFolderView(this.unsupported, LibraryConstants.UNSUPPORTED_FILES, 3);
        }
        hideProcessDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getPositionAccordingToType(java.lang.String r3, int r4) {
        /*
            r2 = this;
            r3.hashCode()
            int r0 = r3.hashCode()
            r1 = -1
            switch(r0) {
                case -2131921288: goto L44;
                case -1763348648: goto L39;
                case -1273763700: goto L2e;
                case 2450881: goto L23;
                case 34733477: goto L18;
                case 62628790: goto Ld;
                default: goto Lb;
            }
        Lb:
            r3 = -1
            goto L4e
        Ld:
            java.lang.String r0 = "AUDIO"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L16
            goto Lb
        L16:
            r3 = 5
            goto L4e
        L18:
            java.lang.String r0 = "FOLDERS"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L21
            goto Lb
        L21:
            r3 = 4
            goto L4e
        L23:
            java.lang.String r0 = "PDFS"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L2c
            goto Lb
        L2c:
            r3 = 3
            goto L4e
        L2e:
            java.lang.String r0 = "UNSUPPORTED FILES"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L37
            goto Lb
        L37:
            r3 = 2
            goto L4e
        L39:
            java.lang.String r0 = "VIDEOS"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L42
            goto Lb
        L42:
            r3 = 1
            goto L4e
        L44:
            java.lang.String r0 = "IMAGES"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L4d
            goto Lb
        L4d:
            r3 = 0
        L4e:
            switch(r3) {
                case 0: goto La6;
                case 1: goto L9f;
                case 2: goto L7d;
                case 3: goto L62;
                case 4: goto L61;
                case 5: goto L52;
                default: goto L51;
            }
        L51:
            return r1
        L52:
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r3 = r2.folders
            int r3 = r3.size()
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r0 = r2.videos
            int r0 = r0.size()
        L5e:
            int r3 = r3 + r0
        L5f:
            int r3 = r3 + r4
            return r3
        L61:
            return r4
        L62:
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r3 = r2.folders
            int r3 = r3.size()
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r0 = r2.videos
            int r0 = r0.size()
            int r3 = r3 + r0
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r0 = r2.audios
            int r0 = r0.size()
            int r3 = r3 + r0
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r0 = r2.images
            int r0 = r0.size()
            goto L5e
        L7d:
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r3 = r2.folders
            int r3 = r3.size()
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r0 = r2.videos
            int r0 = r0.size()
            int r3 = r3 + r0
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r0 = r2.audios
            int r0 = r0.size()
            int r3 = r3 + r0
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r0 = r2.images
            int r0 = r0.size()
            int r3 = r3 + r0
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r0 = r2.pdfs
            int r0 = r0.size()
            goto L5e
        L9f:
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r3 = r2.folders
            int r3 = r3.size()
            goto L5f
        La6:
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r3 = r2.folders
            int r3 = r3.size()
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r0 = r2.videos
            int r0 = r0.size()
            int r3 = r3 + r0
            java.util.List<com.argusoft.sewa.android.app.databean.LibraryScreenDataBean> r0 = r2.audios
            int r0 = r0.size()
            goto L5e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.LibraryActivity.getPositionAccordingToType(java.lang.String, int):int");
    }

    private void addFolderView(List<LibraryScreenDataBean> list, final String str, int i) {
        if (!str.equals(LibraryConstants.FOLDERS)) {
            this.layout.addView(getFileTypeHeader(str));
        }
        MyLibraryAdapter myLibraryAdapter = new MyLibraryAdapter(this.context, list, str);
        MyExpandedGridView myExpandedGridView = new MyExpandedGridView(this.context);
        myExpandedGridView.setExpanded(true);
        myExpandedGridView.setNumColumns(i);
        myExpandedGridView.setVerticalScrollBarEnabled(false);
        myExpandedGridView.setGravity(16);
        myExpandedGridView.setAdapter((ListAdapter) myLibraryAdapter);
        myExpandedGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.LibraryActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                int positionAccordingToType = LibraryActivity.this.getPositionAccordingToType(str, i2);
                if (positionAccordingToType != -1) {
                    LibraryActivity.this.onItemClick(null, null, positionAccordingToType, -1L);
                }
            }
        });
        this.layout.addView(myExpandedGridView);
    }

    private LinearLayout getFileTypeHeader(String str) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.file_type_header, (ViewGroup) null);
        ((MaterialTextView) linearLayout.findViewById(R.id.fileTypeHeaderText)).setText(str);
        return linearLayout;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.nothingToShow) {
            return;
        }
        if (i + 1 > this.foldersInCurrentLevel.size()) {
            openFileAccordingToType(i - this.foldersInCurrentLevel.size());
            return;
        }
        this.currentLevel++;
        String str = this.category;
        if (str != null && !str.isEmpty()) {
            this.category += "/" + this.foldersInCurrentLevel.get(i);
        } else {
            this.category = this.foldersInCurrentLevel.get(i);
        }
        this.layout.removeAllViews();
        this.layout.addView(getFileTypeHeader(this.category));
        retrieveLibraryBeans();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        int i = this.currentLevel;
        if (i == 0) {
            navigateToHomeScreen(false);
            return;
        }
        this.currentLevel = i - 1;
        if (this.category.contains("/")) {
            String[] strArr = (String[]) Arrays.copyOf(this.category.split("/"), r0.length - 1);
            StringBuilder sb = new StringBuilder();
            for (String str : strArr) {
                sb.append(str);
                sb.append("/");
            }
            this.category = sb.toString().substring(0, r0.length() - 1);
        } else {
            this.category = "";
        }
        this.layout.removeAllViews();
        String str2 = this.category;
        if (str2 != "") {
            this.layout.addView(getFileTypeHeader(str2));
        }
        retrieveLibraryBeans();
    }

    private void openFileAccordingToType(int i) {
        LibraryDataBean libraryDataBean = this.libBeansInCurrentLevel.get(i);
        String str = SewaConstants.DIR_LIBRARY + libraryDataBean.getActualId() + GlobalTypes.DOT_SEPARATOR + libraryDataBean.getFileType();
        String fileType = libraryDataBean.getFileType();
        if (UtilBean.isFileExists(str)) {
            if (fileType.equalsIgnoreCase("jpg") || fileType.equalsIgnoreCase("png")) {
                Intent intent = new Intent(this, (Class<?>) CustomImageViewerActivity_.class);
                intent.putExtra("path", str);
                intent.putExtra(FieldNameConstants.FILE_NAME, libraryDataBean.getDescription());
                startActivity(intent);
                return;
            }
            if (fileType.equalsIgnoreCase("pdf")) {
                Intent intent2 = new Intent(this, (Class<?>) CustomPDFViewerActivity_.class);
                intent2.putExtra("path", str);
                intent2.putExtra(FieldNameConstants.FILE_NAME, libraryDataBean.getDescription());
                startActivity(intent2);
                return;
            }
            MediaPlayer mediaPlayerCreate = MediaPlayer.create(this, FileProvider.getUriForFile(this, getApplicationContext().getPackageName() + ".provider", new File(str)));
            if (mediaPlayerCreate != null) {
                if (fileType.equalsIgnoreCase("3gp") || fileType.equalsIgnoreCase("mp4")) {
                    Intent intent3 = new Intent(this, (Class<?>) CustomVideoPlayerActivity.class);
                    intent3.putExtra(GlobalTypes.DATA_MAP, libraryDataBean.getActualId() + GlobalTypes.DOT_SEPARATOR + libraryDataBean.getFileType());
                    intent3.putExtra("isFromAnnouncement", Boolean.TRUE);
                    intent3.putExtra("fileLocation", SewaConstants.DIR_LIBRARY);
                    startActivity(intent3);
                    return;
                }
                new MyAudioPlayer(this, libraryDataBean.getFileName(), mediaPlayerCreate).show();
                return;
            }
            if (!GlobalTypes.SUPPORTED_EXTENSIONS.contains(fileType)) {
                SewaUtil.generateToast(this, LabelConstants.FILE_IS_NOT_SUPPORTED);
                return;
            } else {
                SewaUtil.generateToast(this, LabelConstants.FILE_CORRUPTED);
                return;
            }
        }
        SewaUtil.generateToast(this, LabelConstants.FILE_DOES_NOT_EXIST);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        onBackPressed();
        return true;
    }
}
