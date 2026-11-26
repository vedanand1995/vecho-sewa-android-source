.class public final Lcom/argusoft/sewa/android/app/SewaApplication_;
.super Lcom/argusoft/sewa/android/app/SewaApplication;
.source "SewaApplication_.java"


# static fields
.field private static INSTANCE_:Lcom/argusoft/sewa/android/app/SewaApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/SewaApplication;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/argusoft/sewa/android/app/SewaApplication;
    .locals 1

    .line 16
    sget-object v0, Lcom/argusoft/sewa/android/app/SewaApplication_;->INSTANCE_:Lcom/argusoft/sewa/android/app/SewaApplication;

    return-object v0
.end method

.method private init_()V
    .locals 0

    return-void
.end method

.method public static setForTesting(Lcom/argusoft/sewa/android/app/SewaApplication;)V
    .locals 0

    .line 23
    sput-object p0, Lcom/argusoft/sewa/android/app/SewaApplication_;->INSTANCE_:Lcom/argusoft/sewa/android/app/SewaApplication;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 28
    sput-object p0, Lcom/argusoft/sewa/android/app/SewaApplication_;->INSTANCE_:Lcom/argusoft/sewa/android/app/SewaApplication;

    .line 29
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/SewaApplication_;->init_()V

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/SewaApplication;->onCreate()V

    return-void
.end method
