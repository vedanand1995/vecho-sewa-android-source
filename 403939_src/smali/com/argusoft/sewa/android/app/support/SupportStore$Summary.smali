.class public Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;
.super Ljava/lang/Object;
.source "SupportStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/support/SupportStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Summary"
.end annotation


# instance fields
.field public lastAt:Ljava/lang/String;

.field public lastFromSupport:Ljava/lang/Boolean;

.field public photos:I

.field public replies:I

.field public voice:Z

.field public waiting:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
