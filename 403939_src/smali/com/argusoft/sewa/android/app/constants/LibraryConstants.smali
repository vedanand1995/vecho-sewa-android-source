.class public Lcom/argusoft/sewa/android/app/constants/LibraryConstants;
.super Ljava/lang/Object;
.source "LibraryConstants.java"


# static fields
.field public static final AUDIO:Ljava/lang/String; = "AUDIO"

.field public static final FOLDERS:Ljava/lang/String; = "FOLDERS"

.field public static final IMAGES:Ljava/lang/String; = "IMAGES"

.field public static final PDFS:Ljava/lang/String; = "PDFS"

.field public static final UNSUPPORTED_FILES:Ljava/lang/String; = "UNSUPPORTED FILES"

.field public static final VIDEOS:Ljava/lang/String; = "VIDEOS"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
