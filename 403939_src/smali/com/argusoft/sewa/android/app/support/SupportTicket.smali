.class public Lcom/argusoft/sewa/android/app/support/SupportTicket;
.super Ljava/lang/Object;
.source "SupportTicket.java"


# instance fields
.field public allowedActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public createdAt:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public resolutionSummary:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public statusChangedAt:Ljava/lang/String;

.field public ticketNumber:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public may(Ljava/lang/String;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportTicket;->allowedActions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
