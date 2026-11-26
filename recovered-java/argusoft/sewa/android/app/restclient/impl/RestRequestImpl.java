package com.argusoft.sewa.android.app.restclient.impl;

import android.util.Log;
import com.argusoft.sewa.android.app.restclient.RestContentType;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.restclient.RestHttpMethodType;
import com.argusoft.sewa.android.app.restclient.RestHttpResponseCode;
import com.argusoft.sewa.android.app.restclient.RestRequest;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.CookieStore;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.cookie.Cookie;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;

/* loaded from: classes.dex */
public class RestRequestImpl implements RestRequest {
    private static final String ACCEPT = "Accept";
    private static final String UTF_8 = "UTF-8";
    private final JsonDeserializer<Date> dateDeserializer;
    private final JsonSerializer<Date> dateSerializer;
    private String fileName;
    private final Map<String, String> fixedHeader;
    private final Gson gson;
    private final HttpParams httpParams;
    private CookieStore myCookieStore;
    private final RestContentType resContentType;

    public RestRequestImpl() {
        JsonSerializer<Date> jsonSerializer = new JsonSerializer<Date>() { // from class: com.argusoft.sewa.android.app.restclient.impl.RestRequestImpl.1
            @Override // com.google.gson.JsonSerializer
            public JsonElement serialize(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
                if (date == null) {
                    return null;
                }
                return new JsonPrimitive(Long.valueOf(date.getTime()));
            }
        };
        this.dateSerializer = jsonSerializer;
        JsonDeserializer<Date> jsonDeserializer = new JsonDeserializer<Date>() { // from class: com.argusoft.sewa.android.app.restclient.impl.RestRequestImpl.2
            @Override // com.google.gson.JsonDeserializer
            public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                if (jsonElement == null) {
                    return null;
                }
                try {
                    return new Date(jsonElement.getAsLong());
                } catch (Exception unused) {
                    try {
                        return new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4).parse(jsonElement.getAsString());
                    } catch (ParseException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        };
        this.dateDeserializer = jsonDeserializer;
        this.gson = new GsonBuilder().registerTypeAdapter(Date.class, jsonSerializer).registerTypeAdapter(Date.class, jsonDeserializer).create();
        this.fileName = ".sewa.data";
        this.myCookieStore = new BasicCookieStore();
        this.fileName = SewaConstants.DIR_DATABASE + this.fileName;
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        this.httpParams = basicHttpParams;
        this.fixedHeader = new HashMap();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 180000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 0);
        this.resContentType = RestContentType.APPLICATION_JSON;
    }

