.class public Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;
.super Ljava/lang/Object;
.source "FilariasisMemberListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberAnswer"
.end annotation


# instance fields
.field public answer:I

.field public memberId:Ljava/lang/String;

.field public reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;->memberId:Ljava/lang/String;

    .line 155
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;->answer:I

    .line 156
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;->reason:Ljava/lang/String;

    return-void
.end method
