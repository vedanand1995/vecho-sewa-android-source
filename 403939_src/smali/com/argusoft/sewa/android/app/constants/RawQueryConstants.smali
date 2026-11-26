.class public Lcom/argusoft/sewa/android/app/constants/RawQueryConstants;
.super Ljava/lang/Object;
.source "RawQueryConstants.java"


# static fields
.field public static final MAX_MODIFIED_ON:Ljava/lang/String; = "MAX(modifiedOn)"

.field public static final MAX_UPDATED_ON:Ljava/lang/String; = "MAX(updatedOn)"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
