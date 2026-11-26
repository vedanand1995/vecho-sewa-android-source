package com.argusoft.sewa.android.app.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.RecordStatusBean;
import com.argusoft.sewa.android.app.datastructure.FormGenerator$$ExternalSyntheticApiModelOutline0;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.restclient.impl.ApiManager;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import retrofit2.Response;

/* loaded from: classes.dex */
public class FileUploadForegroundService extends Service {
    public static final String CHANNEL_ID = "FileUploadServiceChannel";
    public static final String EXTRA_BEANS_LIST = "beans";
    public static boolean isRunning = false;
    ApiManager apiManager;
    private ExecutorService executor;
    SewaServiceImpl sewaService;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        isRunning = true;
        this.executor = Executors.newSingleThreadExecutor();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return i;
        }
        final ResultReceiver resultReceiver = (ResultReceiver) intent.getParcelableExtra("receiver");
        final ArrayList arrayList = (ArrayList) new Gson().fromJson(intent.getStringExtra(EXTRA_BEANS_LIST), new TypeToken<ArrayList<UploadFileDataBean>>() { // from class: com.argusoft.sewa.android.app.service.FileUploadForegroundService.1
        }.getType());
        createNotificationChannel();
        startForeground(1, buildNotification("Uploading file..."));
        this.executor.submit(new Runnable() { // from class: com.argusoft.sewa.android.app.service.FileUploadForegroundService$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m591xb7f341c7(arrayList, resultReceiver);
            }
        });
        return 1;
    }

    /* renamed from: lambda$onStartCommand$0$com-argusoft-sewa-android-app-service-FileUploadForegroundService, reason: not valid java name */
    /* synthetic */ void m591xb7f341c7(ArrayList arrayList, ResultReceiver resultReceiver) {
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            UploadFileDataBean uploadFileDataBean = (UploadFileDataBean) it.next();
            if (this.sewaService.isOnline()) {
                try {
                    updateNotification("uploading " + uploadFileDataBean.getFileName());
                    uploadFileDataBean.setStatus("U");
                    this.sewaService.updateUploadFileDataBean(uploadFileDataBean);
                    RecordStatusBean recordStatusBeanUploadFile = uploadFile(uploadFileDataBean);
                    if (recordStatusBeanUploadFile != null) {
                        uploadFileDataBean.setStatus(recordStatusBeanUploadFile.getStatus());
                        this.sewaService.updateUploadFileDataBean(uploadFileDataBean);
                        if (recordStatusBeanUploadFile.getStatus().equalsIgnoreCase("S")) {
                            UtilBean.deleteFile(uploadFileDataBean.getFilePath());
                        }
                    }
                } catch (SocketTimeoutException e) {
                    Log.e(getClass().getSimpleName(), null, e);
                } catch (Exception e2) {
                    Log.e(getClass().getSimpleName(), null, e2);
                }
            } else {
                SewaUtil.generateToast(this, SewaConstants.NETWORK_NOT_PROPER);
                break;
            }
        }
        if (resultReceiver != null) {
            resultReceiver.send(100, new Bundle());
        }
        stopForeground(true);
        stopSelf();
    }

    private RecordStatusBean uploadFile(UploadFileDataBean uploadFileDataBean) throws IOException {
        String filePath = uploadFileDataBean.getFilePath();
        String fileName = uploadFileDataBean.getFileName();
        try {
            File file = new File(filePath);
            if (!file.exists()) {
                Log.e("FileUploadService", "File not found: " + fileName);
                updateNotification("Failed: File does not exist.");
                throw new NullPointerException();
            }
            uploadFileDataBean.setToken(SewaTransformer.loginBean.getUserToken());
            Response<RecordStatusBean> responseExecute = this.apiManager.getInstance().uploadMediaToServer(MultipartBody.Part.createFormData("file", fileName, RequestBody.create(file, MediaType.parse("application/octet-stream"))), uploadFileDataBean).execute();
            if (responseExecute.isSuccessful()) {
                return responseExecute.body();
            }
            int iCode = responseExecute.code();
            String strMessage = responseExecute.message();
            uploadFileDataBean.setStatus("P");
            this.sewaService.updateUploadFileDataBean(uploadFileDataBean);
            throw new IOException("Server returned error code " + iCode + " (" + strMessage + "). Response body: " + (responseExecute.errorBody() != null ? responseExecute.errorBody().string() : null));
        } catch (Exception e) {
            Log.e("FileUploadService", "Error uploading file", e);
            updateNotification("Upload Error: " + uploadFileDataBean.getFileName());
            return null;
        }
    }

    private Notification buildNotification(String str) {
        return new NotificationCompat.Builder(this, CHANNEL_ID).setContentTitle("Uploading media file").setContentText(str).setSmallIcon(R.drawable.ic_upload).setOngoing(true).build();
    }

    private void updateNotification(String str) {
        NotificationManagerCompat.from(this).notify(1, buildNotification(str));
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannelM = FormGenerator$$ExternalSyntheticApiModelOutline0.m(CHANNEL_ID, "File Upload Service Channel", 2);
            NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannelM);
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        isRunning = false;
        this.executor.shutdown();
    }
}
