.class public final Lcom/argusoft/sewa/android/app/support/SupportApi_;
.super Lcom/argusoft/sewa/android/app/support/SupportApi;
.source "SupportApi_.java"


# static fields
.field private static instance_:Lcom/argusoft/sewa/android/app/support/SupportApi_;


# instance fields
.field private context_:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportApi_;->context_:Landroid/content/Context;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/support/SupportApi_;
    .locals 2

    .line 25
    sget-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi_;->instance_:Lcom/argusoft/sewa/android/app/support/SupportApi_;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/argusoft/sewa/android/app/support/SupportApi_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/support/SupportApi_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi_;->instance_:Lcom/argusoft/sewa/android/app/support/SupportApi_;

    .line 28
    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/support/SupportApi_;->init_()V

    .line 29
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 31
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/support/SupportApi_;->instance_:Lcom/argusoft/sewa/android/app/support/SupportApi_;

    return-object p0
.end method

.method private init_()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportApi_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportApi_;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    return-void
.end method
