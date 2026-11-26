.class public Lcom/argusoft/sewa/android/app/restclient/impl/RestConstantMsg;
.super Ljava/lang/Object;
.source "RestConstantMsg.java"


# static fields
.field public static final MSG_BAD_REQUEST:Ljava/lang/String; = "Request not matching or parameter is not proper"

.field public static final MSG_ERROR_IN_READING_RESPONSE:Ljava/lang/String; = "Error in reading response"

.field public static final MSG_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "Internal server problem"

.field public static final MSG_NOT_FOUND:Ljava/lang/String; = "Service not available or check the http method type"

.field public static final MSG_NOT_IMPLEMENTED_STILL:Ljava/lang/String; = "Still there is no implementation of these thing"

.field public static final MSG_NO_HTTP_METHOD_TYPE:Ljava/lang/String; = "Provide Http method it should be provide"

.field public static final MSG_PARAMETER_NOT_PROPER:Ljava/lang/String; = "check parameter it is not proper"

.field public static final MSG_REQUEST_TIME_OUT:Ljava/lang/String; = "timeout error.  increase the request Time out"

.field public static final MSG_RESPONSE_NOT_FORMATTED:Ljava/lang/String; = "Response is not proper formatted that we want"

.field public static final MSG_URL_NULL:Ljava/lang/String; = "Url is null"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
