.class public Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
.super Ljava/lang/Exception;
.source "SupportApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/support/SupportApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Failure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;
    }
.end annotation


# instance fields
.field public final kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    return-void
.end method
