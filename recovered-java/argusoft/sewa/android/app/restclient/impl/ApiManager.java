package com.argusoft.sewa.android.app.restclient.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.argusoft.sewa.android.app.BuildConfig;
import com.argusoft.sewa.android.app.SewaApplication_;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.restclient.ApiService;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.restclient.RestHttpResponseCode;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.io.IOException;
import java.lang.reflect.Type;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import okhttp3.Dns;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* loaded from: classes.dex */
public class ApiManager {
    private ApiService apiService;
    private final Gson gson;
    private final OkHttpClient.Builder okHttpClient;

    public ApiManager() {
        OkHttpClient.Builder builderWriteTimeout = new OkHttpClient.Builder().dns(new IPv4OnlyDns()).callTimeout(15L, TimeUnit.MINUTES).connectTimeout(15L, TimeUnit.MINUTES).readTimeout(15L, TimeUnit.MINUTES).writeTimeout(15L, TimeUnit.MINUTES);
        this.okHttpClient = builderWriteTimeout;
        builderWriteTimeout.addNetworkInterceptor(new Interceptor() { // from class: com.argusoft.sewa.android.app.restclient.impl.ApiManager$$ExternalSyntheticLambda1
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                return ApiManager.lambda$new$0(chain);
            }
        });
        JsonSerializer jsonSerializer = new JsonSerializer() { // from class: com.argusoft.sewa.android.app.restclient.impl.ApiManager$$ExternalSyntheticLambda2
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
                return ApiManager.lambda$new$1((Date) obj, type, jsonSerializationContext);
            }
        };
        new JsonDeserializer() { // from class: com.argusoft.sewa.android.app.restclient.impl.ApiManager$$ExternalSyntheticLambda3
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                return ApiManager.lambda$new$2(jsonElement, type, jsonDeserializationContext);
            }
        };
        this.gson = new GsonBuilder().registerTypeAdapter(Date.class, jsonSerializer).setLenient().registerTypeAdapter(Date.class, UtilBean.JSON_DATE_DESERIALIZER).create();
        createApiService();
    }

    static /* synthetic */ Response lambda$new$0(Interceptor.Chain chain) throws IOException {
        String strReplaceAll;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(GlobalTypes.ISO_8601_DATE_TIME_FORMAT, Locale.getDefault());
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
            strReplaceAll = simpleDateFormat.format(new Date()).replaceAll("([+-]\\d{2})(\\d{2})$", "$1:$2");
        } catch (Exception e) {
            e.printStackTrace();
            strReplaceAll = null;
        }
        Request.Builder builderAddHeader = chain.request().newBuilder().addHeader("application-version", String.valueOf(BuildConfig.VERSION_CODE)).addHeader("userToken", SewaTransformer.loginBean != null ? SewaTransformer.loginBean.getUserToken() : LabelConstants.NULL);
        if (strReplaceAll != null) {
            builderAddHeader.addHeader("X-Client-Date-Time", strReplaceAll);
        }
        return chain.proceed(builderAddHeader.build());
    }

    static /* synthetic */ JsonElement lambda$new$1(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        if (date == null) {
            return null;
        }
        return new JsonPrimitive(Long.valueOf(date.getTime()));
    }

    static /* synthetic */ Date lambda$new$2(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (jsonElement == null) {
            return null;
        }
        return new Date(jsonElement.getAsLong());
    }

    public void createApiService() {
        this.apiService = (ApiService) new Retrofit.Builder().baseUrl(WSConstants.CONTEXT_URL_TECHO).client(this.okHttpClient.build()).addConverterFactory(GsonConverterFactory.create(this.gson)).build().create(ApiService.class);
    }

    public ApiService getInstance() {
        return this.apiService;
    }

    public <T> T execute(Call<T> call) throws RestHttpException {
        try {
            retrofit2.Response<T> responseExecute = call.execute();
            if (responseExecute.isSuccessful()) {
                return responseExecute.body();
            }
            ResponseBody responseBodyErrorBody = responseExecute.errorBody();
            if (responseBodyErrorBody != null) {
                String strOptString = new JSONObject(responseBodyErrorBody.string()).optString("message", "");
                int iCode = responseExecute.code();
                if (!strOptString.isEmpty()) {
                    if (iCode == RestHttpResponseCode.SC_FORBIDDEN.getValue()) {
                        handleTimeSyncException(SewaApplication_.getContext());
                        throw new RestHttpException(RestHttpResponseCode.SC_FORBIDDEN, strOptString);
                    }
                    throw new RestHttpException(RestHttpResponseCode.SC_BAD_REQUEST, strOptString);
                }
                throw new RestHttpException(RestHttpResponseCode.SC_INTERNAL_SERVER_ERROR, RestConstantMsg.MSG_INTERNAL_SERVER_ERROR);
            }
            throw new RestHttpException(RestHttpResponseCode.SC_INTERNAL_SERVER_ERROR, RestConstantMsg.MSG_INTERNAL_SERVER_ERROR);
        } catch (IOException | JSONException e) {
            e.printStackTrace();
            throw new RestHttpException(e);
        }
    }

    static class IPv4OnlyDns implements Dns {
        IPv4OnlyDns() {
        }

        @Override // okhttp3.Dns
        public List<InetAddress> lookup(String str) throws UnknownHostException {
            List<InetAddress> listAsList = Arrays.asList(InetAddress.getAllByName(str));
            ArrayList arrayList = new ArrayList();
            for (InetAddress inetAddress : listAsList) {
                if (inetAddress instanceof Inet4Address) {
                    arrayList.add(inetAddress);
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
            throw new UnknownHostException("No IPv4 address found for " + str);
        }
    }

    public static void handleTimeSyncException(final Context context) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.argusoft.sewa.android.app.restclient.impl.ApiManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SewaUtil.generateToast(context, SewaConstants.DATE_TIME_MISMATCH);
            }
        });
    }
}
