.class public final Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;
.super Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;
.source "RestRequestImpl_.java"


# static fields
.field private static instance_:Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;


# instance fields
.field private context_:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;->context_:Landroid/content/Context;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;
    .locals 2

    .line 24
    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;->instance_:Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;->instance_:Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;

    .line 27
    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;->init_()V

    .line 28
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 30
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;->instance_:Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl_;

    return-object p0
.end method

.method private init_()V
    .locals 0

    return-void
.end method
