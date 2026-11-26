.class public Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;
.super Ljava/lang/Object;
.source "SupportStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/support/SupportStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncResult"
.end annotation


# instance fields
.field public networkProblem:Z

.field public offline:Z

.field public refused:I

.field public sent:I

.field public sessionEnded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
