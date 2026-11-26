package com.argusoft.sewa.android.app.fcm;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.work.ListenableWorker;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.LoginActivity_;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.datastructure.FormGenerator$$ExternalSyntheticApiModelOutline0;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.j256.ormlite.field.FieldType;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class MyFirebaseMessagingService extends FirebaseMessagingService {
    private static final String TAG = "MyFirebaseMsgService";
    private final AtomicInteger atomicInteger = new AtomicInteger(0);

    private void sendRegistrationToServer(String str) {
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        Bitmap bitmapDecodeStream;
        Log.d(TAG, "From: " + remoteMessage.getFrom());
        if (remoteMessage.getData().size() > 0) {
            Log.d(TAG, "Message data payload: " + remoteMessage.getData());
            scheduleJob();
        }
        Uri imageUrl = remoteMessage.getNotification().getImageUrl();
        if (imageUrl != null) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(imageUrl.toString()).openConnection();
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } else {
            bitmapDecodeStream = null;
        }
        if (remoteMessage.getNotification() != null) {
            Log.d(TAG, "Message Notification Body: " + remoteMessage.getNotification().getBody());
            showNotification(remoteMessage.getNotification().getTitle(), remoteMessage.getNotification().getBody(), bitmapDecodeStream);
            return;
        }
        Log.d(TAG, "Message Notification Body: " + remoteMessage.getData().get("message"));
        showNotification(remoteMessage.getData().get(FieldNameConstants.TITLE), remoteMessage.getData().get("message"), bitmapDecodeStream);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        Log.d(TAG, "Refreshed token: " + str);
        sendRegistrationToServer(str);
    }

    private void scheduleJob() {
        WorkManager.getInstance(this).beginWith(new OneTimeWorkRequest.Builder(MyWorker.class).build()).enqueue();
    }

    private void handleNow() {
        Log.d(TAG, "Short lived task is done.");
    }

    public static class MyWorker extends Worker {
        public MyWorker(Context context, WorkerParameters workerParameters) {
            super(context, workerParameters);
        }

        @Override // androidx.work.Worker
        public ListenableWorker.Result doWork() {
            return ListenableWorker.Result.success();
        }
    }

    private void showNotification(String str, String str2, Bitmap bitmap) {
        Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
        intent.addFlags(67108864);
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 1073741824);
        String string = getString(R.string.app_name);
        NotificationManager notificationManager = (NotificationManager) getSystemService(GlobalTypes.NOTIFICATION);
        if (Build.VERSION.SDK_INT >= 26) {
            setupNotificationChannels(FieldType.FOREIGN_ID_FIELD_SUFFIX, string, notificationManager);
        }
        NotificationCompat.Builder contentIntent = new NotificationCompat.Builder(this, FieldType.FOREIGN_ID_FIELD_SUFFIX).setSmallIcon(R.drawable.ic_baseline_notifications_24).setColor(ContextCompat.getColor(this, R.color.colorPrimary)).setContentTitle(str).setStyle(new NotificationCompat.BigTextStyle().bigText(str2)).setContentText(str2).setAutoCancel(false).setDefaults(-1).setPriority(1).setSound(Settings.System.DEFAULT_NOTIFICATION_URI).setContentIntent(activity);
        if (bitmap != null) {
            contentIntent.setLargeIcon(bitmap);
            contentIntent.setStyle(new NotificationCompat.BigPictureStyle().bigPicture(bitmap).bigLargeIcon(null));
        }
        notificationManager.notify(this.atomicInteger.incrementAndGet(), contentIntent.build());
    }

    private void setupNotificationChannels(String str, String str2, NotificationManager notificationManager) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannelM = FormGenerator$$ExternalSyntheticApiModelOutline0.m(str, str2, 5);
            notificationChannelM.enableLights(true);
            notificationChannelM.setLightColor(SupportMenu.CATEGORY_MASK);
            notificationChannelM.enableVibration(true);
            notificationChannelM.canShowBadge();
            notificationManager.createNotificationChannel(notificationChannelM);
        }
    }
}