    @Override // com.argusoft.sewa.android.app.restclient.RestRequest
    public void addFixedHeader(Map<String, String> map) {
        this.fixedHeader.putAll(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.argusoft.sewa.android.app.restclient.RestRequest
    public <T> T callWebService(String str, RestHttpMethodType restHttpMethodType, Map<String, Object> map, Object obj, Type type) throws RestHttpException {
        HttpRequestBase httpDelete;
        StringEntity stringEntity;
        HttpPut httpPut;
        StringEntity stringEntity2;
        if (str == null) {
            throw new RestHttpException(RestHttpResponseCode.SC_URL_NULL, RestConstantMsg.MSG_URL_NULL);
        }
        if (restHttpMethodType != null) {
            StringBuilder sb = new StringBuilder(str);
            if (map != null) {
                try {
                    String str2 = "?";
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value != null) {
                            sb.append(str2);
                            sb.append(key);
                            sb.append(SimpleComparison.EQUAL_TO_OPERATION);
                            sb.append(URLEncoder.encode(value.toString(), UTF_8));
                            str2 = "&";
                        }
                    }
                } catch (Exception e) {
                    throw new RestHttpException(e);
                }
            }
            String string = sb.toString();
            Log.i(getClass().getSimpleName(), "********** Rest Url Called : " + string);
            if (map != null) {
                Log.i(getClass().getSimpleName(), "********** Params : " + new Gson().toJson(map));
            }
            if (obj != null) {
                Log.i(getClass().getSimpleName(), "********** Body : " + new Gson().toJson(obj));
            }
            if (restHttpMethodType.equals(RestHttpMethodType.HTTP_GET)) {
                httpDelete = new HttpGet(string);
                RestContentType restContentType = this.resContentType;
                if (restContentType != null) {
                    httpDelete.addHeader(ACCEPT, restContentType.getValue());
                }
            } else {
                if (restHttpMethodType.equals(RestHttpMethodType.HTTP_POST)) {
                    HttpPost httpPost = new HttpPost(string);
                    RestContentType restContentType2 = this.resContentType;
                    httpPut = httpPost;
                    if (restContentType2 != null) {
                        httpPost.addHeader(ACCEPT, restContentType2.getValue());
                        httpPut = httpPost;
                        if (obj != null) {
                            try {
                                if (this.resContentType.equals(RestContentType.APPLICATION_JSON)) {
                                    stringEntity2 = new StringEntity(this.gson.toJson(obj), UTF_8);
                                    stringEntity2.setContentType(this.resContentType.getValue());
                                } else {
                                    stringEntity2 = new StringEntity(obj.toString(), UTF_8);
                                }
                                httpPost.setEntity(stringEntity2);
                                httpPut = httpPost;
                            } catch (UnsupportedEncodingException unused) {
                                throw new RestHttpException(RestHttpResponseCode.SC_PERAMETER_NOT_PROPER, RestConstantMsg.MSG_PARAMETER_NOT_PROPER);
                            }
                        }
                    }
                } else if (restHttpMethodType.equals(RestHttpMethodType.HTTP_PUT)) {
                    HttpPut httpPut2 = new HttpPut(string);
                    RestContentType restContentType3 = this.resContentType;
                    httpPut = httpPut2;
                    if (restContentType3 != null) {
                        httpPut2.addHeader(ACCEPT, restContentType3.getValue());
                        httpPut = httpPut2;
                        if (obj != null) {
                            try {
                                if (this.resContentType.equals(RestContentType.APPLICATION_JSON)) {
                                    stringEntity = new StringEntity(this.gson.toJson(obj), UTF_8);
                                    stringEntity.setContentType(this.resContentType.getValue());
                                } else {
                                    stringEntity = new StringEntity(obj.toString(), UTF_8);
                                }
                                httpPut2.setEntity(stringEntity);
                                httpPut = httpPut2;
                            } catch (UnsupportedEncodingException unused2) {
                                throw new RestHttpException(RestHttpResponseCode.SC_PERAMETER_NOT_PROPER, RestConstantMsg.MSG_PARAMETER_NOT_PROPER);
                            }
                        }
                    }
                } else if (restHttpMethodType.equals(RestHttpMethodType.HTTP_DELETE)) {
                    httpDelete = new HttpDelete(string);
                    RestContentType restContentType4 = this.resContentType;
                    if (restContentType4 != null) {
                        httpDelete.addHeader(ACCEPT, restContentType4.getValue());
                    }
                } else {
                    throw new RestHttpException(RestHttpResponseCode.SC_NOT_IMPLEMENTED_STILL, RestConstantMsg.MSG_NOT_IMPLEMENTED_STILL);
                }
                httpDelete = httpPut;
            }
            for (Map.Entry<String, String> entry2 : this.fixedHeader.entrySet()) {
                httpDelete.addHeader(entry2.getKey(), entry2.getValue());
            }
            JsonReader jsonReaderExecuteRequest = executeRequest(httpDelete);
            if (jsonReaderExecuteRequest == null) {
                return null;
            }
            RestContentType restContentType5 = this.resContentType;
            if (restContentType5 != null && restContentType5.equals(RestContentType.APPLICATION_JSON)) {
                try {
                    return (T) this.gson.fromJson(jsonReaderExecuteRequest, type);
                } catch (JsonSyntaxException e2) {
                    Log.e(getClass().getSimpleName(), null, e2);
                    throw new RestHttpException(RestHttpResponseCode.SC_RESPONSE_NOT_FORMATED, RestConstantMsg.MSG_RESPONSE_NOT_FORMATTED);
                }
            }
            throw new RestHttpException(RestHttpResponseCode.SC_RESPONSE_NOT_FORMATED, RestConstantMsg.MSG_RESPONSE_NOT_FORMATTED);
        }
        throw new RestHttpException(RestHttpResponseCode.SC_NO_HTTP_METHOD_TYPE, RestConstantMsg.MSG_NO_HTTP_METHOD_TYPE);
    }

