package com.argusoft.sewa.android.app.support;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.core.os.EnvironmentCompat;
import com.argusoft.sewa.android.app.BuildConfig;
import com.argusoft.sewa.android.app.restclient.impl.ApiManager;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.google.gson.Gson;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

/* loaded from: classes.dex */
public class SupportApi {
    ApiManager apiManager;
    private static final MediaType TEXT = MediaType.parse("text/plain");
    private static final MediaType JSON = MediaType.parse("application/json");
    private static final MediaType AUDIO = MediaType.parse("audio/mp4");
    private static final MediaType IMAGE = MediaType.parse("image/jpeg");

    public static class Failure extends Exception {
        public final Kind kind;

        public enum Kind {
            NETWORK,
            SESSION,
            REFUSED
        }

        Failure(Kind kind, String str) {
            super(str);
            this.kind = kind;
        }
    }

    public SupportTicket raise(Context context, String str, String str2, String str3, File file, List<File> list) throws Failure {
        MultipartBody.Part partCreateFormData = (file == null || !file.exists()) ? null : MultipartBody.Part.createFormData("voice", file.getName(), RequestBody.create(file, AUDIO));
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (File file2 : list) {
                if (file2.exists()) {
                    arrayList.add(MultipartBody.Part.createFormData("photos", file2.getName(), RequestBody.create(file2, IMAGE)));
                }
            }
        }
        return (SupportTicket) run(this.apiManager.getInstance().supportRaise(str, text(str2), text(str3), RequestBody.create(new Gson().toJson(diagnostics(context)), JSON), partCreateFormData, arrayList));
    }

    public List<SupportTicket> mine() throws Failure {
        return (List) run(this.apiManager.getInstance().supportMine());
    }

    public SupportTicket ticket(long j) throws Failure {
        return (SupportTicket) run(this.apiManager.getInstance().supportTicket(j));
    }

    public List<SupportComment> comments(long j) throws Failure {
        return (List) run(this.apiManager.getInstance().supportComments(j));
    }

    public void reply(long j, String str) throws Failure {
        HashMap map = new HashMap();
        map.put("body", str);
        run(this.apiManager.getInstance().supportReply(j, map));
    }

    public void voiceReply(long j, File file) throws Failure {
        run(this.apiManager.getInstance().supportVoiceReply(j, MultipartBody.Part.createFormData("voice", file.getName(), RequestBody.create(file, AUDIO))));
    }

    public List<SupportAttachment> attachments(long j) throws Failure {
        return (List) run(this.apiManager.getInstance().supportAttachments(j));
    }

    public File download(Context context, long j, SupportAttachment supportAttachment) throws Failure {
        File file = new File(context.getFilesDir(), "support/media");
        file.mkdirs();
        File file2 = new File(file, supportAttachment.localName());
        if (file2.exists() && file2.length() > 0) {
            return file2;
        }
        ResponseBody responseBody = (ResponseBody) run(this.apiManager.getInstance().supportAttachmentContent(j, supportAttachment.id.longValue()));
        if (responseBody == null) {
            throw new Failure(Failure.Kind.REFUSED, null);
        }
        File file3 = new File(file, supportAttachment.localName() + ".part");
        try {
            try {
                InputStream inputStreamByteStream = responseBody.byteStream();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file3);
                    try {
                        byte[] bArr = new byte[16384];
                        while (true) {
                            int i = inputStreamByteStream.read(bArr);
                            if (i == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i);
                        }
                        fileOutputStream.close();
                        if (inputStreamByteStream != null) {
                            inputStreamByteStream.close();
                        }
                        responseBody.close();
                        if (file3.renameTo(file2)) {
                            return file2;
                        }
                        throw new Failure(Failure.Kind.REFUSED, null);
                    } finally {
                    }
                } catch (Throwable th) {
                    if (inputStreamByteStream != null) {
                        try {
                            inputStreamByteStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException unused) {
                file3.delete();
                throw new Failure(Failure.Kind.NETWORK, null);
            }
        } catch (Throwable th3) {
            responseBody.close();
            throw th3;
        }
    }

    public SupportTicket fixed(long j) throws Failure {
        return (SupportTicket) run(this.apiManager.getInstance().supportFixed(j));
    }

    public SupportTicket notFixed(long j, String str) throws Failure {
        HashMap map = new HashMap();
        if (str != null && !str.trim().isEmpty()) {
            map.put("reason", str.trim());
        }
        return (SupportTicket) run(this.apiManager.getInstance().supportNotFixed(j, map));
    }

    private static RequestBody text(String str) {
        if (str == null || str.trim().isEmpty()) {
            return null;
        }
        return RequestBody.create(str.trim(), TEXT);
    }

    private static <T> T run(Call<T> call) throws Failure {
        String strOptString = null;
        try {
            Response<T> responseExecute = call.execute();
            if (responseExecute.isSuccessful()) {
                return responseExecute.body();
            }
            try {
                ResponseBody responseBodyErrorBody = responseExecute.errorBody();
                if (responseBodyErrorBody != null) {
                    try {
                        strOptString = new JSONObject(responseBodyErrorBody.string()).optString("message", null);
                    } finally {
                    }
                }
                if (responseBodyErrorBody != null) {
                    responseBodyErrorBody.close();
                }
            } catch (Exception unused) {
            }
            int iCode = responseExecute.code();
            if (iCode == 401) {
                throw new Failure(Failure.Kind.SESSION, strOptString);
            }
            if (iCode >= 500 || iCode == 408 || iCode == 429) {
                throw new Failure(Failure.Kind.NETWORK, strOptString);
            }
            throw new Failure(Failure.Kind.REFUSED, strOptString);
        } catch (IOException unused2) {
            throw new Failure(Failure.Kind.NETWORK, null);
        }
    }

    static Map<String, Object> diagnostics(Context context) {
        HashMap map = new HashMap();
        map.put("appVersion", BuildConfig.VERSION_NAME);
        map.put("deviceModel", Build.MANUFACTURER + " " + Build.MODEL);
        StringBuilder sb = new StringBuilder("Android ");
        sb.append(Build.VERSION.RELEASE);
        map.put("osVersion", sb.toString());
        map.put("networkState", networkState(context));
        map.put("client", "techo-android");
        return map;
    }

    static String networkState(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager == null ? null : connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return activeNetworkInfo.getType() == 1 ? "wifi" : AadharScanUtil.MOBILE_HEX;
            }
            return "offline";
        } catch (Exception unused) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    public static boolean isOnline(Context context) {
        return !"offline".equals(networkState(context));
    }
}