    private JsonReader executeRequest(HttpRequestBase httpRequestBase) throws RestHttpException {
        try {
            HttpResponse httpResponseExecuteHttp = executeHttp(new DefaultHttpClient(this.httpParams), httpRequestBase);
            if (httpResponseExecuteHttp == null) {
                throw new RestHttpException(RestHttpResponseCode.SC_INTERNAL_SERVER_ERROR, RestConstantMsg.MSG_INTERNAL_SERVER_ERROR);
            }
            int statusCode = httpResponseExecuteHttp.getStatusLine().getStatusCode();
            HttpEntity entity = httpResponseExecuteHttp.getEntity();
            if (statusCode == RestHttpResponseCode.SC_OK.getValue()) {
                try {
                    return new JsonReader(new InputStreamReader(entity.getContent(), StandardCharsets.UTF_8));
                } catch (Exception unused) {
                    throw new RestHttpException(RestHttpResponseCode.SC_ERROR_IN_READING_RESONSE, RestConstantMsg.MSG_ERROR_IN_READING_RESPONSE);
                }
            }
            if (statusCode == RestHttpResponseCode.SC_OK_NO_CONTENT.getValue()) {
                return null;
            }
            if (statusCode == RestHttpResponseCode.SC_BAD_REQUEST.getValue()) {
                String errorMessage = getErrorMessage(httpResponseExecuteHttp);
                if (errorMessage != null) {
                    throw new RestHttpException(RestHttpResponseCode.SC_BAD_REQUEST, errorMessage);
                }
                throw new RestHttpException(RestHttpResponseCode.SC_BAD_REQUEST, RestConstantMsg.MSG_BAD_REQUEST);
            }
            if (statusCode == RestHttpResponseCode.SC_UNAUTHORIZED.getValue()) {
                try {
                    throw new RestHttpException(RestHttpResponseCode.SC_UNAUTHORIZED, readData(entity.getContent()).toString());
                } catch (Exception unused2) {
                    throw new RestHttpException(RestHttpResponseCode.SC_ERROR_IN_READING_RESONSE, RestConstantMsg.MSG_ERROR_IN_READING_RESPONSE);
                }
            }
            if (statusCode == RestHttpResponseCode.SC_FORBIDDEN.getValue()) {
                try {
                    throw new RestHttpException(RestHttpResponseCode.SC_FORBIDDEN, readData(entity.getContent()).toString());
                } catch (Exception unused3) {
                    throw new RestHttpException(RestHttpResponseCode.SC_ERROR_IN_READING_RESONSE, RestConstantMsg.MSG_ERROR_IN_READING_RESPONSE);
                }
            }
            if (statusCode == RestHttpResponseCode.SC_NOT_FOUND.getValue()) {
                throw new RestHttpException(RestHttpResponseCode.SC_NOT_FOUND, RestConstantMsg.MSG_NOT_FOUND);
            }
            if (statusCode == RestHttpResponseCode.SC_REQUEST_TIMEOUT.getValue()) {
                throw new RestHttpException(RestHttpResponseCode.SC_REQUEST_TIMEOUT, RestConstantMsg.MSG_REQUEST_TIME_OUT);
            }
            if (statusCode == RestHttpResponseCode.SC_INTERNAL_SERVER_ERROR.getValue()) {
                String errorMessage2 = getErrorMessage(httpResponseExecuteHttp);
                if (errorMessage2 != null) {
                    throw new RestHttpException(RestHttpResponseCode.SC_INTERNAL_SERVER_ERROR, errorMessage2);
                }
                throw new RestHttpException(RestHttpResponseCode.SC_INTERNAL_SERVER_ERROR, RestConstantMsg.MSG_INTERNAL_SERVER_ERROR);
            }
            throw new RestHttpException(RestHttpResponseCode.SC_OTHER, RestConstantMsg.MSG_INTERNAL_SERVER_ERROR);
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
            throw new RestHttpException(RestHttpResponseCode.SC_INTERNAL_SERVER_ERROR, RestConstantMsg.MSG_INTERNAL_SERVER_ERROR);
        }
    }

    private HttpResponse executeHttp(DefaultHttpClient defaultHttpClient, HttpRequestBase httpRequestBase) throws IOException {
        defaultHttpClient.setCookieStore(this.myCookieStore);
        HttpResponse httpResponseExecute = defaultHttpClient.execute(httpRequestBase);
        try {
            this.myCookieStore = defaultHttpClient.getCookieStore();
            writeCookies();
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), "Enable to write cookies. . . . . ", e);
        }
        return httpResponseExecute;
    }

    private StringBuilder readData(InputStream inputStream) throws IOException {
        if (inputStream != null) {
            StringBuilder sb = new StringBuilder();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        sb.append(line);
                    } else {
                        inputStream.close();
                        return sb;
                    }
                }
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), null, e);
                return new StringBuilder();
            }
        } else {
            return new StringBuilder();
        }
    }

    private void writeData(OutputStream outputStream, String str) throws IOException {
        if (outputStream != null) {
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream));
                bufferedWriter.write(str, 0, str.length());
                bufferedWriter.flush();
                bufferedWriter.close();
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), "No Write in File", e);
            }
        }
    }

    private void readCookies() throws IOException {
        if (this.myCookieStore != null) {
            try {
                FileInputStream fileInputStream = new FileInputStream(this.fileName);
                try {
                    StringBuilder data = readData(fileInputStream);
                    if (!data.toString().isEmpty()) {
                        List list = (List) this.gson.fromJson(data.toString(), new TypeToken<List<BasicClientCookie>>() { // from class: com.argusoft.sewa.android.app.restclient.impl.RestRequestImpl.3
                        }.getType());
                        if (list != null && !list.isEmpty()) {
                            this.myCookieStore.clear();
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                this.myCookieStore.addCookie((Cookie) it.next());
                            }
                        }
                    }
                    fileInputStream.close();
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (JsonSyntaxException e) {
                Log.e(getClass().getSimpleName(), null, e);
            } catch (IOException e2) {
                Log.e(getClass().getSimpleName(), " No cookies Read", e2);
            }
        }
    }

    private synchronized void writeCookies() {
        if (this.myCookieStore != null) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(this.fileName);
                try {
                    writeData(fileOutputStream, this.gson.toJson(this.myCookieStore.getCookies()));
                    fileOutputStream.close();
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                Log.e(getClass().getSimpleName(), " No cookies write", e);
            }
        }
    }

    private String getErrorMessage(HttpResponse httpResponse) {
        try {
            JsonObject jsonObject = (JsonObject) new Gson().fromJson(EntityUtils.toString(httpResponse.getEntity()), JsonObject.class);
            JsonElement jsonElement = jsonObject != null ? jsonObject.get("message") : null;
            if (jsonElement != null) {
                return jsonElement.getAsString();
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
